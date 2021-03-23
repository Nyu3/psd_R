## ٩(´ᗜ`)و (´-`) .｡oO (PSD simulator only available for the data of Microtrac MT3300EXII, 2018-12-11)

## Macプログラミング便宜のための設定
# '~/Desktop/tail適合/200109_粒度調整_TZS_新品_MN_PERT評価テスト.xls' %>% dirname(.) %>% setwd(.)
# Lang <- c('日本語', '英語')[1]
# D50 <- c('マイクロトラック測定値', '確率計算')[1]

# source(file.path('~/Library/Mobile Documents/com~apple~CloudDocs/R_script/tuningPSD', 'PSD_archive.R'), chdir = F)
# source(file.path('~/Library/Mobile Documents/com~apple~CloudDocs/R_script/tuningPSD', 'PSD_archive_generator.R'), chdir = F)


## Excel reader for sevral sheets == (2021-02-11) ========================
getExcel <- function(...) {
    ## You cannot add sheet names as data type directly due to non-perfect reliability of them
    dL <- getData.(filetype = 'xls|xlsx|粒度調整', sheet_bind = F) %>% map(psdLab.)

    ## Warning shortage of the reading data
    assign_num <- whichNear.(names(dL), c('理想|理想分布形状', 'マスター|master', '1|A|a', '2|B|b', '3|C|c', '検証|test')) %>%
                  map.(~ .[1]) %>% set_names(., c('ideal', 'master', 'A', 'B', 'C', 'test'))
    if (is.na(c(assign_num[1], assign_num[2])) %>% all()) stop('理想分布形状またはマスターsheetのデータ数が不足しています．\n\n', call. = F)
    if (is.na(assign_num[3]) %>% all()) stop('基材 A sheetのデータ数が不足しています．\n\n', call. = F)
    if (is.na(assign_num[4]) %>% all()) stop('基材 B sheetのデータ数が不足しています．\n\n', call. = F)

    ## Assign proper names to the data
    assign_type <- function(d, id = 'type') if (is.null(d)) NULL else d %>% mutate(data_type = id) %>% select(data_type, everything())
    d <- list(assign_type(dL[[assign_num[1]]], 'ideal'),
              assign_type(dL[[assign_num[2]]], 'master'),
              assign_type(dL[[assign_num[3]]], 'A'),
              assign_type(dL[[assign_num[4]]], 'B'),
              assign_type(dL[[assign_num[5]]], 'C'),
              assign_type(dL[[assign_num[6]]], 'test')) %>%
         bind_rows()

    ## Count data type
    cnt <- sapply(c('ideal', 'master', 'A', 'B', 'C', 'test'), function(x) filter(d, data_type == x) %>% nrow())

    ## You must select just one (ideal / master) and (test)
    chooseRow <- function(d, type, messText = NULL) {
        if (cnt[type] > 1) {
            row_target <- which(d$data_type == type)
            d_filter <- chooseOne.(d[row_target, 'tag'], messText = messText, chr = F) %>% d[row_target, ][., ]
            d <- bind_rows(d[-row_target, ], d_filter)
        }
        return (d)
    }
    ## Ideal / Master
    if (cnt['ideal'] > 0 && cnt['master'] == 0) {  # When you have only ideal sheet
        d <- chooseRow(d, 'ideal', '\"ターゲット分布をどれか1つ選んで下さい\"')
    } else if (cnt['ideal'] >= 0 && cnt['master'] > 0) {  # When you have ideal & master sheets, the master is given the priority
        d <- chooseRow(d, 'master', '\"ターゲット分布をどれか1つ選んで下さい\"')
    }
    ## Simulation / Testify
    messages <- if (cnt['test'] > 0) chooseOne.(c('シミュレーション', '検証'), 'どちらの番号を実行しますか', chr = T) else 'シミュレーション'
    if (messages == 'シミュレーション') {
        row_test <- which(d$data_type == 'test')
        if (length(row_test) > 0) d <- d[-row_test, ]
    }
    if (messages == '検証') {  # In this case only one graph will be shown
        d <- chooseRow(d, 'test', '\"検証データをどれか1つ選んで下さい\"') %>%
             chooseRow(., 'A', '\"基材 A はどれでしょうか\"') %>%
             chooseRow(., 'B', '\"基材 B はどれでしょうか\"') %>%
             chooseRow(., 'C', '\"基材 C はどれでしょうか\"')
    }
    return (d)
  # out <- list(ref = dtRef, b1 = dtBase1, b2 = dtBase2, b3 = dtBase3, real = dtReal, shift = shift, refD50 = dtRef$'D50')
}  # Summarise the several sheets into one, keeping the data style (one row : one info of a lot)


## Interactive input for the target D50 for dtRef to slide == (2019-07-24) ========================
chooseD50 <- function(dt, microtracD50, use.D50, ...) {  # dt denotes your ideal curve; dtRef
    minP <- min.(dt[[1]])
    quasiD50 <- which.max.(dt[[2]]) %>% dt[., 1]  # quasiD50 := peak in the probability function curve
    D50 <- ifelse(use.D50, microtracD50, quasiD50)
    repeat {
        num <- readline('\n   What\'s your target D50?  \n\n   >>>  ')
        if (zenk.(num) %>% {skipMess.(as.numeric(.))} %>% {!is.na(.)}) {
            num <- zenk.(num) %>% as.numeric(num)
            minShift <- minP -(D50 -num)
            if (minShift < 0) cat('\n   Your input is too small to design PSD...\n\n')
            if (num >= 0 && minShift >= 0) break  # This if () restricts minus D50
        }
    }
    cat(str_c('\n', str_dup('=', times = 38), '\n\n'))
    return (num -D50)
}


## Get ID label == (2019-05-01) ========================
namePull <- function(dt, ... ) {
    if (is.na(dt) %>% all()) return (NULL)
    if (map.(dt['粒度'], ~ skipMess.(ymd(.))) %>% {!anyNA(.)}) dt['粒度'] <- map.(dt['粒度'], str_sub, 6, 10)  # 2019/5/10 as chr
    if (map.(dt['粒度'], str_detect, pattern = '月|日') %>% any()) dt['粒度'] <- map.(dt['粒度'], ~ gsub('月', '-', .) %>% gsub('日', '', .))  # 5月10日
    'tidyr'::unite(dt[c('砥粒種', '粒度', 'ロット番号')], sep = ' :: ', col = ID) %>% pull() %>% gsub('/', '|', .) %>% return (.)
}


## Predictor == (2020-06-26) ========================
tunePSD <- function(measured_or_peak, ...) {

    use.D50 <- ifelse(D50 == 'マイクロトラック測定値', TRUE, FALSE)
    ## First preparation
    dexL <- getExcel()  # list data; Ref = 1, Base1 >= 1, Base2 >= 1, Base3 >= 0, Real >= 0
    def.(c('dt0', 'dt1', 'dt2', 'dt3', 'dt4'), list(dexL$'ref', dexL$'b1', dexL$'b2', dexL$'b3', dexL$'real'))
    def.(c('dtRef', 'dtReal'), list(getXYlines.(dt0, cook = T)[[1]], getXYlines.(dt4, cook = F)[[1]]))
    if (dexL$'shift') {
        dtRef[1] <- dtRef[1] +chooseD50(dtRef, microtracD50 = dexL$'refD50', use.D50)
    }
    xRef <- dtRef[[1]]

    ## Making directory
    oldDir <- getwd()
    newDir <- str_c(oldDir, '/#Graphs')
    if (!file.exists(newDir)) dir.create('#Graphs')
    setwd(newDir)

    ## Create graph name
    fn0 <- str_split(File, '\\.')[[1]][1] %>% gsub('/|:|<|>|"|\\?|\\*|\\|', '_', .)
    fn  <- if (Sys.info()['sysname'] == 'windows' && stringi::stri_enc_detect(fn0)[[1]][1,1] %in% c('ASCII', 'Shift_JIS')) {
               iconv(fn0, 'utf8', 'cp932')  # ifelse(Sys.getenv('OS') == '', ., iconv(., 'utf8', 'cp932')) %>% gsub('粒度調整_', '', .)
           } else {
               fn0
           } %>% gsub('粒度調整_', '', .)
    time_stamp <- str_sub(fn, 1, 6) %>% {skipMess.(parse_number(.))} %>% {if (is.na(.)) today2.() else .} %>% str_c(., '_')
    tag <- function(dt) if (!alive(dt)) NULL else str_c('_', dt$'lot')
    grN <- if (!alive(dtReal)) str_c(time_stamp, 'simulate') else str_c(time_stamp, 'verify', tag(dt1), tag(dt2), tag(dt3))
    save2.(grN)

    ## Start it up
    rec <- rep(NA_character_, 15) %>%  # Vacant tibble to sum up 'recs' recording
           set_names(c('計算日', map.(c('砥粒種', '粒度', 'ロット番号', '配合率'), ~ str_c(., c('A', 'B', 'C'))), 'D50誤差率', '右曲部面積の誤差率')) %>%
           bind_rows() %>% mutate_at(1, ~ as_datetime(., tz = 'Asia/Tokyo')) %>% mutate_at(11:15, as.numeric)
    rec[1, 1] <- now()

    for (i in 1:nrow(dt1)) for (j in 1:nrow(dt2)) for (k in 1:nrow(dt3)) {
        ## Selection
        di <- bind_rows(slice(dt1, i), slice(dt2, j), slice(dt3, k))  # Make a tibble of a combination with dt1(i), dt2(j), and dt3(k)
        rec[1, 2:10] <- di[c('type', 'class', 'lot')] %>% unlist() %>% as.list()
        if (Sys.getenv('OS') != '') {
            rec[1, 5:7] <- unlist(rec[1, 5:7]) %>% map(~ if (!is.na(.)) str_c('\'', .) else .)  # Add ' to 6-12 for excel
        }

        ## Calculation for the mixing ratio
        iLcalc <- getXYlines.(di, cook = T) %>% set_names(c('b1', 'b2', 'b3'))
        xCom <- c(iLcalc$'b1'[[1]], iLcalc$'b2'[[1]], if (!alive(iLcalc$'b3')) NULL else iLcalc$'b3'[[1]]) %>% unique() %>% sort()
        def.(c('yRef', 'yBase1', 'yBase2', 'yBase3'), list(bestYiv.(dtRef, xRef), bestYiv.(iLcalc$'b1', xCom), bestYiv.(iLcalc$'b2', xCom), bestYiv.(iLcalc$'b3', xCom)))
        result_fit <- rssFit.(xRef, xCom, yRef, yBase1, yBase2, yBase3)
        Ans <- result_fit$'ratio'
        rec[1, 11:13] <- ifelse (!alive(di[3, ]), NA, Ans[3]) %>% c(Ans[-3], .)  # To show vacant cell in the output csv when C isn't used
        d50 <- if (!alive(dtReal)) result_fit$'d50_mismatch' else dt4$'D50' /xRef[which.max(yRef)] -1  # Simu := PDF-D50, Veri := measured D50
        rec[1, 14:15] <- c(d50, result_fit$'tail_mismatch') %>% as.list()

        ## Drawing data
        iLraw <- getXYlines.(di, cook = F) %>% set_names(c('b1', 'b2', 'b3'))
        dtMix <- tibble(x = xCom, y = Ans[1] *yBase1 +Ans[2] *yBase2 +if (!alive(yBase3)) 0 else Ans[3] *yBase3)
        dL <- list(dtRef, iLraw$'b1', iLraw$'b2', if (!alive(iLraw$'b3')) NA else iLraw$'b3', dtMix, dtReal)
        ## Legend data
        ni <- c(namePull(di[1, ]), namePull(di[2, ]), if (!alive(di[3, ])) NULL else namePull(di [3, ]) )
        text_pred <- str_c('数値予測:  (A) ', sprintf('%.2f', Ans[1] *100), '%, (B) ', sprintf('%.2f', Ans[2] *100) ) %>%
                     {if (!alive(di[3, ])) str_c(., '%') else str_c(., '%, (C) ', sprintf('%.2f', Ans[3] *100), '%')}
        text_D50 <- str_c('D50誤差: ', sprintf('%.2f', d50 *100), '%', ',  Tail mismatch: ', sprintf('%.2f', result_fit$'tail_mismatch' *100), '%')
        Texts <- c('Target',
                   str_c('(A)  ', ni[1]),
                   str_c('(B)  ', ni[2]),
                   if (!alive(di[3, ])) NULL else str_c('(C) ', ni[3]),
                   text_pred,
                   if (!alive(dtReal)) NULL else '検証',
                   text_D50)
        ## Drawing
        pred_col <- c('blue3', 'orange1', 'purple3', 'firebrick2', 'springgreen3') %>% rep(., times = nrow(dt1) *nrow(dt2) *nrow(dt3))
        color <- c('grey13', 'seashell4', 'snow4', if (!alive(dt3)) NULL else 'bisque4',
                   pred_col[i], if (!alive(dtReal)) 'coral1' else c('aquamarine3', 'chartreuse3'))
        ltys <- c(1,2,3, if (!alive(dt3)) NULL else 4, 1, if (!alive(dtReal)) 0 else c(1, 0))
        plt.(dL, lty = ltys, xlab = 'Particle Size (μm)', col = color, Ylims = c(0, NA), name = Texts, PDF = F)
        ## Recording
        recs <- if (i *j *k == 1) rec else bind_rows(recs, rec)
        if (nrow(dt1) *nrow(dt2) *nrow(dt3) != 1) {
            cts <- if (i == 1 && j == 1 && k == 1) 1 else cts +1
            cat(str_c('    i = ', cts, ' (/', nrow(dt1) *nrow(dt2) *nrow(dt3), ')  finished:  ', now(), '\n'))
        }
    }  # End of for
    if (names(dev.cur()) == 'cairo_pdf') dev.off()
    write.(arrange(recs, abs(D50誤差率), abs(右曲部面積の誤差率)), name = grN)  # Sorting so as to choose better combinations easily
    setwd(oldDir)
    cat('\n    ... Drawing completed.\n\n')
}


## RUN ##
# tunePSD()
## END ##


## Interactive input for the target D50 for dtRef to slide == (2021-02-12) ========================
chooseD50 <- function(d, measuredD50_or_peak, ...) {
	if (str_detect(d['data_type'], 'ideal')
	masterXY <- d %>% filter(data_type == 'master') %>% getXYlines.(.)
    minP <- min.(masterXY$x)
    measuredD50 <- d %>% filter(data_type == 'master') %>% .$D50
    peakD <- which.max.(masterXY$y) %>% masterXY$x[.]  # := peak in the probability function curve
    D50 <- ifelse(measured_or_peak, measuredD50, peakD)
    repeat {
        num <- readline('\n   What\'s your target D50?  \n\n   >>>  ')
        if (zenk.(num) %>% {skipMess.(as.numeric(.))} %>% {!is.na(.)}) {
            num <- zenk.(num) %>% as.numeric(num)
            minShift <- minP -(D50 -num)
            if (minShift < 0) cat('\n   Your input is too small to design PSD...\n\n')
            if (num >= 0 && minShift >= 0) break  # This if () restricts minus D50
        }
    }
    cat(str_c('\n', str_dup('=', times = 38), '\n\n'))
    return (num -D50)
}







## Predictor == (2021-02-12) ========================
tunePSD <- function(...) {

    dL <- getXYlines.(d, cook = T) %>% setNames(d[[1]])


    ## First preparation
    d <- getExcel()  # list data; Ref = 1, Base1 >= 1, Base2 >= 1, Base3 >= 0, Real >= 0
    def.(c('dt0', 'dt1', 'dt2', 'dt3', 'dt4'), list(dexL$'ref', dexL$'b1', dexL$'b2', dexL$'b3', dexL$'real'))
    def.(c('dtRef', 'dtReal'), list(getXYlines.(dt0, cook = T)[[1]], getXYlines.(dt4, cook = F)[[1]]))
    if (dexL$'shift') {
        dtRef[1] <- dtRef[1] +chooseD50(dL$master, microtracD50 = dexL$'refD50')
    }
    xRef <- dtRef[[1]]

    ## Making directory
    oldDir <- getwd()
    newDir <- str_c(oldDir, '/#Graphs')
    if (!file.exists(newDir)) dir.create('#Graphs')
    setwd(newDir)

    ## Create graph name
    fn0 <- str_split(File, '\\.')[[1]][1] %>% gsub('/|:|<|>|"|\\?|\\*|\\|', '_', .)
    fn  <- if (Sys.info()['sysname'] == 'windows' && stringi::stri_enc_detect(fn0)[[1]][1,1] %in% c('ASCII', 'Shift_JIS')) {
               iconv(fn0, 'utf8', 'cp932')  # ifelse(Sys.getenv('OS') == '', ., iconv(., 'utf8', 'cp932')) %>% gsub('粒度調整_', '', .)
           } else {
               fn0
           } %>% gsub('粒度調整_', '', .)
    time_stamp <- str_sub(fn, 1, 6) %>% {skipMess.(parse_number(.))} %>% {if (is.na(.)) today2.() else .} %>% str_c(., '_')
    tag <- function(dt) if (!alive(dt)) NULL else str_c('_', dt$'lot')
    grN <- if (!alive(dtReal)) str_c(time_stamp, 'simulate') else str_c(time_stamp, 'verify', tag(dt1), tag(dt2), tag(dt3))
    save2.(grN)

    ## Start it up
    rec <- rep(NA_character_, 15) %>%  # Vacant tibble to sum up 'recs' recording
           set_names(c('計算日', map.(c('砥粒種', '粒度', 'ロット番号', '配合率'), ~ str_c(., c('A', 'B', 'C'))), 'D50誤差率', '右曲部面積の誤差率')) %>%
           bind_rows() %>% mutate_at(1, ~ as_datetime(., tz = 'Asia/Tokyo')) %>% mutate_at(11:15, as.numeric)
    rec[1, 1] <- now()

    for (i in 1:nrow(dt1)) for (j in 1:nrow(dt2)) for (k in 1:nrow(dt3)) {
        ## Selection
        di <- bind_rows(slice(dt1, i), slice(dt2, j), slice(dt3, k))  # Make a tibble of a combination with dt1(i), dt2(j), and dt3(k)
        rec[1, 2:10] <- di[c('type', 'class', 'lot')] %>% unlist() %>% as.list()
        if (Sys.getenv('OS') != '') {
            rec[1, 5:7] <- unlist(rec[1, 5:7]) %>% map(~ if (!is.na(.)) str_c('\'', .) else .)  # Add ' to 6-12 for excel
        }

        ## Calculation for the mixing ratio
        iLcalc <- getXYlines.(di, cook = T) %>% set_names(c('b1', 'b2', 'b3'))
        xCom <- c(iLcalc$'b1'[[1]], iLcalc$'b2'[[1]], if (!alive(iLcalc$'b3')) NULL else iLcalc$'b3'[[1]]) %>% unique() %>% sort()
        def.(c('yRef', 'yBase1', 'yBase2', 'yBase3'), list(bestYiv.(dtRef, xRef), bestYiv.(iLcalc$'b1', xCom), bestYiv.(iLcalc$'b2', xCom), bestYiv.(iLcalc$'b3', xCom)))
        result_fit <- rssFit.(xRef, xCom, yRef, yBase1, yBase2, yBase3)
        Ans <- result_fit$'ratio'
        rec[1, 11:13] <- ifelse (!alive(di[3, ]), NA, Ans[3]) %>% c(Ans[-3], .)  # To show vacant cell in the output csv when C isn't used
        d50 <- if (!alive(dtReal)) result_fit$'d50_mismatch' else dt4$'D50' /xRef[which.max(yRef)] -1  # Simu := PDF-D50, Veri := measured D50
        rec[1, 14:15] <- c(d50, result_fit$'tail_mismatch') %>% as.list()

        ## Drawing data
        iLraw <- getXYlines.(di, cook = F) %>% set_names(c('b1', 'b2', 'b3'))
        dtMix <- tibble(x = xCom, y = Ans[1] *yBase1 +Ans[2] *yBase2 +if (!alive(yBase3)) 0 else Ans[3] *yBase3)
        dL <- list(dtRef, iLraw$'b1', iLraw$'b2', if (!alive(iLraw$'b3')) NA else iLraw$'b3', dtMix, dtReal)
        ## Legend data
        ni <- c(namePull(di[1, ]), namePull(di[2, ]), if (!alive(di[3, ])) NULL else namePull(di [3, ]) )
        text_pred <- str_c('数値予測:  (A) ', sprintf('%.2f', Ans[1] *100), '%, (B) ', sprintf('%.2f', Ans[2] *100) ) %>%
                     {if (!alive(di[3, ])) str_c(., '%') else str_c(., '%, (C) ', sprintf('%.2f', Ans[3] *100), '%')}
        text_D50 <- str_c('D50誤差: ', sprintf('%.2f', d50 *100), '%', ',  Tail mismatch: ', sprintf('%.2f', result_fit$'tail_mismatch' *100), '%')
        Texts <- c('Target',
                   str_c('(A)  ', ni[1]),
                   str_c('(B)  ', ni[2]),
                   if (!alive(di[3, ])) NULL else str_c('(C) ', ni[3]),
                   text_pred,
                   if (!alive(dtReal)) NULL else '検証',
                   text_D50)
        ## Drawing
        pred_col <- c('blue3', 'orange1', 'purple3', 'firebrick2', 'springgreen3') %>% rep(., times = nrow(dt1) *nrow(dt2) *nrow(dt3))
        color <- c('grey13', 'seashell4', 'snow4', if (!alive(dt3)) NULL else 'bisque4',
                   pred_col[i], if (!alive(dtReal)) 'coral1' else c('aquamarine3', 'chartreuse3'))
        ltys <- c(1,2,3, if (!alive(dt3)) NULL else 4, 1, if (!alive(dtReal)) 0 else c(1, 0))
        plt.(dL, lty = ltys, xlab = 'Particle Size (μm)', col = color, Ylims = c(0, NA), name = Texts, PDF = F)
        ## Recording
        recs <- if (i *j *k == 1) rec else bind_rows(recs, rec)
        if (nrow(dt1) *nrow(dt2) *nrow(dt3) != 1) {
            cts <- if (i == 1 && j == 1 && k == 1) 1 else cts +1
            cat(str_c('    i = ', cts, ' (/', nrow(dt1) *nrow(dt2) *nrow(dt3), ')  finished:  ', now(), '\n'))
        }
    }  # End of for
    if (names(dev.cur()) == 'cairo_pdf') dev.off()
    write.(arrange(recs, abs(D50誤差率), abs(右曲部面積の誤差率)), name = grN)  # Sorting so as to choose better combinations easily
    setwd(oldDir)
    cat('\n    ... Drawing completed.\n\n')
}


## RUN ##
# tunePSD()
## END ##