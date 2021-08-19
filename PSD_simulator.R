## ٩(´ᗜ`)و (´-`) .｡oO (PSD simulator only available for the data of Microtrac MT3300EXII, 2018-12-11)
# source(file.path('~/Library/Mobile Documents/com~apple~CloudDocs/R_script/tuningPSD', 'PSD_archive.R'), chdir = F)
# source(file.path('~/Library/Mobile Documents/com~apple~CloudDocs/R_script/tuningPSD', 'PSD_archive_generator.R'), chdir = F)


## Excel reader for sevral sheets == (2021-08-18) ========================
getPSD <- function(...) {
  ## You cannot add sheet names as data type directly due to non-perfect reliability of them
  d <- getData.(filetype = '粒度調整') %>% tidyPSD.  # 'xls|xlsx|粒度調整'

  ## Rename data type and count them
  d <- d %>% mutate(sheet = sheet %>%
                            gsub('理想|理想分布|理想分布形状|Ideal', 'ideal', .) %>% gsub('マスター|Master', 'master', .) %>%
                            gsub('基材1|基材A|基材a', 'A', .) %>% gsub('基材2|基材B|基材b', 'B', .) %>% gsub('基材3|基材C|基材c', 'C', .) %>%
                            gsub('検証|Test|TEST', 'test', .)
    )

  ## Warning shortage
  cnt <- sapply(c('ideal', 'master', 'A', 'B', 'C', 'test'), function(x) dplyr::filter(d, sheet == x) %>% nrow())  # table(d$sheet) is not good
  if (cnt['A'] == 0) stop('基材 A sheetのデータ数が不足しています．\n\n', call. = F)
  if (cnt['B'] == 0) stop('基材 B sheetのデータ数が不足しています．\n\n', call. = F)
  if (cnt[c('ideal', 'master')] %>% sum == 0) stop('理想分布形状またはマスターsheetのデータ数が不足しています．\n\n', call. = F)

  ## Take a concerned row
  chooseRow <- function(.d, concern, mess = NULL) {
    if (str_detect(.d$sheet, concern) %>% any) {
      row_one <- .d %>% dplyr::filter(sheet == concern) %>% .$tag %>% choice.(., str_c(mess, 'をどれか1つ選んで下さい'), one = T)
      .d <- bind_rows(dplyr::filter(.d, tag == row_one), dplyr::filter(.d, sheet != concern))
    }
    return(.d)
  }

  ## Choose the target data from (ideal / master)
  if (cnt['ideal'] > 0 && cnt['master'] == 0) {  # When you have only ideal sheet
    d <- chooseRow(d, 'ideal', '理想分布')

    ## Watch out for Microtrac D50!! D50 order are "gam_freq < raw_freq < peak(gam_dens) < Mictrotrac D50 < raw_dens < gam_dens"
    d50_microtrac <- d %>% dplyr::filter(sheet == 'ideal') %>% .[['stack']] %>% .[[1]] %>% pull(value, stack) %>% .['D50']  # Microtrac
  # d50_gam_dens <- d %>% dplyr::filter(sheet == 'ideal') %>% .[['gam_dens']] %>% .[[1]] %>% {.[[whichNear.(cumP0.(.), 0.5),  'x']]}
  # d50_gam_peak <- d %>% dplyr::filter(sheet == 'ideal') %>% .[['gam_dens']] %>% .[[1]] %>% {.[[which.max(.$y),  'x']]}
    d50_gam_min <- d %>% dplyr::filter(sheet == 'ideal') %>% .[['gam_dens']] %>% .[[1]] %>% {.[[1,  'x']]}
    d50 <- d50_microtrac

    ## Interactive input for the target D50 (because you have only ideal PSD)
    repeat {
      num <- readline('\n    ターゲットD50を入力してください  \n>>> ')
      if (zenk.(num) %>% {skipMess.(as.numeric(.))} %>% {!is.na(.)}) {
        num <- zenk.(num) %>% as.numeric(num)
        minShift <- d50_gam_min -(d50 -num)
        if (minShift < 0) cat('\n   Your input is too small to design PSD...\n\n')
        if (num >= 0 && minShift >= 0) break  # This if () restricts minus D50
      }
    }
    cat(str_dup('=', times = 38), '\n')
    ## Shift PSD by (num -d50)
    row_ideal <- which(d$sheet == 'ideal')
    d[row_ideal, 'raw_dens'] <- d[row_ideal, 'raw_dens'] %>% .[[1]] %>% map(~ mutate(., x = x +(num -d50))) %>% tibble
    d[row_ideal, 'raw_freq'] <- d[row_ideal, 'raw_freq'] %>% .[[1]] %>% map(~ mutate(., x = x +(num -d50))) %>% tibble
    d[row_ideal, 'gam_dens'] <- d[row_ideal, 'gam_dens'] %>% .[[1]] %>% map(~ mutate(., x = x +(num -d50))) %>% tibble
    d[row_ideal, 'gam_freq'] <- d[row_ideal, 'gam_freq'] %>% .[[1]] %>% map(~ mutate(., x = x +(num -d50))) %>% tibble
    ## Rename
    d <- d %>% mutate(sheet = gsub('ideal', 'target', sheet), d50 = num)
  } else if (cnt['master'] > 0) {  # When you have ideal & master sheets, the master is given the priority
    d50_master <- d %>% pull(stack, sheet) %>% .$master %>% dplyr::filter(stack == 'D50') %>% .[['value']]
    d <- d %>% chooseRow('master', 'マスターサンプル') %>% mutate(sheet = gsub('master', 'target', sheet), d50 = d50_master)  # choose & rename
  }

  ## Choose the action to simulate / testify
  messages <- if (cnt['test'] > 0) choice.(c('シミュレーション', '検証'), 'どちらの番号を実行しますか', chr = T, one = T) else 'シミュレーション'
  if (messages == 'シミュレーション') out <- d %>% dplyr::filter(sheet != 'test')
  if (messages == '検証') out <- d %>% chooseRow('A', '基材 A') %>% chooseRow('B', '基材 B') %>% chooseRow('C', '基材 C')

  ## Assign the unique name
  make.unique2 <- function(x, sep = '') ave(x, x, FUN = function(a) if (length(a) > 1) str_c(a, 1:length(a), sep = sep) else a)
  out <- out %>% relocate(sheet) %>% arrange(sheet) %>% mutate(sheet = make.unique2(sheet, sep = ''))
  return(out)
}


## Estimator == (2021-08-18) ========================
tunePSD <- function(...) {
  query_lib.('scico')
  ## Preparation
  d <- getPSD()
  nm <- d %>% pull(tag, sheet)
  if (str_detect(d$sheet, 'test') %>% any) {  # test info: tag << remark (ex. A12.3% : B87.7%)
    lege_tag_test <- d %>% pull(tag, sheet) %>% {.[str_detect(names(.), 'test')]}
    lege_remark_test <- d %>% pull(tag, sheet) %>% {.[str_detect(names(.), 'test')]}
    nm[str_detect(names(nm), 'test')] <-  # if no comment in the remark as NA, replace'em tothe tag name
      map2_chr(lege_remark_test, lege_tag_test, ~ replace_na(.x, replace = .y))
  }
  ta <- d %>% pull(gam_dens, sheet) %>% {set_names(list(.$target), 'target')}
  pa <- d %>% dplyr::filter(str_detect(sheet, 'A')) %>% {set_names(.[['gam_dens']], .$sheet)}
  pb <- d %>% dplyr::filter(str_detect(sheet, 'B')) %>% {set_names(.[['gam_dens']], .$sheet)}
  pc <- d %>% dplyr::filter(str_detect(sheet, 'C')) %>% {set_names(.[['gam_dens']], .$sheet)} %>% {if (length(.) != 0) .  else list(NULL)}
  te <- d %>% dplyr::filter(str_detect(sheet, 'test')) %>% {set_names(.[['raw_dens']], .$sheet)} %>% {if (length(.) != 0) .  else list(NULL)}
  mx <- list()

  ## Calculation
  for (i in seq_along(pa)) for (j in seq_along(pb)) for (k in seq_along(pc)) {
    ctr <- if (i * j * k == 1) 1 else ctr +1
    x123 <- c(pa[[i]]$x, pb[[j]]$x, pc[[k]]$x) %>% unique %>% sort
    xy0 <- ta[[1]]
    xy1 <- fast_model.(pa[[i]], x123)  # Needed to calculate model p(X|θ) with raw(x,y) and put common x123 into the formula,
    xy2 <- fast_model.(pb[[j]], x123)  # then find a mixture part
    xy3 <- fast_model.(pc[[k]], x123)

    ## Calculation for the mixing ratio
    fit <- rssFit.(xy0, xy1, xy2, xy3)  # return --> ratio, peak_mismatch, tail_mismatch
    mx <- tibble(x = xy1$x, y = fit$ratio[1] *xy1$y +fit$ratio[2] *xy2$y +fit$ratio[3] *(xy3$y %||% 0)) %>% list %>%
          set_names(if (length(pa) *length(pb) *length(pc) == 1) 'mix' else str_c('mix', ctr)) %>% c(mx, .)
    dL <- c(ta, pa[i], pb[j], pc[k], mx[ctr], te)

    ## Legend data
    text_a <- str_c('数値予測:  (', names(pa[i]), ') ', sprintf('%.2f', fit$ratio[1] *100), '%,  (')
    text_b <- str_c(names(pb[j]), ') ', sprintf('%.2f', fit$ratio[2] *100), '%')
    text_c <- if (is.null(pc[[k]])) NULL else str_c(',  ', names(pc[k]), ') ', sprintf('%.2f', fit$ratio[3] *100), '%')
    text_eval <- str_c('(ピーク誤差 ', sprintf('%.2f', fit$peak_mismatch *100), '%,  テール誤差 ', sprintf('%.2f', fit$tail_mismatch *100), '%)')
    text_test <- if (is.null(te[[1]])) NULL else {
                   if (length(te) == 1) str_c('検証: ', nm[names(te)]) else str_c('検証', seq_along(te), ': ', nm[names(te)])
                 }
    legeN <- c(str_c('Target:  D50 = ', sprintf('%.1f', unique(d$d50)), ' um'),
               str_c(names(pa[i]), ':  ', nm[names(pa[i])]),
               str_c(names(pb[j]), ':  ', nm[names(pb[j])]),
               if (is.null(pc[[k]])) NULL else str_c(names(pc[k]), ': ', nm[names(pc[k])]),
               str_c(text_a, text_b, text_c),
               text_eval,
               text_test
              )

    calc <- tibble(
      配合 = str_c(names(pa[i]), names(pb[j]), names(pc[k]), sep = ' * '),
      モデル評価 = sprintf('%.2f', -log(abs(fit$peak_mismatch)) *1 -log(abs(fit$tail_mismatch)) *0.3),
      ピーク誤差率 = fit$peak_mismatch, 'テール(peak-D95)面積の誤差率' = fit$tail_mismatch,
      配合率A = fit$ratio[1], 配合率B = fit$ratio[2], 配合率C = fit$ratio[3] %>% ifelse(. == 0, NA_real_, .),
      タグA = nm[names(pa[i])], タグB = nm[names(pb[j])], タグC = names(pc[k]) %>% {ifelse(is.null(.), NA_real_, nm[.])},
      dL = list(dL), legeN = list(legeN)
    )
    calcs <- if (i *j *k == 1) calc else bind_rows(calcs, calc)

    ## Count message
    if (length(pa) *length(pb) *length(pc) != 1) {
      if (i * j * k == 1) {
        start_time <- now()
        cat(str_c('    i = ', ctr, ' (/', length(pa) *length(pb) *length(pc), ')  finished:  ', start_time, '\n'))
      } else {
        time_obj <- start_time %--% now()
        pass_time <-
          if (time_length(time_obj, unit = 'sec') < 60) {
            str_c(time_length(time_obj, unit = 'sec') %>% sprintf('%.1f', .), ' sec\n')
          } else {
            str_c(time_length(time_obj, unit = 'min') %>% sprintf('%.2f', .), ' min\n')
          }
        cat(str_c('    i = ', ctr, ' (/', length(pa) *length(pb) *length(pc), ')  finished:  ', pass_time))
      }
    }
  }  # END of for
  calc <- calcs %>% arrange(desc(モデル評価))  # %>% rowid_to_column('おすすめ順')  # Sort so as to choose better combinations easily

  ## Making directory
  oldDir <- getwd()
  newDir <- str_c(oldDir, '/#graph_data')
  if (!file.exists(newDir)) dir.create('#graph_data')
  setwd(newDir)

  ## Create graph name
  fn0 <- str_split(File, '\\.xls|\\.xlsx')[[1]][1] %>% gsub('/|:|<|>|"|\\?|\\*|\\|', '_', .)
  grN <- {if (Sys.info()['sysname'] == 'windows' && !stringi::stri_enc_isutf8(fn0)) iconv(fn0, 'utf8', 'cp932') else fn0} %>%
         gsub('粒度調整', if_else(is.null(te[[1]]), 'シミュ', '検証'), .)
  save2.(grN)

  ## Plot: target, A, B, (C), estimation, (test)
  col2 <- function(pals) scico::scico(5 +length(pc[[1]]), palette = pals) %>% {.[1:(4 +length(pc[[1]]))]} %>% {c(., .[length(.)])}
  ltys <- c(1,2,3, if (is.null(pc[[1]])) NULL else 4, 1, 0, if (is.null(te[[1]])) NULL else rep(1, length(te)))  # the 0 for \n (peak error ...
  for (i in seq(nrow(calc))) {
    ## the lty 0 "\n (peak error ...)" vanishes test data line, so it needs to have a dummy-xy set when drawing test data
    if (is.null(te[[1]])) {  # simulate
      di <- calc$dL[[i]]
      cols <- c('turku', 'tokyo', 'acton', 'oslo', 'bamako')[n_cyc.(i, 5)] %>% col2(.)
    } else {  # testify; target, A, B, (C), mix, dummy, test1, ...
      di <- calc$dL[[i]] %>% {c(.[1:5], dummy = list(tibble(x = NA_real_, y = NA_real_)), .[6:length(.)])}
      cols <- c(col2(pals = 'batlow'), grey(seq_along(te) /(length(te) +1)))
    }
    plt.(di, ylim = c(0, NA), xlab = 'Particle size (μm)', name = calc$legeN[[i]], col = cols, lty = ltys, PDF = F)
  }
  if (names(dev.cur()) == 'cairo_pdf') dev.off()
  ## Excel output
  tbl1 <- calc %>% select(!c(dL, legeN)) %>% select_if(colSums(is.na(.)) != nrow(.))
  te2 <- d %>% dplyr::filter(str_detect(sheet, 'test')) %>% {set_names(.[['gam_dens']], .$sheet)} %>% {if (length(.) != 0) .  else list(NULL)}
  tbl2 <- c(ta, pa, pb, pc, mx, te2) %>% {.[!sapply(., is.null)]} %>%
          map2(., names(.), ~ .x[1:2] %>% set_names(str_c(.y, c('.x', '.y')))) %>% list2tibble.
  write3.(list(result = tbl1, xy = tbl2), name = grN)

  setwd(oldDir); cat('\n    ... Estimation completed.\n\n')
}


## RUN ##
# tunePSD()
## END ##
