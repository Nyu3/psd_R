## ٩(´ᗜ`)و (´-`) .｡oO (the script for .Rprofile, 2021-03-24) |████████████████████████|


## .Rprofile, just two lines for your Windows == (2023-06-13) ========================
# script <- readLines(paste0('https://github.com/Nyu3/template_R/blob/master/rprofile.R', '?raw=TRUE'), encoding = 'UTF-8')
# eval(parse(text = script))


## Welcome message == (2024-07-05) ========================
## CAUTION: JupyterLab allows neither cat(), print() nor message() in the welcome message on .Rprofile
## https://stackoverflow.com/questions/37689694/real-time-printing-to-console-with-r-in-jupyter
if (interactive()) cat('|██████████████| Now loading |█████████████|\n')


## Install vital packages if necessary == (2024-07-04) ========================
options(repos = structure(c(CRAN = 'https://ftp.yz.yamagata-u.ac.jp/pub/cran/')))
pkgs_must <- c('bindrcpp', 'devtools', 'ellipse', 'formattable', 'hablar', 'logKDE', 'minpack.lm', 'naturalsort',
               'pracma', 'psych', 'robustbase', 'scico', 'tidyverse', 'viridis', 'writexl')
pkgs_lack <- !pkgs_must %in% rownames(utils::installed.packages())
if (sum(pkgs_lack) > 0) {
    options(showPackageStartupMessages = F)
    for (i in seq_along(which(pkgs_lack))) {
        cat(paste0('\n    trying to install ', pkgs_must[pkgs_lack], '...\n\n'))
        utils::install.packages(pkgs_must[pkgs_lack][i], dependencies = T)
    }
}


## Import while suppressing startup messages from defaultPackages and then invoke favorite packages == (2021-03-23) ========================
## https://stat.ethz.ch/pipermail/r-help/2013-July/356878.html
skip_messages <- function(packs, ...) {
    setHook(packageEvent(pkgname = packs, event = 'onLoad'), function(...) sink(file(tempfile(), 'w'), type = 'message'))
    setHook(packageEvent(pkgname = packs, event = 'attach'), function(...) sink(file = NULL, type = 'message'), action = 'append')
}
for (packs in c('tidyverse')) skip_messages(packs)  # Suppress annoying messages when calling

pkgs <- c('hablar', 'lubridate', 'readxl', 'tidyverse')  # Confirm called packages by search()
options(defaultPackages = c(getOption('defaultPackages'), pkgs))  # Invoke


## Fix the size of graphics device == (2021-03-22) ========================
setHook(packageEvent(pkgname = 'grDevices', event = 'onLoad'), function(...) {    
    if (Sys.info()['sysname'] == 'Darwin') grDevices::quartz.options(width = 4.5, height = 3.3)  # for Mac
    if (Sys.info()['sysname'] == 'Linux') options(repr.plot.width = 4.5, repr.plot.height = 3.3)  # for JupyterLab; confirm by options()$bitmapType
    if (Sys.info()['sysname'] == 'Windows') grDevices::windows.options(width = 4.5, height = 3.3)  # for Windows
})


## Fix the default parameters for a graphical device == (2022-11-05) ========================
## https://stackoverflow.com/questions/48839319
setHook(packageEvent(pkgname = 'grDevices', event = 'onLoad'), function(...) {
    f_device <- getOption('device')
    newDev <- function(...) {
        f_device(...) 
        graphics::par(
            ann = T, cex.axis = 1, col = 'grey13', col.axis = 'grey13', col.lab = 'grey13', col.main = 'grey13', col.sub = 'grey13', fg = 'grey13',
            family = c('Avenir Next', 'sans', 'Yu Gothic')[which(c('Darwin', 'Linux', 'Windows') %in% Sys.info()['sysname'])],  # Noto Sans CJK JP
            las = 1, lwd = 1.3, mar = c(2.5, 4, 0.5, 1), mfrow = c(1, 1), mgp = c(1.5, 0.2, 0), oma = c(0, 0, 0, 0),
            ps = 13, tcl = 0.25, xaxs = 'r', yaxs = 'r'
        )
    }
    options(device = newDev)
})


## Rewrite other parameters of defalut values == (2021-08-17) ========================
## https://stackoverflow.com/questions/39620669/source-script-to-separate-environment-in-r-not-the-global-environment
## https://coolbutuseless.bitbucket.io/2018/04/11/changing-the-default-arguments-to-a-function/
.nya0env <- new.env()  # Naming initial dot works out not to show your own functions on the gloval environment

Sys.setenv(TZ = 'Asia/Tokyo')  # Confirm by Sys.timezone()

library('grDevices')  # formals(package_name::function) is error
formals(cairo_pdf)[c('width', 'height', 'pointsize', 'onefile', 'bg')] <- list(4.5, 3.3, 13, TRUE, 'transparent')
library('graphics')
formals(axis)[c('col.ticks', 'lwd.ticks', 'lwd')] <- list('grey13', 1.3, 0)
library('minpack.lm', quietly = T)
formals(nlsLM)$control <- nls.lm.control(maxiter = 1024, nprint = 0)  # nprint = 1 denotes to show results
formals(source)$chdir <- TRUE  # if (R.Version()$major > 4) TRUE else FALSE
formals(unlist)$use.names <- FALSE


## Calling basic script == (2025-05-07) ========================
if (Sys.info()['sysname'] == 'Darwin') {  # for Mac
    sys.source(file.path('~/Library/Mobile Documents/com~apple~CloudDocs/R', '0_startup.R'), envir = .nya0env, chdir = F)
} else {  # for Windows or JupyterLab in Ubuntu
  # options(showPackageStartupMessages = F)  # to suppress the 'utils' loading message
    library('stats')  # to suppress filter() conflict
    library('MASS')  # to suppress select() conflict
    library('tidyverse')
  # library('utils', quietly = T)  # to use pipe
    get_source <- function(url_no = 1, file_no = 1) {
        git_url <- file.path('https://github.com', c('Nyu3/template_R/blob/master',
                                                     'Nyu3/psd_R/blob/master')
                   )[url_no]
        git_file <- c('0_startup.R', 'PSD_archive.R', 'PSD_archive_generator.R', 'PSD_simulator.R')[file_no]
        filePATH <- paste0(file.path(git_url, git_file), '?raw=TRUE')
        script <- readLines(filePATH, encoding = 'UTF-8')
        eval(parse(text = script), envir = .nya0env)
    }
  # purrr::walk2(.x = c(1,2,2,2), .y = 1:4, ~ get_source(url_no = .x, file_no = .y))
    ## For light users 
  # get_source()  # Only use of '0_startup.R'
    git_url <- paste0('https://github.com/Nyu3/template_R/blob/master/', '0_startup.R', '?raw=TRUE')
    script <- readLines(git_url, encoding = 'UTF-8')
    eval(parse(text = script), envir = .nya0env)

#    git_url <- file.path('https://github.com', 'Nyu3/psd_R/blob/master', 'PSD_archive.R', '?raw=TRUE')
#    script <- readLines(git_url, encoding = 'UTF-8')
#    eval(parse(text = script), envir = .nya0env)

#    git_url <- file.path('https://github.com', 'Nyu3/psd_R/blob/master', 'PSD_archive_generator.R', '?raw=TRUE')
#    script <- readLines(git_url, encoding = 'UTF-8')
#    eval(parse(text = script), envir = .nya0env)

#    git_url <- file.path('https://github.com', 'Nyu3/psd_R/blob/master', 'PSD_simulator.R', '?raw=TRUE')
#    script <- readLines(git_url, encoding = 'UTF-8')
#    eval(parse(text = script), envir = .nya0env)

    remove('get_source')
}
attach(.nya0env)  # Confirm by ls('.nya0env') and search()


## Font registeration == (2021-03-24) ========================
## https://ill-identified.hatenablog.com/entry/2020/10/03/200618
## https://taken.jp/font-family-name-english-japanese.html
if (.Platform$'OS.type' == 'windows') windowsFonts(`Yu Gothic` = windowsFont('Yu Gothic'))


## Move to casual space == (2025-03-21) ========================
if (Sys.info()['sysname'] == 'Darwin') setwd('~/Desktop')  # The directory anywhere you click ~.R file gives priority to this command
if (Sys.info()['sysname'] == 'Windows') setwd(file.path(Sys.getenv('USERPROFILE'), 'Desktop'))


## Hint message & delete objects == (2025-03-28) ========================
tips <- paste0("
• Scatter plot
    └─| plt.(iris[4:5])
    └─| plt.(iris[-5], legePos = c(0.01, 0.99), lty = 1)
    └─| corp.(iris[3:4], el = T, li = F)
    └─| ellip.(iris)
    └─| sp.(iris, col = 3)
• KDE plot
    └─| dens.(iris[4:5], bw = 0.5, ylab = '')
    └─| dens.(iris[4:5], cum = F)
    └─| crp.(iris[2:3])
• Histogram
    └─| hist.(iris[2:3], bin = 0.1, name = c('A', 'B'), overlay = T)
• Pie chart
    └─| pie.(iris[41:120,5], percent = T)
• Bar plots
    └─| barp.(iris, xyChange = T)
    └─| barp.(iris, cum = T, xyChange = T)
    └─| smz.(diamonds[1:2], this = 2, col = 'seagreen3', pareto = T)
• Box plot
    └─| box2.(iris, rot = 20, pareto = T, cut = T)
    └─| box2.(diamonds[1:1000, 1:3], mark = 'color')
    └─| box2.(id2y.(diamonds[1:1000, 1:3]))
    └─| box2.(case2.(us_rent_income[5], div = 100), col = 0)
    └─| box2.(time2.(economics[1:50, ], div = 'year'))
• Stats
    └─| stats.(iris, transpose = F, split = T)
    └─| smry.(iris, .f = 'sd(x) / mean(x)')
    └─| table.(diamonds[2:4])
    └─| html.(starwars)
", paste0(rep('\u2583', 70), collapse = ''), '\n\n'
)

if (interactive()) cat(tips)

remove(list = c('packs', 'pkgs', 'pkgs_lack', 'pkgs_must', 'heavy_usernames', 'light_usernames', 'skip_messages', 'tips', 'yourname'))

## END ##

