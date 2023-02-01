## ٩(´ᗜ`)و (´-`).｡oO (A driving code to use PDF archive, 2020-01-27)


## Call the list of PSD archive == (2020-06-21) ========================
## Ex) Call Amoroso information; arxiv %>% filter(name == 'Amoroso')
## Ex) Call Amoroso modeling1; arxiv %>% filter(name == 'Amoroso') %>% {.[['model']][[1]](x,y)}
## Ex) Call Amoroso modeling2; arxiv[[7, 'model']][[1]] %>% {.(x, y)}
## Ex) Call over 4 parameters; arxiv %>% filter(para >= 4)
## When a newcomer is required to evaluate comparing with gold saints, register 'test' in the remark term at first
## 1st trial
#  select_pdf.('test') %>% .[['model']] %>% map_dbl(~ .(x, y)$dev) %>% set_names(select_pdf.('test')[['name']])
## 2nd trial
#  arxiv %>% filter(para %in% 4) %>% .[127:, ] %>% demo_any_model_ranking(.)
#  arxiv %>% filter(remark %in% 'test') %>% demo_any_model_ranking(.)
#  arxiv %>% filter(! remark %in% 'none') %>% demo_any_model_ranking(.)


tb. <- function(obj1, obj2, obj3, obj4) tibble(name = obj1, model = list(obj2), para = obj3, remark = obj4)
arxiv <- dplyr::bind_rows(  # Name, Model, Parameter number and Remark
  tb.('Additive Weibull', addWeiF., 6, 'none'),
  tb.('Additive Weibull log-logistic', addWeiLogLogisF., 6, 'none'),
  tb.('Adjusted log-logistic generalized exponential', adjLogLogisGenExpF., 3, 'none'),
  tb.('Alpha-beta skew normal', alpBetaSkewNormF., 2, 'none'),
  tb.('Alpha logarithmic transformed Weibull', alpLogTransWeiF., 3, 'none'),
  tb.('Alpha power exponential', alpPowExpF., 2, 'none'),
  tb.('Alpha power inverse Weibull', alpPowInvWeiF., 3, 'none'),
  tb.('Alpha power inverted exponential', alpPowInvtExpF., 2, 'none'),
  tb.('Alpha skew normal', alpSkewNormF., 1, 'none'),
  tb.('Amoroso', amorosoF., 4, 'none'),
  tb.('Another generalized transmuted exponential', anoGenTransExpF., 2, 'none'),
  tb.('Another generalized transmuted Frechet', anoGenTransFreF., 4, 'none'),
  tb.('Another generalized transmuted normal', anoGenTransNormF., 4, 'none'),
  tb.('Another generalized transmuted uniform', anoGenTransUniF., 3, 'none'),
  tb.('Another generalized transmuted Weibull', anoGenTransWeiF., 3, 'none'),
  tb.('Asymmetric Laplace', asymLaplaceF., 3, 'none'),
  tb.('Balding-Nichols', baldNichoF., 4, 'none'),
  tb.('Bebbington', bebbingtonF., 2, 'none'),
  tb.('Benini', beniniF., 3, 'none'),
  tb.('Benktander type II', benk2F., 2, 'none'),
  tb.('Beta', betaF., 4, 'none'),
  tb.('Beta additive Weibull', betaAddWeiF., 6, 'none'),
  tb.('Beta Birnbaum-Saunders', betaBirnSaunF., 4, 'none'),
  tb.('Beta BLZ', betaBLZF., 4, 'none'),
  tb.('Beta Burr III', betaBurr3F., 5, 'gold'),  # *** (-11.11)
  tb.('Beta Burr type X', betaBurr10F., 4, 'none'),
  tb.('Beta Burr type X with one parameter', betaBurrX1F., 3, 'none'),
  tb.('Beta Burr XII', betaBurr12F., 5, 'none'),
  tb.('Beta-Cauchy', betaCauF., 4, 'none'),
  tb.('Beta Chen', betaChenF., 4, 'none'),
  tb.('Beta compound Rayleigh', betaCompoRayF., 4, 'none'),
  tb.('Beta-Dagum', betaDagF., 5, 'none'),
  tb.('Beta exponential', betaExpF., 4, 'none'),
  tb.('Beta exponential Frechet', betaExpFreF., 5, 'none'),
  tb.('Beta exponential geometric', betaExpGeoF., 4, 'none'),
  tb.('Beta exponential logarithmic', betaExpLogF., 4, 'none'),
  tb.('Beta exponential Pareto', betaExpPareF., 5, 'none'),
  tb.('Beta exponential power', betaExpPowF., 4, 'none'),
  tb.('Beta exponentiated Burr XII', betaExpBurr12F., 5, 'none'),
  tb.('Beta exponentiated exponential', betaExpExpF., 4, 'none'),
  tb.('Beta exponentiated gamma', betaExpGamF., 4, 'none'),
  tb.('Beta exponentiated Gompertz', betaExpGomF., 5, 'none'),
  tb.('Beta exponentiated Lindley', betaExpLinF., 4, 'none'),
  tb.('Beta exponentiated Lomax', betaExpLomF., 5, 'none'),
  tb.('Beta exponentiated modified Weibull', betaExpModWeiF., 6, 'none'),
  tb.('Beta exponentiated Mukherji-Islam', betaExpMukIsF., 4, 'none'),
  tb.('Beta exponentiated Nadarajah-Haghighi', betaExpNadaHaghiF., 5, 'none'),
  tb.('Beta exponentiated Weibull', betaExpWeiF., 5, 'none'),
  tb.('Beta exponentiated Weibull Poisson', betaExpWeiPoiF., 6, 'platinum'),  # **** (-10.47)
  tb.('Beta extended half-normal', betaExtHalfNormF., 4, 'none'),
  tb.('Beta Fisher-Tippett', betaFishTipF., 5, 'none'),
  tb.('Beta-Fisk', betaFiskF., 4, 'none'),
  tb.('Beta flexible Weibull', betaFlexWeiF., 4, 'none'),
  tb.('Beta Frechet', betaFreF., 4, 'none'),
  tb.('Beta generalized exponential', betaGenExpF., 4, 'none'),
  tb.('Beta generalized half-normal', betaGenHalfNormF., 4, 'none'),
  tb.('Beta generalized half-normal geometric', betaGenHalfNormGeoF., 5, 'none'),
  tb.('Beta generalized inverse Weibull', betaGenInvWeiF., 5, 'none'),
  tb.('Beta generalized inverse Weibull geometric', betaGenInvWeiGeoF., 6, 'none'),  # *** (-2728.357)
  tb.('Beta generalized inverted exponential', betaGenInvtExpF., 4, 'none'),
  tb.('Beta generalized linear failure rate', betaGenLineFRF., 4, 'none'),
  tb.('Beta generalized Marshall-Olkin-exponential', betaGenMaolExpF., 5, 'none'),
  tb.('Beta generalized Marshall-Olkin-extended exponentiated Pareto', betaGenMaolExtExpPareF., 6, 'none'),
  tb.('Beta generalized Marshall-Olkin-extended modified Weibull', betaGenMaolExtModWeiF., 7, 'none'),
  tb.('Beta generalized Marshall-Olkin-Frechet', betaGenMaolFreF., 6, 'none'),
  tb.('Beta generalized Marshall-Olkin-Gompertz', betaGenMaolGomF., 6, 'none'),
  tb.('Beta generalized Marshall-Olkin-Lomax', betaGenMaolLomF., 6, 'none'),
  tb.('Beta generalized Marshall-Olkin-Weibull', betaGenMaolWeiF., 6, 'none'),
  tb.('Beta generalized Pareto', betaGenPareF., 4, 'none'),
  tb.('Beta generalized power Lindley', betaGenPowLinF., 5, 'none'),
  tb.('Beta generalized power Weibull', betaGenPowWeiF., 5, 'none'),
  tb.('Beta generalized Rayleigh', betaGenRayF., 4, 'none'),
  tb.('Beta generalized Weibull', betaGenWeiF., 5, 'none'),
  tb.('Beta geometric generalized linear failure rate', betaGeoGenLineFRF., 5, 'none'),
  tb.('Beta Gompertz', betaGomF., 4, 'none'),
  tb.('Beta Gompertz-Makeham', betaGomMakF., 5, 'none'),
  tb.('Beta Gumbel', betaGumF., 4, 'none'),
  tb.('Beta half-Cauchy', betaHalfCauF., 3, 'none'),
  tb.('Beta half-normal', betaHalfNormF., 3, 'none'),
  tb.('Beta half-normal geometric', betaHalfNormGeoF., 4, 'none'),
  tb.('Beta hyperbolic secant', betaHypeSecantF., 4, 'none'),
  tb.('Beta inverse Rayleigh', betaInvRayF., 3, 'none'),
  tb.('Beta inverse Weibull', betaInvWeiF., 4, 'none'),
  tb.('Beta inverted exponential', betaInvtExpF., 3, 'none'),
  tb.('Beta kappa', betaKappaF., 3, 'none'),
  tb.('Beta Kies', betaKiesF., 6, 'none'),
  tb.('Beta Kumaraswamy exponential', betaKumaExpF., 5, 'none'),
  tb.('Beta Kumaraswamy-exponential', betaKumaExp2F., 5, 'none'),
  tb.('Beta Kumaraswamy-Frechet', betaKumaFreF., 6, 'none'),
  tb.('Beta Kumaraswamy-Lomax', betaKumaLomF., 6, 'none'),
  tb.('Beta Kumaraswamy Weibull', betaKumaWeiF., 6, 'none'),
  tb.('Beta Kumaraswamy-Weibull', betaKumaWei2F., 6, 'none'),
  tb.('Beta Lindley', betaLinF., 3, 'none'),
  tb.('Beta Lindley geometric', betaLinGeoF., 4, 'none'),
  tb.('Beta Lindley Poisson', betaLinPoiF., 4, 'none'),
  tb.('Beta linear failure rate', betaLineFRF., 4, 'none'),
  tb.('Beta linear failure rate geometric', betaLineFRGeoF., 5, 'none'),
  tb.('Beta linear failure rate logarithmic', betaLineFRLogF., 5, 'none'),
  tb.('Beta log-logistic', betaLogLogisF., 4, 'none'),
  tb.('Beta log-normal', betaLogNormF., 4, 'none'),
  tb.('Beta log-Weibull', betaLogWeiF., 4, 'none'),
  tb.('Beta logistic', betaLogisF., 4, 'none'),
  tb.('Beta Lomax', betaLomF., 4, 'none'),
  tb.('Beta Marshall-Olkin extended uniform', betaMaolExtUniF., 4, 'none'),
  tb.('Beta Marshall-Olkin Lomax', betaMaolLomF., 4, 'none'),
  tb.('Beta Marshall-Olkin normal', betaMaolNormF., 5, 'none'),
  tb.('Beta Marshall-Olkin Weibull', betaMaolWeiF., 5, 'silver'),  # ** (-10.91) bi-modal
  tb.('Beta Maxwell', betaMaxF., 3, 'none'),
  tb.('Beta modified Weibull', betaModWeiF., 5, 'none'),
  tb.('Beta-modified weighted Rayleigh', betaModWeightRayF., 5, 'none'),
  tb.('Beta Moyal', betaMoyF., 4, 'none'),
  tb.('Beta Nadarajah-Haghighi', betaNadaHaghiF., 4, 'none'),
  tb.('Beta Nadarajah-Kotz', betaNadaKotzF., 6, 'none'),
  tb.('Beta-Nakagami', betaNakaF., 4, 'none'),
  tb.('Beta normal', betaNormF., 4, 'none'),
  tb.('Beta odd log-logistic-exponential', betaOddLogLogisExpF., 4, 'none'),
  tb.('Beta odd log-logistic-Lomax', betaOddLogLogisLomF., 5, 'none'),
  tb.('Beta odd log-logistic-normal', betaOddLogLogisNormF., 5, 'none'),  # bi-modal (-2191.329)
  tb.('Beta odd log-logistic-Weibull', betaOddLogLogisWeiF., 5, 'none'),
  tb.('Beta P', betaPF., 3, 'none'),
  tb.('Beta Pareto', betaPareF., 4, 'none'),
  tb.('Beta Pareto-geometric', betaPareGeoF., 5, 'none'),
  tb.('Beta Pham', betaPhamF., 4, 'none'),
  tb.('Beta Phani', betaPhaniF., 7, 'none'),
  tb.('Beta power', betaPowF., 4, 'none'),
  tb.('Beta prime', betaPrimeF., 4, 'none'),
  tb.('Beta quadratic hazard rate', betaQuadHazRateF., 5, 'none'),
  tb.('Beta Rayleigh', betaRayF., 3, 'none'),
  tb.('Beta Rayleigh logarithmic', betaRayLogF., 4, 'none'),
  tb.('Beta reciprocal Weibull', betaRecWeiF., 4, 'none'),
  tb.('Beta Sarhan-Zaindin modified Weibull', betaSarZaiModWeiF., 5, 'none'),
  tb.('Beta-Singh-Maddala', betaSinMadF., 5, 'none'),
  tb.('Beta Slymen-Lachenbruch', betaSlyLachF., 5, 'none'),
  tb.('Beta Student\'s t', betaStuTF., 2, 'none'),
  tb.('Beta transmuted-Frechet', betaTransFreF., 5, 'none'),
  tb.('Beta transmuted-Gompertz', betaTransGomF., 5, 'none'),
  tb.('Beta transmuted-Lindley', betaTransLinF., 4, 'none'),
  tb.('Beta transmuted-Pareto', betaTransPareF., 5, 'none'),
  tb.('Beta transmuted power', betaTransPowF., 5, 'none'),
  tb.('Beta transmuted Weibull', betaTransWeiF., 5, 'none'),
  tb.('Beta truncated Pareto', betaTruncPareF., 6, 'none'),
  tb.('Beta Weibull', betaWeiF., 4, 'none'),
  tb.('Beta-Weibull-geometric', betaWeiGeoF., 5, 'none'),
  tb.('Beta-Weibull-logarithmic', betaWeiLogF., 5, 'none'),
  tb.('Beta Weibull Poisson', betaWeiPoiF., 5, 'none'),
  tb.('Beta weighted exponential', betaWeightExpF., 4, 'none'),
  tb.('Beta weighted Weibull', betaWeightWeiF., 5, 'none'),
  tb.('Beta XTG', betaXTGF., 5, 'none'),
  tb.('Birnbaum-Saunders', birnSaunF., 3, 'none'),
  tb.('Birnbaum-Saunders-t-Student', birnSaunTStuF., 3, 'none'),
  tb.('Biweight', biWeightF., 2, 'none'),
  tb.('Bramwell-Holdsworth-Pinton', bhpF., 2, 'none'),
  tb.('Burr II', burr2F., 1, 'none'),
  tb.('Burr III', burr3F., 3, 'none'),
  tb.('Burr III Marshall-Olkin Lindley', burr3MaolLinF., 4, 'none'),
  tb.('Burr III Marshall-Olkin Weibull', burr3MaolWeiF., 5, 'silver'),  # ** (-10.63)
  tb.('Burr VIII', burr8F., 1, 'none'),
  tb.('Burr type X', burr10F., 2, 'none'),
  tb.('Burr X exponentiated Lomax', burr10ExpLomF., 4, 'none'),
  tb.('Burr X exponentiated Weibull', burr10ExpWeiF., 3, 'none'),
  tb.('Burr X Frechet', burr10FreF., 3, 'none'),
  tb.('Burr X Lomax', burr10LomF., 3, 'none'),
  tb.('Burr X Nadarajah Haghighi', burr10NadaHaghiF., 3, 'none'),
  tb.('Burr XII', burr12F., 3, 'none'),
  tb.('Burr XII Frechet', burr12FreF., 4, 'none'),
  tb.('Burr XII geometric', burr12GeoF., 3, 'none'),
  tb.('Burr XII inverse Rayleigh', burr12InvRayF., 3, 'none'),
  tb.('Burr XII negative binomial', burr12NegaBiF., 5, 'none'),
  tb.('Burr XII Poisson', burr12PoiF., 3, 'none'),
  tb.('Burr XII Weibull', burr12WeiF., 4, 'none'),
  tb.('Burr XII Weibull logarithmic', burr12WeiLogF., 5, 'none'),
  tb.('BW', bwF., 4, 'none'),
  tb.('Cauchy', cauchyF., 2, 'none'),
  tb.('Central-beta', centBetaF., 3, 'none'),
  tb.('Central-logistic', centLogisF., 3, 'none'),
  tb.('Champernowne', champerF., 4, 'none'),
  tb.('Chen', chenF., 2, 'none'),
  tb.('Chi', chiF., 1, 'none'),
  tb.('Chi-square', chiSqrF., 1, 'none'),
  tb.('Chi-square exponential', chiSqrExpF., 1, 'none'),
  tb.('Complementary Chen logarithmic', compChenLogF., 3, 'none'),
  tb.('Complementary generalized transmuted Poisson-Lindley', compGenTransPoiLinF., 3, 'none'),
  tb.('Complementary generalized transmuted Poisson-Weibull', compGenTransPoiWeiF., 3, 'none'),
  tb.('Complementary geometric transmuted-Lindley', compGeoTransLinF., 3, 'none'),
  tb.('Complementary geometric transmuted-Weibull', compGeoTransWeiF., 4, 'none'),
  tb.('Complementary Weibull geometric', compWeiGeoF., 3, 'none'),
  tb.('Compound Rayleigh', compoRayF., 2, 'none'),
  tb.('Dagum', dagumF., 3, 'none'),
  tb.('Dagum2', dagum2F., 4, 'none'),
  tb.('Davis', davisF., 3, 'none'),
  tb.('Double truncated Dagum', doubleTruncDagF., 5, 'none'),
  tb.('Epanechnikov', epaF., 2, 'none'),
  tb.('Exponent power-Weibull', expPowWeiF., 3, 'none'),
  tb.('Exponential Burr-III', expBurr3F., 3, 'none'),
  tb.('Exponential exponential geometric', expExpGeoF., 3, 'none'),
  tb.('Exponential extension', expExtF., 2, 'none'),
  tb.('Exponential generalized beta', expGenBetaF., 5, 'none'),
  tb.('Exponential geometric', expGeoF., 2, 'none'),
  tb.('Exponential logarithmic', expLogF., 2, 'none'),
  tb.('Exponential Lomax', expLom3F., 3, 'none'),
  tb.('Exponential modified Burr-III', expModBurr3F., 4, 'none'),
  tb.('Exponential Pareto', expPareF., 3, 'none'),
  tb.('Exponential-Poisson', expPoiF., 2, 'none'),
  tb.('Exponential Poisson Lindley', expPoiLinF., 2, 'none'),
  tb.('Exponential power', expPowF., 3, 'none'),
  tb.('Exponential ratio', expRatioF., 1, 'none'),
  tb.('Exponentially modified Gaussian (type 1)', expModGauss3F., 3, 'none'),
  tb.('Exponentially modified Gaussian (type 2)', expModGauss4F., 4, 'none'),
  tb.('Exponentiated additive Weibull', expAddWeiF., 5, 'none'),
  tb.('Exponentiated Burr XII Poisson', expBurr12PoiF., 5, 'gold'),  # *** (-11.10)
  tb.('Exponentiated Burr XII Weibull', expBurr12WeiF., 5, 'none'),
  tb.('Exponentiated Chen logarithmic', expChenLogF., 4, 'none'),
  tb.('Exponentiated chi-square', expChiSqrF., 2, 'none'),
  tb.('Exponentiated exponential', expExpF., 3, 'none'),
  tb.('Exponentiated exponential logistic', expExpLogisF., 3, 'none'),
  tb.('Exponentiated exponential Poisson', expExpPoiF., 3, 'none'),
  tb.('Exponentiated exponential Rayleigh', expExpRayF., 3, 'none'),
  tb.('Exponentiated exponentiated exponential-Weibull', expExpExpWeiF., 5, 'none'),
  tb.('Exponentiated exponentiated Gompertz', expExpGomF., 4, 'none'),
  tb.('Exponentiated extended half-normal', expExtHalfNormF., 3, 'none'),
  tb.('Exponentiated Frechet', expFreF., 3, 'none'),
  tb.('Exponentiated Frechet Poisson', expFrePoiF., 3, 'none'),
  tb.('Exponentiated gamma', expGamF., 3, 'none'),
  tb.('Exponentiated generalized Burr type X', expGenBurr10F., 4, 'none'),
  tb.('Exponentiated generalized extended exponential', expGenExtExpF., 4, 'none'),
  tb.('Exponentiated generalized extended Gompertz', expGenExtGomF., 5, 'none'),
  tb.('Exponentiated generalized Frechet', expGenFreF., 4, 'none'),
  tb.('Exponentiated generalized gamma', expGenGamF., 4, 'none'),
  tb.('Exponentiated generalized Gumbel', expGenGumF., 4, 'none'),
  tb.('Exponentiated generalized half-normal', expGenHalfNormF., 3, 'none'),
  tb.('Exponentiated generalized inverse Weibull', expGenInvWeiF., 4, 'none'),
  tb.('Exponentiated generalized Lomax', expGenLomF., 4, 'none'),
  tb.('Exponentiated generalized Marshall-Olkin-exponential', expGenMaolExpF., 4, 'none'),
  tb.('Exponentiated generalized Marshall-Olkin-Lomax', expGenMaolLomF., 5, 'none'),
  tb.('Exponentiated generalized Marshall-Olkin-Weibull', expGenMaolWeiF., 5, 'none'),
  tb.('Exponentiated generalized Pareto', expGenPareF., 2, 'none'),
  tb.('Exponentiated generalized power exponential', expGenPowExpF., 3, 'none'),
  tb.('Exponentiated generalized power function', expGenPowFunF., 4, 'none'),
  tb.('Exponentiated generalized quasi Lindley', expGenQuaLinF., 4, 'none'),
  tb.('Exponentiated generalized standardized half-logistic', expGenStdHalfLogisF., 2, 'none'),
  tb.('Exponentiated generalized Topp-Leone exponential', expGenTopLeoExpF., 4, 'none'),
  tb.('Exponentiated generalized Topp-Leone Lindley', expGenTopLeoLinF., 4, 'none'),
  tb.('Exponentiated generalized Topp-Leone Lomax', expGenTopLeoLomF., 5, 'none'),
  tb.('Exponentiated generalized Topp-Leone quasi Lindley', expGenTopLeoQuaLinF., 5, 'none'),
  tb.('Exponentiated generalized Topp-Leone Weibull', expGenTopLeoWeiF., 5, 'none'),
  tb.('Exponentiated generalized U-quadratic', expGenUQuadF., 4, 'none'),
  tb.('Exponentiated generalized Weibull', expGenWeiF., 4, 'none'),
  tb.('Exponentiated Gompertz', expGomF., 3, 'none'),
  tb.('Exponentiated Gumbel', expGumF., 3, 'none'),
  tb.('Exponentiated Gumbel exponential', expGumExpF., 4, 'none'),
  tb.('Exponentiated Gumbel type 2', expGum2F., 3, 'none'),
  tb.('Exponentiated half-Cauchy', expHalfCauF., 2, 'none'),
  tb.('Exponentiated half logistic', expHalfLogisF., 2, 'none'),
  tb.('Exponentiated half-logistic Frechet', expHalfLogisFreF., 4, 'none'),
  tb.('Exponentiated half-logistic generalized half-normal', expHalfLogisGenHalfNormF., 4, 'none'),
  tb.('Exponentiated half-logistic log-logistic', expHalfLogisLogLogisF., 4, 'none'),
  tb.('Exponentiated half-normal', expHalfNormF., 2, 'none'),
  tb.('Exponentiated inverse exponential Poisson', expInvExpPoiF., 3, 'none'),
  tb.('Exponentiated inverse Rayleigh Poisson', expInvRayPoiF., 3, 'none'),
  tb.('Exponentiated inverse Weibull Poisson', expInvWeiPoiF., 4, 'none'),
  tb.('Exponentiated Kumaraswamy Dagum', expKumaDagF., 5, 'none'),
  tb.('Exponentiated Kumaraswamy exponential', expKumaExpF., 4, 'none'),
  tb.('Exponentiated Kumaraswamy Weibull', expKumaWeiF., 5, 'none'),
  tb.('Exponentiated Lindley', expLinF., 2, 'none'),
  tb.('Exponentiated Lindley Poisson', expLinPoiF., 3, 'none'),
  tb.('Exponentiated linear failure rate', expLineFRF., 3, 'none'),
  tb.('Exponentiated linear failure rate geometric', expLineFRGeoF., 4, 'none'),
  tb.('Exponentiated log-logistic', expLogLogisF., 3, 'none'),
  tb.('Exponentiated Lomax', expLomF., 2, 'none'),
  tb.('Exponentiated Maxwell', expMaxF., 2, 'none'),
  tb.('Exponentiated modified Weibull', expModWeiF., 4, 'none'),
  tb.('Exponentiated modified Weibull extension', expModWeiExtF., 4, 'none'),
  tb.('Exponentiated Nadarajah-Haghighi', expNadaHaghiF., 3, 'none'),
  tb.('Exponentiated Nadarajah-Haghighi Poisson', expNadaHaghiPoiF., 4, 'none'),
  tb.('Exponentiated Nakagami', expNakaF., 3, 'none'),
  tb.('Exponentiated Pareto', expPareF., 2, 'none'),
  tb.('Exponentiated Pareto IV', expPare4F., 4, 'none'),
  tb.('Exponentiated power function', expPowFunF., 3, 'none'),
  tb.('Exponentiated Rayleigh', expRayF., 2, 'none'),
  tb.('Exponentiated Rayleigh Rayleigh', expRayRayF., 3, 'none'),
  tb.('Exponentiated reciprocal Weibull', expRecWeiF., 3, 'none'),
  tb.('Exponentiated scaled chi-square', expScaChiSqrF., 3, 'none'),
  tb.('Exponentiated transmuted exponential', expTransExpF., 3, 'none'),
  tb.('Exponentiated transmuted exponentiated exponential', expTransExpExpF., 4, 'none'),
  tb.('Exponentiated transmuted exponentiated linear failure rate', expTransExpLineFRF., 5, 'none'),
  tb.('Exponentiated transmuted exponentiated modified Weibull', expTransExpModWeiF., 6, 'none'),
  tb.('Exponentiated transmuted exponentiated Rayleigh', expTransExpRayF., 4, 'none'),
  tb.('Exponentiated transmuted exponentiated Weibull', expTransExpWeiF., 5, 'none'),
  tb.('Exponentiated transmuted generalized Rayleigh', expTransGenRayF., 4, 'none'),
  tb.('Exponentiated transmuted linear failure rate', expTransLineFRF., 4, 'none'),
  tb.('Exponentiated transmuted modified Weibull', expTransModWeiF., 5, 'none'),
  tb.('Exponentiated transmuted Rayleigh', expTransRayF., 3, 'none'),
  tb.('Exponentiated transmuted Weibull', expTransWeiF., 4, 'none'),
  tb.('Exponentiated U-quadratic', expUQuadF., 3, 'none'),
  tb.('Exponentiated Weibull', expWeiF., 4, 'none'),
  tb.('Exponentiated Weibull exponential', expWeiExpF., 3, 'none'),
  tb.('Exponentiated Weibull-Frechet', expWeiFreF., 5, 'none'),
  tb.('Exponentiated Weibull geometric', expWeiGeoF., 4, 'none'),
  tb.('Exponentiated Weibull-Lindley', expWeiLinF., 4, 'none'),
  tb.('Exponentiated Weibull-log-logistic', expWeiLogLogisF., 4, 'none'),
  tb.('Exponentiated Weibull-Pareto', expWeiPareF., 4, 'none'),
  tb.('Exponentiated Weibull Poisson', expWeiPoiF., 4, 'none'),
  tb.('Exponentiated Weibull-Rayleigh', expWeiRayF., 4, 'none'),
  tb.('Exponentiated Weibull-Weibull', expWeiWeiF., 5, 'none'),
  tb.('Extended Birnbaum-Saunders', extBirnSaunF., 5, 'none'),
  tb.('Extended Chen', extChenF., 3, 'none'),
  tb.('Extended Dagum', extDagF., 5, 'none'),
  tb.('Extended exponential power', extExpPowF., 3, 'none'),
  tb.('Extended exponential-Weibull', extExpWeiF., 4, 'none'),
  tb.('Extended exponentiated Nadarajah-Haghighi', extExpNadaHaghiF., 4, 'none'),
  tb.('Extended generalized linear failure rate', extGenLineFRF., 4, 'none'),
  tb.('Extended half-normal', extHalfNormF., 2, 'none'),
  tb.('Extended Gompertz', extGomF., 3, 'none'),
  tb.('Extended Lindley', extLinF., 3, 'none'),
  tb.('Extended odd log-logistic modified Weibull', extOddLogLogisModWeiF., 4, 'none'),
  tb.('Extended odd Weibull Lindley', extOddWeiLinF., 3, 'none'),
  tb.('Extended Weibull', extWeiF., 3, 'none'),
  tb.('Extended Weibull-exponential', extWeiExpF., 4, 'none'),
  tb.('Extended Weibull-Frechet', extWeiFreF., 5, 'none'),
  tb.('Extended Weibull-Gumbel', extWeiGumF., 5, 'none'),  # *** (-12.27)
  tb.('Extended Weibull-Lindley', extWeiLinF., 4, 'none'),
  tb.('Extended Weibull-normal', extWeiNormF., 5, 'none'),  # bi-modal (-2338.173)
  tb.('Extended Weibull-Pareto', extWeiPareF., 5, 'none'),
  tb.('Extended Weibull-uniform', extWeiUniF., 4, 'none'),
  tb.('Extended Weibull-Weibull', extWeiWeiF., 5, 'none'),  # *** (-12.29)
  tb.('F', fF., 2, 'none'),
  tb.('Fatigue lifetime', fatigueF., 3, 'none'),
  tb.('Feller-Pareto', fellPareF., 5, 'silver'),  # ** (-10.84)
  tb.('Fisher-Tippett', fishTipF., 3, 'none'),
  tb.('Five parameter Lindley', fiveParLinF., 5, 'none'),
  tb.('Flexible additive Weibull', flexAddWeiF., 6, 'none'),
  tb.('Flexible Weibull', flexWeiF., 2, 'none'),
  tb.('Flexible Weibull extension', flexWeiExtF., 2, 'none'),
  tb.('Frechet', frechetF., 3, 'none'),
  tb.('Frechet Poisson', frePoiF., 2, 'none'),
  tb.('Frechet Topp-Leone Kumaraswamy', freTopLeoKumaF., 5, 'none'),
  tb.('Frechet Topp-Leone Lomax', freTopLeoLomF., 5, 'none'),
  tb.('Gamma', gamF., 2, 'none'),
  tb.('Gamma Burr III', gamBurr3F., 4, 'none'),
  tb.('Gamma Dagum', gamDagF., 5, 'none'),  # * (-2563.627)
  tb.('Gamma exponential', gamExpF., 3, 'none'),
  tb.('Gamma exponentiated exponential', gamExpExpF., 3, 'none'),
  tb.('Gamma exponentiated exponential-Weibull', gamExpExpWeiF., 4, 'none'),
  tb.('Gamma extended Frechet', gamExtFreF., 4, 'none'),
  tb.('Gamma extreme value', gamEVF., 2, 'none'),
  tb.('Gamma generalized Pareto', gamGenPareF., 3, 'none'),
  tb.('Gamma geometric', gamGeoF., 2, 'none'),
  tb.('Gamma Gompertz', gamGomF., 3, 'none'),
  tb.('Gamma Gumbel', gamGumF., 3, 'none'),
  tb.('Gamma half-Cauchy', gamHalfCauF., 3, 'none'),
  tb.('Gamma linear failure rate', gamLineFRF., 3, 'none'),
  tb.('Gamma log-logistic', gamLogLogisF., 3, 'none'),
  tb.('Gamma log-logistic Weibull', gamLogLogisWeiF., 5, 'none'),
  tb.('Gamma log-normal', gamLogNormF., 3, 'none'),
  tb.('Gamma Lomax', gamLomF., 3, 'none'),
  tb.('Gamma Nadarajah-Haghighi', gamNadaHaghiF., 3, 'none'),
  tb.('Gamma normal', gamNormF., 3, 'none'),
  tb.('Gamma Pareto', gamPareF., 3, 'none'),
  tb.('Gamma Pareto IV', gamPare4F., 3, 'none'),
  tb.('Gamma Weibull', gamWeiF., 3, 'none'),
  tb.('Gausian mixture model', gmmF., 5, 'none'),
  tb.('Generalized additive Weibull', genAddWeiF., 4, 'none'),
  tb.('Generalized additive Weibull-Burr XII', genAddWeiBurr12F., 6, 'none'),
  tb.('Generalized additive Weibull-Gumbel', genAddWeiGumF., 6, 'none'),
  tb.('Generalized additive Weibull log-logistic', genAddWeiLogLogisF., 6, 'none'),
  tb.('Generalized additive Weibull-uniform', genAddWeiUniF., 5, 'none'),
  tb.('Generalized alpha-beta skew normal', genAlpBetaSkewNormF., 5, 'none'),
  tb.('Generalized beta', genBetaF., 5, 'none'),
  tb.('Generalized beta of the second kind', genBeta2F., 4, 'none'),
  tb.('Generalized beta prime', genBetaPrimeF., 5, 'classic'),  # ** (-10.79)
  tb.('Generalized Burr', genBurrF., 4, 'none'),
  tb.('Generalized Burr XII-Poisson', genBurr12PoiF., 4, 'none'),
  tb.('Generalized Dagum', genDagF., 3, 'none'),
  tb.('Generalized exponential', genExpF., 2, 'none'),
  tb.('Generalized exponential geometric', genExpGeoF., 3, 'none'),
  tb.('Generalized exponential-Poisson', genExpPoiF., 3, 'none'),
  tb.('Generalized exponentiated additive Weibull', genExpAddWeiF., 5, 'none'),
  tb.('Generalized exponentiated Frechet', genExpFreF., 4, 'none'),
  tb.('Generalized exponentiated Gumbel type-2', genExpGum2F., 4, 'none'),
  tb.('Generalized exponentiated inverse exponential', genExpInvExpF., 2, 'none'),
  tb.('Generalized exponentiated inverse Rayleigh', genExpInvRayF., 2, 'none'),
  tb.('Generalized exponentiated inverse Weibull', genExpInvWeiF., 4, 'none'),
  tb.('Generalized extreme value', gevF., 3, 'none'),
  tb.('Generalized Fisher-Tippett', genFishTipF., 4, 'classic'),  # * (-8.68)
  tb.('Generalized Frechet', genFreF., 4, 'none'),
  tb.('Generalized gamma', genGamF., 3, 'none'),
  tb.('Generalized Gompertz', genGomF., 3, 'none'),
  tb.('Generalized Gompertz-binomial', genGomBiF., 5, 'none'),
  tb.('Generalized Gompertz-geometric', genGomGeoF., 4, 'none'),
  tb.('Generalized Gompertz-logarithmic', genGomLogF., 4, 'none'),
  tb.('Generalized Gompertz-Poisson', genGomPoiF., 4, 'none'),
  tb.('Generalized Gumbel', genGumF., 3, 'none'),
  tb.('Generalized half-normal', genHalfNormF., 2, 'none'),
  tb.('Generalized half normal-binomial', genHalfNormBiF., 4, 'none'),
  tb.('Generalized half-normal exponentiated', genHalfNormExpF., 3, 'none'),
  tb.('Generalized half-normal exponentiated geometric', genHalfNormExpGeoF., 4, 'none'),
  tb.('Generalized half-normal geometric', genHalfNormGeoF., 3, 'none'),
  tb.('Generalized half normal-logarithmic', genHalfNormLogF., 3, 'none'),
  tb.('Generalized half normal-Poisson', genHalfNormPoiF., 3, 'none'),
  tb.('Generalized inverse exponential', genInvExpF., 2, 'none'),
  tb.('Generalized inverse gamma', genInvGamF., 3, 'none'),
  tb.('Generalized inverse Gaussian', genInvGaussF., 3, 'none'),
  tb.('Generalized inverse Weibull', genInvWeiF., 3, 'none'),
  tb.('Generalized inverse Weibull geometric', genInvWeiGeoF., 4, 'none'),
  tb.('Generalized inverted exponential', genInvtExpF., 2, 'none'),
  tb.('Generalized K', genKF., 4, 'none'),
  tb.('Generalized Lindley (GL1)', genLin1F., 3, 'none'),
  tb.('Generalized Lindley (GL2)', genLin2F., 2, 'none'),
  tb.('Generalized linear exponential', genLineExpF., 4, 'none'),
  tb.('Generalized linear failure rate', genLineFRF., 3, 'none'),
  tb.('Generalized log-gamma', genLogGamF., 3, 'bronze'),  # * (-3.80) left-so-heavy
  tb.('Generalized logistic', genLogisF., 3, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-exponential', genMaolKumaExpF., 5, 'platinum'),  # **** (-11.09)
  tb.('Generalized Marshall-Olkin Kumaraswamy-extended exponentiated Pareto', genMaolKumaExtExpPareF., 6, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-extended modified Weibull', genMaolKumaExtModWeiF., 7, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-extended power', genMaolKumaExtPowF., 5, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-Frechet', genMaolKumaFreF., 6, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-Gompertz', genMaolKumaGomF., 6, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-Lomax', genMaolKumaLomF., 6, 'none'),
  tb.('Generalized Marshall-Olkin Kumaraswamy-Weibull', genMaolKumaWeiF., 6, 'none'),
  tb.('Generalized modified exponential', genModExpF., 2, 'none'),
  tb.('Generalized modified Weibull', genModWeiF., 4, 'none'),
  tb.('Generalized normal ver.1', genNorm1F., 3, 'none'),
  tb.('Generalized normal ver.2', genNorm2F., 3, 'none'),
  tb.('Generalized odd Burr III-logistic', genOddBurr3LogisF., 4, 'none'),
  tb.('Generalized odd Burr III-Lomax', genOddBurr3LomF., 5, 'platinum'),  # **** (-10.84)
  tb.('Generalized odd Burr III-Weibull', genOddBurr3WeiF., 5, 'none'),
  tb.('Generalized odd generalized exponential inverse Rayleigh', genOddGenExpInvRayF., 3, 'none'),
  tb.('Generalized odd log-logistic reciprocal Rayleigh', genOddLogLogisRecRayF., 3, 'none'),
  tb.('Generalized odd Weibull generated-normal', genOddWeiGenNormF., 4, 'none'),  # bi-modal (-2229.977)
  tb.('Generalized odd Weibull generated-Weibull', genOddWeiGenWeiF., 4, 'none'),
  tb.('Generalized Pareto', genPareF., 3, 'none'),
  tb.('Generalized Pearson VII', genPear7F., 4, 'none'),
  tb.('Generalized Poisson Lindley', genPoiLinF., 2, 'none'),
  tb.('Generalized power function', genPowFunF., 2, 'none'),
  tb.('Generalized power Lindley', genPowLinF., 3, 'none'),
  tb.('Generalized power Weibull', genPowWeiF., 5, 'none'),
  tb.('Generalized Ramos-Louzada', genRamLouF., 2, 'none'),
  tb.('Generalized Rayleigh', genRayF., 3, 'none'),
  tb.('Generalized Sichel', genSichelF., 6, 'none'),
  tb.('Generalized transmuted additive Weibull', genTransAddWeiF., 6, 'none'),
  tb.('Generalized transmuted Burr X', genTransBurr10F., 5, 'none'),
  tb.('Generalized transmuted exponential', genTransExpF., 3, 'none'),
  tb.('Generalized transmuted exponentiated additive Weibull', genTransExpAddWeiF., 7, 'none'),
  tb.('Generalized transmuted exponentiated modified exponential', genTransExpModExpF., 4, 'none'),
  tb.('Generalized transmuted Lindley', genTransLinF., 4, 'none'),
  tb.('Generalized transmuted log-logistic', genTransLogLogisF., 5, 'platinum'),  # **** (-11.24)
  tb.('Generalized transmuted modified exponential', genTransModExpF., 3, 'none'),
  tb.('Generalized transmuted normal', genTransNormF., 4, 'none'),
  tb.('Generalized transmuted Poisson Lindley', genTransPoiLinF., 3, 'none'),
  tb.('Generalized transmuted Poisson Weibull', genTransPoiWeiF., 4, 'none'),
  tb.('Generalized transmuted Weibull', genTransWeiF., 5, 'none'),
  tb.('Generalized transmuted Weibull geometric', genTransWeiGeoF., 6, 'none'),
  tb.('Generalized truncated log-gamma', genTruncLogGamF., 3, 'none'),
  tb.('Generalized Weibull', genWeiF., 4, 'none'),
  tb.('Geometric generalized linear failure rate', geoGenLineFRF., 4, 'none'),
  tb.('Gompertz', gompertzF., 2, 'none'),
  tb.('Gompertz-binomial', gomBiF., 4, 'none'),
  tb.('Gompertz-geometric', gomGeoF., 3, 'none'),
  tb.('Gompertz inverse exponential', gomInvExpF., 3, 'none'),
  tb.('Gompertz length biased exponential', gomLenBiasExpF., 3, 'none'),
  tb.('Gompertz-logarithmic', gomLogF., 3, 'none'),
  tb.('Gompertz Lomax', gomLomF., 4, 'none'),
  tb.('Gompertz-Makeham', gomMakF., 3, 'none'),
  tb.('Gompertz-Poisson', gomPoiF., 3, 'none'),
  tb.('Gompertz-power series', gomPowSeriF., 3, 'none'),
  tb.('Gumbel', gumbelF., 2, 'none'),
  tb.('Gumbel Lomax', gumLomF., 4, 'none'),
  tb.('Gumbel type 1', gumbel1F., 3, 'none'),
  tb.('Gumbel type 2', gumbel2F., 3, 'none'),
  tb.('Half-Cauchy', halfCauF., 2, 'none'),
  tb.('Half-exponential power', halfExpPowF., 3, 'none'),
  tb.('Half-generalized Pearson VII', halfGenPear7F., 4, 'none'),
  tb.('Half-logistic exponential', halfLogisExpF., 1, 'none'),
  tb.('Half-logistic generalized Weibull', halfLogisGenWeiF., 3, 'none'),
  tb.('Half-logistic Nadarajah-Haghighi', halfLogisNadaHaghiF., 2, 'none'),
  tb.('Half logistic Poisson', halfLogisPoiF., 3, 'none'),
  tb.('Half-logistic Weibull', halfLogisWeiF., 2, 'none'),
  tb.('Half-normal', halfNormF., 2, 'none'),
  tb.('Half-Pearson VII', halfPear7F., 3, 'none'),
  tb.('Halphen', halphenF., 4, 'none'),
  tb.('Harris extended exponential', harrisExtExpF., 3, 'none'),
  tb.('Hohlfeld', hohlfeldF., 2, 'none'),
  tb.('Hyperbola', hyperbolaF., 3, 'none'),
  tb.('Hyperbolic secant', hyperSecantF., 2, 'none'),
  tb.('Hyperbolic sine', hyperSineF., 1, 'none'),
  tb.('Inverse chi', invChiF., 1, 'none'),
  tb.('Inverse chi-square', invChiSqrF., 1, 'none'),
  tb.('Inverse exponential', invExpF., 2, 'none'),
  tb.('Inverse exponential Poisson', invExpPoiF., 2, 'none'),
  tb.('Inverse gamma', invGamF., 2, 'none'),
  tb.('Inverse Gaussian', invGaussF., 2, 'none'),
  tb.('Inverse half-normal', invHalfNormF., 2, 'none'),
  tb.('Inverse Lomax', invLomF., 2, 'none'),
  tb.('Inverse Maxwell', invMaxF., 1, 'none'),
  tb.('Inverse Nakagami', invNakaF., 3, 'none'),
  tb.('Inverse paralogistic', invParaLogisF., 1, 'none'),
  tb.('Inverse Rayleigh', invRayF., 2, 'none'),
  tb.('Inverse Rayleigh Poisson', invRayPoiF., 2, 'none'),
  tb.('Inverse Weibull', invWeiF., 2, 'none'),
  tb.('Inverse Weibull Poisson', invWeiPoiF., 3, 'none'),
  tb.('Inverted beta', invtBetaF., 2, 'none'),
  tb.('Inverted exponential', invtExpF., 1, 'none'),
  tb.('Johnson\'s SB', jsbF., 4, 'none'),
  tb.('Johnson\'s SU', jsuF., 4, 'classic'),  # * (-9.95)
  tb.('K', kF., 3, 'none'),
  tb.('Kappa', kappaF., 3, 'none'),
  tb.('Kies', kiesF., 4, 'none'),
  tb.('Kumaraswamy Burr type III', kumaBurr3F., 3, 'none'),
  tb.('Kumaraswamy Burr type X', kumaBurr10F., 3, 'none'),
  tb.('Kumaraswamy-chi-square', kumaChiSqrF., 3, 'none'),
  tb.('Kumaraswamy complementary Weibull geometric', kumaCompWeiGeoF., 5, 'none'),
  tb.('Kumaraswamy compound Rayleigh', kumaCompoRayF., 4, 'none'),
  tb.('Kumaraswamy-Dagum', kumaDagF., 4, 'none'),
  tb.('Kumaraswamy Erlang-truncated exponential', kumaErlTruncExpF., 4, 'none'),
  tb.('Kumaraswamy exponential', kumaExpF., 3, 'none'),
  tb.('Kumaraswamy-exponential-Weibull', kumaExpWeiF., 5, 'none'),
  tb.('Kumaraswamy exponentiated additive Weibull', kumaExpAddWeiF., 6, 'none'),
  tb.('Kumaraswamy exponentiated Burr XII', kumaExpBurr12F., 4, 'none'),
  tb.('Kumaraswamy exponentiated Chen', kumaExpChenF., 4, 'none'),
  tb.('Kumaraswamy exponentiated exponential', kumaExpExpF., 3, 'none'),
  tb.('Kumaraswamy exponentiated Frechet', kumaExpFreF., 5, 'none'),
  tb.('Kumaraswamy exponentiated linear failure rate', kumaExpLineFRF., 4, 'none'),
  tb.('Kumaraswamy exponentiated inverse exponential', kumaExpInvExpF., 4, 'none'),
  tb.('Kumaraswamy exponentiated inverse Rayleigh', kumaExpInvRayF., 4, 'none'),
  tb.('Kumaraswamy exponentiated modified Weibull', kumaExpModWeiF., 5, 'none'),
  tb.('Kumaraswamy exponentiated Rayleigh', kumaExpRayF., 3, 'none'),
  tb.('Kumaraswamy exponentiated U-quadratic', kumaExpUQuadF., 4, 'none'),
  tb.('Kumaraswamy exponentiated Weibull', kumaExpWei2F., 4, 'none'),
  tb.('Kumaraswamy flexible Weibull extension', kumaFlexWeiExtF., 4, 'none'),
  tb.('Kumaraswamy-Frechet', kumaFreF., 4, 'none'),
  tb.('Kumaraswamy Frechet Poisson', kumaFrePoiF., 4, 'none'),
  tb.('Kumaraswamy-Gamma', kumaGamF., 4, 'none'),
  tb.('Kumaraswamy generalized exponentiated exponential', kumaGenExpExpF., 3, 'none'),
  tb.('Kumaraswamy generalized exponentiated Gumbel type-2', kumaGenExpGum2F., 5, 'none'),
  tb.('Kumaraswamy-generalized exponentiated Pareto', kumaGenExpPareF., 3, 'none'),
  tb.('Kumaraswamy generalized gamma', kumaGenGamF., 5, 'none'),
  tb.('Kumaraswamy-generalized half-normal', kumaGenHalfNormF., 4, 'none'),
  tb.('Kumaraswamy generalized kappa', kumaGenKappaF., 5, 'none'),
  tb.('Kumaraswamy generalized linear failure rate', kumaGenLineFRF., 4, 'none'),
  tb.('Kumaraswamy-generalized Lomax', kumaGenLomF., 2, 'none'),
  tb.('Kumaraswamy generalized Pareto', kumaGenPareF., 4, 'none'),
  tb.('Kumaraswamy generalized power exponential', kumaGenPowExpF., 4, 'none'),
  tb.('Kumaraswamy generalized power Weibull', kumaGenPowWeiF., 5, 'none'),
  tb.('Kumaraswamy Gompertz', kumaGomF., 4, 'none'),
  tb.('Kumaraswamy Gompertz Makeham', kumaGomMakF., 5, 'none'),
  tb.('Kumaraswamy Gumbel', kumaGumF., 4, 'none'),
  tb.('Kumaraswamy Gumbel minimum', kumaGumMinF., 4, 'none'),
  tb.('Kumaraswamy Gumbel type-2', kumaGum2F., 4, 'none'),
  tb.('Kumaraswamy half-Cauchy', kumaHalfCauF., 3, 'none'),
  tb.('Kumaraswamy half-logistic', kumaHalfLogisF., 3, 'none'),
  tb.('Kumaraswamy half-normal', kumaHalfNormF., 3, 'none'),
  tb.('Kumaraswamy inverse exponential', kumaInvExpF., 3, 'none'),
  tb.('Kumaraswamy inverse exponential Poisson', kumaInvExpPoiF., 4, 'none'),
  tb.('Kumaraswamy inverse Gaussian', kumaInvGauF., 4, 'none'),
  tb.('Kumaraswamy inverse Rayleigh', kumaInvRayF., 3, 'none'),
  tb.('Kumaraswamy inverse Rayleigh Poisson', kumaInvRayPoiF., 4, 'none'),
  tb.('Kumaraswamy inverse Weibull', kumaInvWeiF., 4, 'none'),
  tb.('Kumaraswamy inverse Weibull Poisson', kumaInvWeiPoiF., 5, 'none'),
  tb.('Kumaraswamy Lindley', kumaLinF., 3, 'none'),
  tb.('Kumaraswamy linear failure rate', kumaLineFRF., 4, 'none'),
  tb.('Kumaraswamy log-logistic', kumaLogLogisF., 4, 'none'),
  tb.('Kumaraswamy Lomax', kumaLomF., 4, 'none'),
  tb.('Kumaraswamy Marshall-Olkin-exponential', kumaMaolExpF., 4, 'none'),
  tb.('Kumaraswamy Marshall-Olkin-Frechet', kumaMaolFreF., 5, 'silver'),  # ** (-10.90)
  tb.('Kumaraswamy Marshall-Olkin log-logistic', kumaMaolLogLogisF., 5, 'none'),
  tb.('Kumaraswamy Marshall-Olkin-Lomax', kumaMaolLomF., 5, 'none'),
  tb.('Kumaraswamy Marshall-Olkin-Rayleigh', kumaMaolRayF., 4, 'none'),
  tb.('Kumaraswamy Marshall-Olkin-Weibull', kumaMaolWeiF., 5, 'none'),
  tb.('Kumaraswamy-Maxwell', kumaMaxF., 3, 'none'),
  tb.('Kumaraswamy modified Burr-III', kumaModBurr3F., 4, 'none'),
  tb.('Kumaraswamy modified exponential', kumaModExpF., 3, 'none'),
  tb.('Kumaraswamy modified Weibull', kumaModWeiF., 5, 'none'),
  tb.('Kumaraswamy-Nakagami', kumaNakaF., 4, 'none'),
  tb.('Kumaraswamy normal', kumaNormF., 4, 'none'),
  tb.('Kumaraswamy odd log-logistic-Gumbel', kumaOddLogLogisGumF., 5, 'none'),  # * (-2576.923)
  tb.('Kumaraswamy odd log-logistic-normal', kumaOddLogLogisNormF., 5, 'none'),
  tb.('Kumaraswamy odd log-logistic-Weibull', kumaOddLogLogisWeiF., 5, 'none'),
  tb.('Kumaraswamy Pareto', kumaPareF., 4, 'none'),
  tb.('Kumaraswamy Pareto IV', kumaPare4F., 5, 'none'),
  tb.('Kumaraswamy power', kumaPowF., 4, 'none'),
  tb.('Kumaraswamy Rayleigh', kumaRayF., 3, 'none'),
  tb.('Kumaraswamy reciprocal Weibull', kumaRecWeiF., 4, 'none'),
  tb.('Kumaraswamy-scaled chi-square', kumaScaChiSqrF., 4, 'none'),
  tb.('Kumaraswamy transmuted additive Weibull', kumaTransAddWeiF., 7, 'none'),
  tb.('Kumaraswamy transmuted Burr X', kumaTransBurr10F., 5, 'none'),
  tb.('Kumaraswamy transmuted exponential', kumaTransExpF., 4, 'none'),
  tb.('Kumaraswamy transmuted exponentiated additive Weibull', kumaTransExpAddWeiF., 8, 'none'),
  tb.('Kumaraswamy transmuted exponentiated exponential', kumaTransExpExpF., 5, 'none'),
  tb.('Kumaraswamy transmuted exponentiated linear failure rate', kumaTransExpLineFRF., 6, 'none'),
  tb.('Kumaraswamy transmuted exponentiated modified exponential', kumaTransExpModExpF., 5, 'none'),
  tb.('Kumaraswamy-transmuted exponentiated modified Weibull', kumaTransExpModWeiF., 7, 'none'),
  tb.('Kumaraswamy transmuted exponentiated Rayleigh', kumaTransExpRayF., 5, 'none'),
  tb.('Kumaraswamy transmuted exponentiated Weibull', kumaTransExpWeiF., 6, 'none'),
  tb.('Kumaraswamy transmuted linear failure rate', kumaTransLineFRF., 5, 'none'),
  tb.('Kumaraswamy transmuted log-logistic', kumaTransLogLogisF., 5, 'gold'),  # *** (-11.13)
  tb.('Kumaraswamy transmuted modified exponential', kumaTransModExpF., 4, 'none'),
  tb.('Kumaraswamy transmuted modified Weibull', kumaTransModWeiF., 6, 'none'),
  tb.('Kumaraswamy transmuted power', kumaTransPowF., 5, 'none'),
  tb.('Kumaraswamy transmuted Rayleigh', kumaTransRayF., 4, 'none'),
  tb.('Kumaraswamy transmuted Weibull', kumaTransWeiF., 5, 'none'),
  tb.('Kumaraswamy Weibull', kumaWeiF., 4, 'none'),
  tb.('Kumaraswamy Weibull-Burr XII', kumaWeiBurr12F., 7, 'none'),
  tb.('Kumaraswamy Weibull geometric', kumaWeiGeoF., 5, 'silver'),  # ** (-10.14) bi-modal
  tb.('Kumaraswamy Weibull-quasi Lindley', kumaWeiQuaLinF., 6, 'none'),
  tb.('Kumaraswamy Weibull-uniform', kumaWeiUniF., 5, 'none'),
  tb.('Kumaraswamy Weibull-Weibull', kumaWeiWeiF., 6, 'none'),
  tb.('Laha', lahaF., 2, 'none'),
  tb.('Laplace', laplaceF., 2, 'none'),
  tb.('Length-biased Feller-Pareto', lenBiasFellPareF., 3, 'none'),
  tb.('Levy', levyF., 2, 'none'),
  tb.('Libby-Novick', libNovF., 5, 'none'),
  tb.('Libby-Novick beta normal', libNovBetaNormF., 5, 'none'),
  tb.('Libby-Novick beta Weibull', libNovBetaWeiF., 5, 'silver'),  # ** (-10.88)
  tb.('Lifetime exponential', lifeExpF., 2, 'none'),
  tb.('Lindley', lindleyF., 1, 'none'),
  tb.('Lindley geometric', linGeoF., 2, 'none'),
  tb.('Lindley Poisson', linPoiF., 2, 'none'),
  tb.('Lindley Weibull', linWeiF., 3, 'none'),
  tb.('Linear exponential', lineExpF., 2, 'none'),
  tb.('Linear failure rate', lineFRF., 2, 'none'),
  tb.('Linear failure rate geometric', lineFRGeoF., 3, 'none'),
  tb.('Linear failure rate logarithmic', lineFRLogF., 3, 'none'),
  tb.('Linear log-Dagum', lineLogDagF., 2, 'none'),
  tb.('Linear logistic', lineLogisF., 1, 'none'),
  tb.('Log-beta Burr III', logBetaBurr3F., 5, 'none'),
  tb.('Log-beta generalized half-normal', logBetaGenHalfNormF., 4, 'none'),
  tb.('Log-beta generalized half-normal geometric', logBetaGenHalfNormGeoF., 5, 'none'),
  tb.('Log beta generalized Weibull', logBetaGenWeiF., 5, 'none'),
  tb.('Log-beta half-normal', logBetaHalfNormF., 3, 'none'),
  tb.('Log-beta half-normal geometric', logBetaHalfNormGeoF., 4, 'none'),
  tb.('Log-Cauchy', logCauF., 3, 'none'),
  tb.('Log-Dagum', logDagF., 3, 'none'),
  tb.('Log-extended Weibull', logExtWeiF., 3, 'none'),
  tb.('Log-exponentiated generalized half-normal', logExpGenHalfNormF., 3, 'none'),
  tb.('Log-exponentiated generalized half-normal geometric', logExpGenHalfNormGeoF., 4, 'none'),
  tb.('Log-gamma', logGamF., 2, 'none'),
  tb.('Log-gamma Burr III', logGamBurr3F., 4, 'none'),
  tb.('Log-gamma-logistic', logGamLogisF., 3, 'none'),
  tb.('Log-gamma-Pareto', logGamPareF., 4, 'none'),
  tb.('Log-generalized half-normal', logGenHalfNormF., 2, 'none'),
  tb.('Log-generalized half-normal geometric', logGenHalfNormGeoF., 3, 'none'),
  tb.('Log half-normal', logHalfNormF., 1, 'none'),
  tb.('Log half-normal geometric', logHalfNormGeoF., 2, 'none'),
  tb.('Log-Laplace', logLaplaceF., 2, 'none'),
  tb.('Log-logistic', logLogisF., 3, 'classic'),
  tb.('Log-logistic Frechet', logLogisFreF., 3, 'none'),
  tb.('Log-logistic Weibull', logLogisWeiF., 3, 'none'),
  tb.('Log-McDonald Burr XII', logMcdoBurr12F., 6, 'none'),
  tb.('Log-normal', logNormF., 2, 'classic'),
  tb.('Log-odd normal power Cauchy', logOddNormPowCauF., 3, 'none'),
  tb.('Log-Pearson III', logPear3F., 3, 'none'),
  tb.('Log-skew normal', logSkewNormF., 3, 'none'),
  tb.('Log-Weibull extended', logWeiExtF., 3, 'none'),
  tb.('Logistic', logisticF., 2, 'none'),
  tb.('Logistic Burr XII', logisBurr12F., 4, 'none'),
  tb.('Logistic Frechet', logisFreF., 3, 'none'),
  tb.('Logistic logistic', logisLogisF., 2, 'none'),
  tb.('Logistic Pareto', logisPareF., 3, 'none'),
  tb.('Logistic uniform', logisUniF., 2, 'none'),
  tb.('Logistic Weibull', logisWeiF., 3, 'none'),
  tb.('Lomax', lomaxF., 2, 'none'),
  tb.('Lomax Frechet', lomFreF., 3, 'none'),
  tb.('Lomax log-logistic', lomLogLogisF., 4, 'none'),
  tb.('Lomax Weibull', lomWeiF., 4, 'none'),
  tb.('Marshall-Olkin additive Weibull', maolAddWeiF., 5, 'none'),
  tb.('Marshall-Olkin exponential Weibull', maolExpWeiF., 4, 'none'),
  tb.('Marshall-Olkin extended Burr type XII', maolExtBurr12F., 3, 'none'),
  tb.('Marshall-Olkin extended Lomax', maolExtLomF., 2, 'none'),
  tb.('Marshall-Olkin extended uniform', maolExtUniF., 2, 'none'),
  tb.('Marshall-Olkin extended Weibull', maolExtWeiF., 3, 'none'),
  tb.('Marshall-Olkin Frechet', maolFreF., 3, 'none'),
  tb.('Marshall-Olkin generalized exponential', maolGenExpF., 3, 'none'),
  tb.('Marshall-Olkin generalized log-logistic', maolGenLogLogisF., 4, 'none'),
  tb.('Marshall-Olkin generalized Lomax', maolGenLomF., 3, 'none'),
  tb.('Marshall-Olkin generalized Weibull', maolGenWeiF., 4, 'none'),
  tb.('Marshall-Olkin kappa', maolKappaF., 4, 'none'),
  tb.('Marshall-Olkin Kumaraswamy-exponential', maolKumaExpF., 4, 'none'),
  tb.('Marshall-Olkin Kumaraswamy-Frechet', maolKumaFreF., 5, 'none'),
  tb.('Marshall-Olkin Kumaraswamy-Lomax', maolKumaLomF., 5, 'none'),
  tb.('Marshall-Olkin Kumaraswamy-Weibull', maolKumaWeiF., 5, 'none'),
  tb.('Marshall-Olkin log-logistic', maolLogLogisF., 3, 'none'),
  tb.('Marshall-Olkin logistic exponential', maolLogisExpF., 3, 'none'),
  tb.('Marshall-Olkin Nadarajah-Haghighi', maolNadaHaghiF., 3, 'none'),
  tb.('Marshall-Olkin q-Weibull', maolQWeiF., 3, 'none'),
  tb.('Marshall-Olkin reciprocal Weibull', maolRecWeiF., 3, 'none'),
  tb.('Marshall-Olkin Weibull', maolWeiF., 3, 'none'),
  tb.('Maxwell', maxwellF., 1, 'none'),
  tb.('Maxwell-Boltzmann', maxBoltzF., 1, 'none'),
  tb.('Maxwell-Juttner', maxJuttF., 1, 'none'),
  tb.('McDonald Burr-III', mcdoBurr3F., 4, 'none'),
  tb.('McDonald Burr XII', mcdoBurr12F., 6, 'silver'),  # ** (-10.84)
  tb.('McDonald-Dagum', mcdoDagF., 5, 'none'),
  tb.('McDonald exponentiated gamma', mcdoExpGamF., 4, 'none'),
  tb.('McDonald exponentiated Pareto', mcdoExpPareF., 5, 'none'),
  tb.('McDonald Frechet', mcdoFreF., 5, 'none'),
  tb.('McDonald generalized linear failure rate', mcdoGenLineFRF., 5, 'none'),
  tb.('McDonald Gompertz', mcdoGomF., 5, 'none'),
  tb.('McDonald inverse Weibull', mcdoInvWeiF., 5, 'none'),
  tb.('McDonald log-logistic', mcdoLogLogisF., 5, 'none'),
  tb.('McDonald Lomax', mcdoLomF., 5, 'none'),
  tb.('McDonald modified Burr-III', mcdoModBurr3F., 5, 'none'),
  tb.('McDonald modified Weibull', mcdoModWeiF., 6, 'none'),
  tb.('McDonald normal', mcdoNormF., 5, 'none'),
  tb.('McDonald quasi Lindley', mcdoQuaLinF., 5, 'none'),
  tb.('McDonald reciprocal Weibull', mcdoRecWeiF., 5, 'none'),
  tb.('McDonald Weibull', mcdoWeiF., 5, 'none'),
  tb.('Meridian', meriF., 2, 'none'),
  tb.('Modified beta exponential', modBetaExpF., 4, 'none'),
  tb.('Modified beta generalized linear failure rate', modBetaGenLineFRF., 6, 'none'),
  tb.('Modified beta Gompertz', modBetaGomF., 5, 'none'),
  tb.('Modified beta linear exponential', modBetaLineExpF., 5, 'none'),
  tb.('Modified beta linear failure rate', modBetaLineFRF., 5, 'none'),
  tb.('Modified beta modified Weibull', modBetaModWeiF., 6, 'none'),
  tb.('Modified beta normal', modBetaNormF., 5, 'none'),
  tb.('Modified beta Rayleigh', modBetaRayF., 4, 'none'),
  tb.('Modified beta Weibull', modBetaWeiF., 5, 'none'),
  tb.('Modified Burr-III', modBurr3F., 4, 'none'),
  tb.('Modified generalized linear failure rate', modGenLineFRF., 4, 'none'),
  tb.('Modified log-logistic', modLogLogisF., 3, 'none'),
  tb.('Modified PERT', modPertF., 4, 'none'),
  tb.('Modified Weibull', modWeiF., 3, 'none'),
  tb.('Modified Weibull extension', modWeiExtF., 3, 'bronze'),  # * (-6.05) left-decent-heavy
  tb.('Modified Weibull geometric', modWeiGeoF., 4, 'none'),
  tb.('Modified weighted Rayleigh', modWeightRayF., 3, 'none'),
  tb.('Moffat', moffatF., 2, 'none'),
  tb.('Moyal', moyalF., 2, 'none'),
  tb.('Mukherji-Islam', mukIsF., 2, 'none'),
  tb.('Murthy', murthyF., 2, 'none'),
  tb.('Mustapha type-I', mustapha1F., 2, 'none'),
  tb.('Nadarajah-Haghighi', nadaHaghiF., 2, 'none'),
  tb.('Nadarajah-Haghighi Topp-Leone exponential', nadaHaghiTopLeoExpF., 4, 'none'),
  tb.('Nadarajah-Haghighi Topp-Leone Lomax', nadaHaghiTopLeoLomF., 5, 'none'),
  tb.('Nadarajah-Kotz', nadaKotzF., 2, 'none'),
  tb.('Nakagami', nakagamiF., 3, 'none'),
  tb.('New exponentiated exponential', newExpExpF., 2, 'none'),
  tb.('New exponentiated linear failure rate', newExpLineFRF., 3, 'none'),
  tb.('New exponentiated modified Weibull', newExpModWeiF., 4, 'none'),
  tb.('New exponentiated Rayleigh', newExpRayF., 2, 'none'),
  tb.('New exponentiated Weibull', newExpWeiF., 3, 'none'),
  tb.('New lifetime', newLifeF., 4, 'none'),
  tb.('New Lindley exponential', newLinExpF., 2, 'none'),
  tb.('New modified Weibull', newModWeiF., 5, 'none'),
  tb.('New power Topp-Leone inverse Lomax', newPowTopLeoInvLomF., 3, 'none'),
  tb.('New transmuted Lindley', newTransLinF., 4, 'none'),
  tb.('New weighted Lindley', newWeightLinF., 2, 'none'),
  tb.('Noncentral chi', nonCentChiF., 2, 'none'),
  tb.('Noncentral chi-square', nonCentChiSqrF., 2, 'none'),
  tb.('Normal', normF., 2, 'none'),
  tb.('Nukiyama-Tanasawa', nukiF., 3, 'classic'),
  tb.('Odd Burr normal', oddBurrNormF., 4, 'none'),
  tb.('Odd-exponential uniform', oddExpUniF., 3, 'none'),
  tb.('Odd exponentiated half-logistic exponential', oddExpHalfLogisExpF., 3, 'none'),
  tb.('Odd generalized exponential-exponential', oddGenExpExpF., 2, 'none'),
  tb.('Odd generalized exponential-Frechet', oddGenExpFreF., 4, 'none'),
  tb.('Odd generalized exponential Gompertz', oddGenExpGomF., 4, 'none'),
  tb.('Odd generalized exponential-Gumbel', oddGenExpGumF., 4, 'none'),
  tb.('Odd generalized exponential-inverse Lomax', oddGenExpInvLomF., 4, 'none'),
  tb.('Odd generalized exponential-normal', oddGenExpNormF., 4, 'none'),
  tb.('Odd generalized exponential-Weibull', oddGenExpWeiF., 4, 'none'),
  tb.('Odd generalized Nadarajah-Haghighi exponential', oddGenNadaHaghiExpF., 3, 'none'),
  tb.('Odd generalized Nadarajah-Haghighi Lomax', oddGenNadaHaghiLomF., 4, 'none'),
  tb.('Odd generalized Nadarajah-Haghighi Rayleigh', oddGenNadaHaghiRayF., 3, 'none'),
  tb.('Odd generalized Nadarajah-Haghighi uniform', oddGenNadaHaghiUniF., 3, 'none'),
  tb.('Odd inverse Pareto exponential', oddInvPareExpF., 3, 'none'),
  tb.('Odd Lindley exponentiated Weibull', oddLinExpWeiF., 3, 'none'),
  tb.('Odd Lindley Nadarajah-Haghighi', oddLinNadaHaghiF., 3, 'none'),
  tb.('Odd Lindley-gamma', oddLinGamF., 3, 'none'),
  tb.('Odd Lindley-normal', oddLinNormF., 3, 'none'),
  tb.('Odd Lindley-Rayleigh', oddLinRayF., 2, 'none'),
  tb.('Odd Lindley-Weibull', oddLinWeiF., 3, 'none'),
  tb.('Odd log-logistic Dagum', oddLogLogisDagF., 4, 'none'),
  tb.('Odd log-logistic exponential', oddLogLogisExpF., 2, 'none'),
  tb.('Odd log-logistic exponentiated reciprocal Weibull', oddLogLogisExpRecWeiF., 4, 'none'),
  tb.('Odd log-logistic exponentiated Weibull', oddLogLogisExpWeiF., 4, 'none'),
  tb.('Odd log-logistic Gompertz', oddLogLogisGomF., 3, 'none'),
  tb.('Odd log-logistic Lindley exponential', oddLogLogisLinExpF., 3, 'none'),
  tb.('Odd log-logistic linear failure rate', oddLogLogisLineFRF., 3, 'none'),
  tb.('Odd log-logistic logarithmic normal', oddLogLogisLogNormF., 4, 'none'),
  tb.('Odd log-logistic logarithmic Weibull', oddLogLogisLogWeiF., 4, 'none'),
  tb.('Odd log-logistic modified Weibull', oddLogLogisModWeiF., 4, 'none'),
  tb.('Odd log-logistic normal', oddLogLogisNormF., 3, 'none'),
  tb.('Odd log-logistic Rayleigh', oddLogLogisRayF., 2, 'none'),
  tb.('Odd log-logistic Weibull', oddLogLogisWeiF., 3, 'none'),
  tb.('Odd Lomax-exponential', oddLomExpF., 3, 'none'),
  tb.('Odd Lomax-Lindley', oddLomLinF., 3, 'none'),
  tb.('Odd Lomax-log-logistic', oddLomLogLogisF., 4, 'none'),
  tb.('Odd Lomax-Lomax', oddLomLomF., 4, 'none'),
  tb.('Odd Lomax-Rayleigh', oddLomRayF., 3, 'none'),
  tb.('Odd Lomax-Weibull', oddLomWeiF., 4, 'none'),
  tb.('Odd moment exponential-exponential', oddMomExpExpF., 2, 'none'),
  tb.('Odd moment exponential-Frechet', oddMomExpFreF., 3, 'none'),
  tb.('Odd moment exponential-Lomax', oddMomExpLomF., 3, 'none'),
  tb.('Odd moment exponential-Weibull', oddMomExpWeiF., 3, 'none'),
  tb.('Odd power Lindley-gamma', oddPowLinGamF., 4, 'none'),
  tb.('Odd power Lindley-normal', oddPowLinNormF., 4, 'none'),
  tb.('Odd power Lindley-Weibull', oddPowLinWeiF., 4, 'none'),
  tb.('Odd Weibull Weibull', oddWeiWeiF., 4, 'none'),
  tb.('Paralogistic', paraLogisF., 1, 'none'),
  tb.('Pareto', paretoF., 3, 'none'),
  tb.('Pareto-geometric', pareGeoF., 3, 'none'),
  tb.('Pareto IV', pare4F., 3, 'none'),
  tb.('Pearson II', pear2F., 2, 'none'),
  tb.('Pearson III', pear3F., 3, 'none'),
  tb.('Pearson V', pear5F., 3, 'none'),
  tb.('Pearson VI', pear6F., 3, 'none'),
  tb.('Pearson VII', pear7F., 3, 'none'),
  tb.('Pearson XII', pear12F., 3, 'none'),
  tb.('PERT', pertF., 3, 'none'),
  tb.('Pham', phamF., 2, 'none'),
  tb.('Phani', phaniF., 5, 'none'),
  tb.('Poisson Burr X Frechet', poiBurr10FreF., 3, 'none'),
  tb.('Poisson Burr X Pareto type II', poiBurr10Pare2F., 3, 'none'),
  tb.('Poisson-generalized Poisson', poiGenGomF., 4, 'none'),
  tb.('Poisson generalized linear failure rate', poiGenLineFRF., 4, 'none'),
  tb.('Poisson-Gompertz', poiGomF., 3, 'none'),
  tb.('Poisson Lomax', poiLomF., 3, 'none'),
  tb.('Poisson-odd exponential-half logistic', poiOddExpHalfLogisF., 2, 'none'),
  tb.('Poisson-odd exponential-uniform', poiOddExpUniF., 3, 'none'),
  tb.('Poisson-odd generalized exponential-half logistic', poiOddGenExpHalfLogisF., 3, 'none'),
  tb.('Poisson-odd generalized exponential-uniform', poiOddGenExpUniF., 4, 'none'),
  tb.('Poisson Topp-Leone inverse Weibull', poiTopLeoInvWeiF., 5, 'none'),
  tb.('Poisson Topp-Leone Weibull', poiTopLeoWeiF., 4, 'none'),
  tb.('Poisson Weibull-exponentiated exponential', poiWeiExpExpF., 3, 'none'),
  tb.('Poisson Weibull-Gumbel', poiWeiGumF., 3, 'none'),
  tb.('Poisson Weibull-Lindley', poiWeiLinF., 2, 'none'),
  tb.('Poisson Weibull-log-logistic', poiWeiLogLogisF., 3, 'none'),
  tb.('Poisson Weibull-Pareto', poiWeiPareF., 3, 'none'),
  tb.('Porter-Thomas', porThoF., 1, 'none'),
  tb.('Power function', powFunF., 3, 'none'),
  tb.('Power Gompertz', powGomF., 3, 'none'),
  tb.('Power Lindley', powLinF., 2, 'none'),
  tb.('Power log-Dagum', powLogDagF., 3, 'none'),
  tb.('Power logistic', powLogisF., 2, 'none'),
  tb.('Power log-normal', powLogNormF., 3, 'none'),
  tb.('Power normal', powNormF., 3, 'none'),
  tb.('Power Topp-Leone', powTopLeoF., 2, 'none'),
  tb.('Prentice', prenticeF., 4, 'classic'),  # * (-9.44)
  tb.('Provost type gamma Weibull', proGamWeiF., 3, 'none'),
  tb.('Pseudo Weibull', psuedoWeiF., 2, 'none'),
  tb.('Quadratic hazard rate', quadHazRateF., 3, 'none'),
  tb.('Quasi Lindley', quaLinF., 2, 'none'),
  tb.('Quasi xgamma', quaXgamF., 2, 'none'),
  tb.('Quasi xgamma-geometric', quaXgamGeoF., 3, 'none'),
  tb.('Quasi xgamma-Poisson', quaXgamPoiF., 3, 'none'),
  tb.('R', rF., 3, 'none'),
  tb.('Raised cosine', raisedCosF., 3, 'none'),
  tb.('Rayleigh', rayleighF., 2, 'none'),
  tb.('Rayleigh geometric', rayGeoF., 2, 'none'),
  tb.('Rayleigh logarithmic', rayLogF., 2, 'none'),
  tb.('Rayleigh Rayleigh', rayRayF., 2, 'none'),
  tb.('Reciprocal inverse Gaussian', recInvGaussF., 2, 'none'),
  tb.('Reflected generalized beta inverse Weibull', refGenBetaInvWeiF., 5, 'none'),
  tb.('Relativistic Breit-Wigner', relBrWiF., 2, 'none'),
  tb.('Reversed Burr II', revBurr2F., 1, 'none'),
  tb.('Rice', riceF., 2, 'none'),
  tb.('Ristic-Balakrishnan Burr XII', rbb12F., 4, 'none'),
  tb.('Sarhan-Zaindin modified Weibull', sarZaiModWeiF., 3, 'none'),
  tb.('Scaled chi', scaChiF., 2, 'none'),
  tb.('Scaled chi-square', scaChiSqrF., 2, 'none'),
  tb.('Scaled inverse chi', scaInvChiF., 2, 'none'),
  tb.('Scaled inverse chi-square', scaInvChiSqrF., 2, 'none'),
  tb.('Shifted Gompertz', shGomF., 3, 'none'),
  tb.('Shifted log-logistic', shLogLogisF., 3, 'none'),
  tb.('Sichel', sichelF., 5, 'none'),
  tb.('Singh-Maddala', sinMadF., 4, 'classic'),  # ** (-10.50)
  tb.('Skew-curved-symmetric', skewCurSymF., 1, 'none'),
  tb.('Skew-generalized normal', skewGenNormF., 2, 'none'),
  tb.('Skew normal', skewNormF., 3, 'none'),
  tb.('Slymen-Lachenbruch', slyLachF., 3, 'none'),
  tb.('Stacy', stacyF., 3, 'none'),
  tb.('Stretched exponential', strechedExpF., 2, 'none'),
  tb.('Student\'s t', studentTF., 1, 'none'),
  tb.('Symmetric Prentice', symPrenticeF., 2, 'none'),
  tb.('Topp-Leone Burr-XII', topLeoBurr12F., 3, 'none'),
  tb.('Topp-Leone exponentiated exponential', topLeoExpExpF., 3, 'none'),
  tb.('Topp-Leone exponentiated log-logistic', topLeoExpLogLogisF., 3, 'none'),
  tb.('Topp-Leone generated Lindley', topLeoGenLinF., 3, 'none'),
  tb.('Topp-Leone generated Weibull', topLeoGenWeiF., 4, 'none'),
  tb.('Topp-Leone inverse Weibull', topLeoInvWeiF., 4, 'none'),
  tb.('Topp-Leone Lomax', topLeoLomF., 3, 'none'),
  tb.('Topp-Leone Nadarajah-Haghighi', topLeoNadaHaghiF., 3, 'none'),
  tb.('Topp-Leone odd log-logistic exponential', topLeoOddLogLogisExpF., 3, 'none'),
  tb.('Topp-Leone quasi Lindley', topLeoQuaLinF., 3, 'none'),
  tb.('Topp-Leone Weibull', topLeoWeiF., 3, 'none'),
  tb.('Transformed beta', transBetaF., 4, 'none'),
  tb.('Transmuted additive Weibull', transAddWeiF., 5, 'none'),
  tb.('Transmuted complementary Poisson', transCompPoiF., 3, 'none'),
  tb.('Transmuted complementary Weibull geometric', transCompWeiGeoF., 4, 'none'),
  tb.('Transmuted Dagum', transDagF., 4, 'none'),
  tb.('Transmuted exponential', transExpF., 2, 'none'),
  tb.('Transmuted exponential Lomax', transExpLomF., 4, 'none'),
  tb.('Transmuted exponentiated additive Weibull', transExpAddWeiF., 6, 'none'),
  tb.('Transmuted exponentiated exponential', transExpExpF., 3, 'none'),
  tb.('Transmuted exponentiated generalized Frechet', transExpGenFreF., 5, 'none'),
  tb.('Transmuted exponentiated generalized Pareto', transExpGenPareF., 4, 'none'),
  tb.('Transmuted exponentiated generalized Weibull', transExpGenWeiF., 4, 'none'),
  tb.('Transmuted exponentiated linear failure rate', transExpLineFRF., 4, 'none'),
  tb.('Transmuted exponentiated modified Weibull', transExpModWeiF., 5, 'none'),
  tb.('Transmuted exponentiated Pareto', transExpPareF., 3, 'none'),
  tb.('Transmuted exponentiated Rayleigh', transExpRayF., 3, 'none'),
  tb.('Transmuted exponentiated Weibull', transExpWeiF., 4, 'none'),
  tb.('Transmuted Frechet', transFreF., 3, 'none'),
  tb.('Transmuted generalized exponential', transGenExpF., 3, 'none'),
  tb.('Transmuted generalized gamma', transGenGamF., 4, 'none'),
  tb.('Transmuted generalized inverse Weibull', transGenInvWeiF., 4, 'none'),
  tb.('Transmuted generalized modified Weibull', transGenModWeiF., 5, 'none'),
  tb.('Transmuted geometric Burr X', transGeoBurr10F., 4, 'none'),
  tb.('Transmuted geometric Weibull', transGeoWeiF., 4, 'none'),
  tb.('Transmuted inverse exponential', transInvExpF., 2, 'none'),
  tb.('Transmuted inverse Rayleigh', transInvRayF., 2, 'none'),
  tb.('Transmuted inverse Weibull', transInvWeiF., 3, 'none'),
  tb.('Transmuted Janardan', transJanF., 3, 'none'),
  tb.('Transmuted Lindley', transLinF., 2, 'none'),
  tb.('Transmuted Lindley geometric', transLinGeoF., 3, 'none'),
  tb.('Transmuted linear exponential', transLineExpF., 3, 'none'),
  tb.('Transmuted linear failure rate', transLineFRF., 3, 'none'),
  tb.('Transmuted log-logistic', transLogLogisF., 3, 'none'),
  tb.('Transmuted Lomax', transLomF., 3, 'none'),
  tb.('Transmuted Marshall-Olkin Frechet', transMaolFreF., 4, 'none'),
  tb.('Transmuted modified exponential', transModExpF., 3, 'none'),
  tb.('Transmuted modified Weibull', transModWeiF., 4, 'none'),
  tb.('Transmuted odd generalized exponential-exponential', transOddGenExpExpF., 3, 'none'),
  tb.('Transmuted power', transPowF., 3, 'none'),
  tb.('Transmuted Rayleigh', transRayF., 2, 'none'),
  tb.('Transmuted reciprocal Weibull', transRecWeiF., 3, 'none'),
  tb.('Transmuted Topp-Leone Weibull', transTopLeoWeiF., 4, 'none'),
  tb.('Transmuted transmuted-exponential', transTransExpF., 3, 'none'),
  tb.('Transmuted transmuted-Lindley', transTransLinF., 3, 'none'),
  tb.('Transmuted transmuted-Rayleigh', transTransRayF., 2, 'none'),
  tb.('Transmuted transmuted-Weibull', transTransWeiF., 4, 'none'),
  tb.('Transmuted two-parameter Lindley', trans2LinF., 3, 'none'),
  tb.('Transmuted U-quadratic', transUQuadF., 3, 'none'),
  tb.('Transmuted Weibull', transWeiF., 3, 'none'),
  tb.('Transmuted Weibull geometric', transWeiGeoF., 4, 'none'),
  tb.('Transmuted Weibull Lomax', transWeiLomF., 5, 'none'),
  tb.('Transmuted Weibull Pareto', transWeiPareF., 4, 'none'),
  tb.('Transmuted Weibull Rayleigh', transWeiRayF., 4, 'none'),
  tb.('Triweight', triWeightF., 2, 'none'),
  tb.('Truncated inverted beta', truncInvtBetaF., 3, 'none'),
  tb.('Truncated inverted Kumaraswamy exponential', truncInvtKumaExpF., 3, 'none'),
  tb.('Truncated Lomax Frechet', truncLomFreF., 3, 'none'),
  tb.('Truncated Lomax linear failure rate', truncLomLineFRF., 3, 'none'),
  tb.('Truncated Lomax power function', truncLomPowFunF., 3, 'none'),
  tb.('Truncated Lomax uniform', truncLomUniF., 2, 'none'),
  tb.('Truncated Pareto', truncPareF., 3, 'none'),
  tb.('Type I half logistic Gompertz', type1HalfLogisGomF., 2, 'none'),
  tb.('Type II general exponential Lindley', type2GenExpLinF., 3, 'none'),
  tb.('Type II general exponential Lomax', type2GenExpLomF., 3, 'none'),
  tb.('Type II half logistic Weibull', type2HalfLogisWeiF., 3, 'none'),
  tb.('Type II power Topp-Leone inverse exponential', type2PowTopLeoInvExpF., 3, 'none'),
  tb.('Uniform prime', uniPrimeF., 2, 'none'),
  tb.('Unit gamma', unitGamF., 4, 'none'),
  tb.('Upper record of Lomax', upRecLomF., 3, 'none'),
  tb.('Upper record of Pareto', upRecPareF., 3, 'none'),
  tb.('Upper record of Singh-Maddala', upRecSinMadF., 4, 'none'),
  tb.('Upper record of Weibull', upRecWeiF., 3, 'none'),
  tb.('U-quadratic', uQuadF., 2, 'none'),
  tb.('Variance gamma', varGamF., 4, 'none'),
  tb.('von Mises', vonF., 2, 'none'),
  tb.('Weibull', weibullF., 2, 'classic'),
  tb.('Weibull alpha power inverted exponential', weiAlpPowInvtExpF., 4, 'none'),
  tb.('Weibull binomial', weiBiF., 4, 'none'),
  tb.('Weibull-Burr XII', weiBurr12F., 5, 'none'),
  tb.('Weibull-Dagum', weiDagF., 4, 'none'),
  tb.('Weibull-exponential', weiExpF., 3, 'none'),
  tb.('Weibull exponentiated exponential Poisson', weiExpExpPoiF., 4, 'none'),
  tb.('Weibull extended', weiExtF., 3, 'none'),
  tb.('Weibull Frechet', weiFreF., 4, 'none'),
  tb.('Weibull geometric', weiGeoF., 3, 'none'),
  tb.('Weibull Gompertz-Makeham', weiGomMakF., 5, 'none'),
  tb.('Weibull inverse Lomax', weiInvLomF., 4, 'none'),
  tb.('Weibull Lindley', weiLinF., 3, 'none'),
  tb.('Weibull log-logistic', weiLogLogisF., 4, 'none'),
  tb.('Weibull log-logistic Poisson', weiLogLogisPoiF., 4, 'none'),
  tb.('Weibull logarithmic', weiLogF., 4, 'none'),
  tb.('Weibull logistic', weiLogisF., 3, 'none'),
  tb.('Weibull Lomax', weiLomF., 4, 'none'),
  tb.('Weibull Marshall-Olkin Lindley', weiMaolLinF., 3, 'none'),
  tb.('Weibull minimum extreme value', weiMinF., 3, 'none'),
  tb.('Weibull moment exponential', weiMomExpF., 3, 'none'),
  tb.('Weibull-normal', weiNormF., 4, 'none'),
  tb.('Weibull Pareto', weiPareF., 3, 'none'),
  tb.('Weibull Poisson', weiPoiF., 3, 'none'),
  tb.('Weibull power function', weiPowFunF., 4, 'none'),
  tb.('Weibull Rayleigh', weiRayF., 3, 'none'),
  tb.('Weibull uniform', weiUniF., 3, 'none'),
  tb.('Weibull Weibull', weiWeiF., 4, 'none'),
  tb.('Weighted exponential', weightExpF., 2, 'none'),
  tb.('Weighted Feller-Pareto', weightFellPareF., 6, 'none'),
  tb.('Weighted Lindley', weightLinF., 2, 'none'),
  tb.('Weighted modified Weibull', weightModWeiF., 3, 'none'),
  tb.('Weighted Weibull', weightWeiF., 3, 'none'),
  tb.('Wilson-Hilferty', wilHilF., 2, 'none'),
  tb.('Xgamma-geometric', xgamGeoF., 2, 'none'),
  tb.('Xgamma-Poisson', xgamPoiF., 2, 'none'),
  tb.('XTG', xtgF., 3, 'none'),
  tb.('Zero truncated Poisson Burr X-Lomax', zeroTruncPoiBurr10LomF., 4, 'none'),
  tb.('Zero truncated Poisson Burr X-Weibull', zeroTruncPoiBurr10WeiF., 4, 'none'),
  tb.('Zografos-Balakrishnan Burr XII', zbb12F., 4, 'none'),
  tb.('Zografos-Balakrishnan Frechet', zbFreF., 3, 'none'),
  tb.('Zografos-Balakrishnan log-logistic', zbLogLogisF., 3, 'none'),
  tb.('2-parameter Burr X Lomax', burr10Lom2F., 2, 'none'),
  tb.('2-parameter lifetime', life2F., 2, 'none'),
  tb.('3-parameter beta Lindley', betaLin3F., 3, 'none'),
  tb.('3-parameter kappa', kappa3F., 3, 'none'),  # * (-2505.363)
  tb.('3-parameter lifetime', life3F., 3, 'none'),
  tb.('3-parameter log-hyperbolic', logHype3F., 3, 'classic'),
  tb.('3-parameter student', student3F., 3, 'none'),
  tb.('3-parameter Weibull', weibull3F., 3, 'none'),
  tb.('3-parameter Zografos-Balakrishnan Burr XII', zbBurr123F., 3, 'none'),
  tb.('4-parameter beta', beta4F., 2, 'none'),
  tb.('4-parameter beta-Dagum', betaDag4F., 4, 'none'),
  tb.('4-parameter beta Gumbel', betaGum4F., 4, 'none'),
  tb.('4-parameter beta-Singh-Maddala', betaSinMad4F., 4, 'none'),
  tb.('4-parameter kappa', kappa4F., 4, 'none'),
  tb.('4-parameter Kumaraswamy', kuma4F., 2, 'none'),
  tb.('4-parameter Topp-Leone Dagum', topLeoDag4F., 4, 'none')
) %>% dplyr::mutate(dist_No = dplyr::row_number())


## Selection of PDF == (2021-08-17) ========================
select_pdf. <- function(pdf_group = 'spot', ...) {
  ## Confirm remarks; unique(arxiv[['remark']])
  remark2 <- c('platinum', 'gold', 'silver', 'bronze', 'classic', str_c('para', 1:8), 'test', 'spot')
  if (!any(pdf_group %in% remark2)) {
    stop('Input right name....\n\n', call. = F)
  } else {
    if (!any(pdf_group %in% c(str_c('para', 1:8), 'test'))) {
      out <- arxiv %>% dplyr::filter(remark == pdf_group)
    } else if (str_detect(pdf_group, pattern = 'para')){  # Say, 'para3'
      out <- arxiv %>% dplyr::filter(para == parse_number(pdf_group))
    } else if (pdf_group == 'test') {
      out <- arxiv %>% dplyr::filter(remark %in% c('platinum', 'test'))
    }
  }
  return(out)
}  # select_pdf.('test')


## Transforming rate of Frequency into Probability == (2021-08-17) ========================
freq2dens. <- function(d, ...) {
# def.(c('x', 'y'), list(xy.coords(d)$'x', xy.coords(d)$'y'))
  d <- as_tibble(d) %>% dplyr::filter(y != 0)  # freq data often has y = 0 as count between the start-end of points
  areaRate <- 1 /area.(d)
  return(d %>% mutate(y = y *areaRate))
}


## xy-coordinate of PSD curve from Microtrac data == (2021-02-12) ========================
getXYlines. <- function(d, cook = T, conv = T, n = 200, ...) {  # 'cook' := boost data number, 'conv' := converting from freq to dens
  ## x channel and y frequency of PSD data
  Xch <- str_subset(names(d), pattern = 'class') %>% parse_number()
  Ypsd <- select(d, starts_with('class'))

  ## slice y data at every row and transform PSD with interpolation
  pullRealValues <- function(rowVec) {
    if (is.na(rowVec) %>% all) return(NA)
      not0 <- which(rowVec != 0)  # y signals
      sta <- first(not0) %>% {if (. == 1) 1 else . -1}  # leave two 0 on the both sides in y signals
      end <- last(not0) %>% {if (. == ncol(Ypsd)) ncol(Ypsd) else . +1}
      if (cook) tenta <- gamXY.(x = Xch[sta:end], y = rowVec[sta:end], boost = T, n.boost = n)  # 200 ch interpolated
      if (!cook) tenta <- tibble(x = Xch[sta:end], y = rowVec[sta:end])  # or raw data if you want
      if (conv) return(tenta %>% freq2dens.(.))
      if (!conv) return(tenta %>% as_tibble(.))
  }  # = system.time( map(Ypsd %>% t(.) %>% as_tibble (.), ~ pullRealValues(.)) )
  out <- pmap(Ypsd, ~ pullRealValues(rowVec = c(...))) %>% {if (length(.) == 1) .[[1]] else .}
  return(out)
}


## Cumulative conversion of PSD curve == (2021-08-30) ========================
getCumLines. <- function(d, cook = T, conv = T, n = 200, ext = F, ...) {  # ext means extention of every lines to min-max
  dL <- getXYlines.(d, cook, conv, n) %>% map(., cdf.)
  if (ext == TRUE) {
    ran <- dL %>% map(function(nya) range(nya[1], na.rm = T)) %>% unlist %>% range
    dL <- dL %>% map(function(nya) {
            if (min(nya[1]) > ran[1]) {
              ten_min <- tibble(x = ran[1], y = 0)
              nya <- bind_rows(ten_min, nya)
            }
            if (max(nya[1]) < ran[2]) {
              ten_max <- tibble(x = ran[2], y = 1)
              nya <- bind_rows(nya, ten_max)
            }
            return(nya)
          })
  }
  return(dL)
}  # d %>% getCumLines.(., ext = T) %>% plt.(., xlab = 'Particle Size (μm)', ylab = 'Cumulative Density', ylim = c(0, NA), legePos = c(0.8, 0.3), name = c('A-1', 'A-2'))


## Correct a PSD label and make a nested data == (2021-09-14) ========================
tidyPSD. <- function(d, ...) {
  query_lib.(hablar, tidyr)
  if (str_detect(names(d), '砥粒種|粒度|ロット番号|備考|測定日時', negate = T) %>% all) stop('Microtrac粒度分布エクセルが見つかりません．\n\n', call. = F)
  tenta <- d$粒度 %>% gsub('月', '-', .) %>% gsub('日', '', .) %>% gsub('2001/2/3', '1/2-3', .)
  tf <- skipMess.(ymd(tenta)) %>% {!is.na(.)}
  tenta[tf] <- tenta[tf] %>% str_sub(., 6, 10) %>% gsub('/', '-', .)  # 2021/6/12 --> '6/12' --> '6-12'

  d <- d %>% mutate(粒度 = tenta) %>%
       rename(type := 砥粒種, grade := 粒度, lot := ロット番号, time := 測定日時) %>% {
         if ('備考' %in% names(d)) rename(., remark := 備考) else mutate(., remark := NA_character_) %>% relocate(remark, .after = lot)
       }
  d <- d %>% unite(type:grade, sep = ' (', col = tag, na.rm = T) %>% unite(tag:lot, sep = ') ', col = tag, na.rm = T) %>% hablar::retype()

  ## make basic stack data into list
  stacks <- c('体積平均径', '個数平均径', '面積平均径m2/cm3', '比表面積', '標準偏差', 'D5', 'D10', 'D25', 'D50', 'D75', 'D90', 'D95', 'D99', 'D99.9', 'D100')
  d_stack <- d %>% select(all_of(stacks))  # Never use contains(stacks) because of its auto arrange (D5, D50, D10, ...)
  stackL <- list()
  for (i in seq(nrow(d_stack))) stackL[[i]] <- tibble(stack = stacks, value = unlist(d_stack[i, ]))

  ## make x channel and y frequency of PSD data into list
  Xch <- str_subset(names(d), pattern = 'class') %>% parse_number()
  Ypsd <- select(d, starts_with('class'))
  xyL <- list()
  for (i in seq(nrow(Ypsd))) xyL[[i]] <- tibble(x = Xch, y = unlist(Ypsd[i, ]))
  xyL0 <- map(xyL, function(dxy) {
            not0 <- which(dxy$y != 0)  # y signals
            sta <- first(not0) %>% {if (. == 1) 1 else . -1}  # leave two 0 on the both sides in y signals
            end <- last(not0) %>% {if (. == nrow(dxy)) nrow(dxy) else . +1}
            return(dxy[sta:end, ])
          })
  xyL1 <- map(xyL0, ~ gamXY.(x = .$x, y = .$y, boost = T, n.boost = 150) %>% as_tibble)  # 150 ch interpolated is very suited (between 100 - 200)

  ## create nested data
  out <- d %>% select(!contains(c(stacks, 'class'))) %>%
         mutate(stack = stackL, raw_freq = xyL0, raw_dens = map(xyL0, freq2dens.), gam_freq = xyL1, gam_dens = map(xyL1, freq2dens.))
  return(out)
}


## Quasi y after best modeling from some archive == (2021-08-10) ========================
best_model. <- function(d, xAny, ...) {  # PDF = f(x|θ) --> arYiv. = f(θ|xAny)
  if (is.na(d) %>% all) return(NULL)
  def.(c('x', 'y'), list(xy.coords(d)$x, xy.coords(d)$y))
  mdl_sel <- select_pdf.('platinum')
  mdl_res <- map(mdl_sel$model, ~.(x, y))
  mdl_best <- map_dbl(mdl_res, ~ .$deviance) %>% which.min %>% mdl_res[[.]]
  qXY <- lazy_xy.(mdl_best$formula, mdl_best$model, xAny, ext = T)
  return(qXY)
}


## Quasi y after best modeling from the special archive == (2021-08-17) ========================
fast_model. <- function(d, xAny, ...) {  # PDF = f(x|θ) --> arYiv. = f(θ|xAny)
  if (is.na(d) %>% all) return(NULL)
  def.(c('x', 'y'), list(xy.coords(d)$x, xy.coords(d)$y))
  mdl <- arxiv %>% dplyr::filter(name == 'Generalized transmuted log-logistic')  # Generalized Marshall-Olkin Kumaraswamy-exponential
  mdl_best <- map(mdl$model, ~.(x, y))[[1]]
  qXY <- lazy_xy.(mdl_best$formula, mdl_best$model, xAny, ext = T)
  return(qXY)
}


## Swing for-loop for spatula weight == (2022-05-13) ========================
swing4_spatula_weight. <- function(fit_ratio, ...) {
  ## Seak better total weight between 0.0405 ~ 0.0415 mg
  fit_ratio2 <- fit_ratio /fit_ratio[1]
  for (stepW in c(0.01, 0.001)) {
    if (stepW == 0.01) tmp <- c(0, 0.05)  # Starters for A weight
    weight <- tmp %>% {seq(.[1], .[2], by = stepW)}  # Make the range narrow gradually
    Rss <- rep(NA_real_, length(weight))
    for (i in seq_along(weight)) {
      Rss[i] <- {sum(fit_ratio2 *weight[i]) -mean(c(0.0405, 0.0415))} ^2
    }
    tmp <- interval2.(Rss, valley = T) %>% weight[.]  # whichNear.(Rss, 0, value = T)
    if (length(tmp) == 1) break
  }
  final_weight <- mean(tmp) *fit_ratio2
  return(final_weight)
}


## Swing for-loop for mixing ratio == (2021-08-29) ========================
swing4_ratio. <- function(ref_xrange, com_xrange, xy0, xy1, xy2, xy3, ...) {
  for (stepW in c(0.1, 0.01, 1e-04, 1e-05)) {
    if (stepW == 0.1) tmp <- c(0, 1)  # Starters for mixing ratio in the loop range
    Ratio <- tmp %>% {seq(.[1], .[2], by = stepW)}  # Make the range narrow gradually
    Rss <- rep(NA_real_, length(Ratio))
    for (i in seq_along(Ratio)) {  # Compare not y but area due to different number of points between ref & composit
      iMix_part <- tibble(x = xy1$x, y = Ratio[i] *xy1$y +(1 -Ratio[i]) *xy2$y) %>% .[com_xrange, ]  # xy1$x = xy2$x is the common x
      Rss[i] <- {area.(xy0[ref_xrange, ]) -area.(iMix_part)} ^2  # determined by local fitting from peak to D95
    }
    tmp <- interval2.(Rss, valley = T) %>% Ratio[.]
    if (length(tmp) == 1) break
  }
  final_ratio <- mean(tmp) %>% {c(., 1 -., 0)} %>% set_names(LETTERS[1:3])
  return(final_ratio)
}


## Swing for-loop for mixing ratio == (2021-08-30) ========================
swing4_norm2section. <- function(d, ...) {
  ## Seak the intersection between the raw PSD & the normal
  ## NOTE: Both peaks are the same. The question is how to determine the sd of the norm
  x <- d$x; y <- d$y
  peak_x <- x[which.max(y)]
  Dcal90 <- cdf.(d, p = 0.90)
  for (stepW in c(0.1, 0.01, 1e-04, 1e-05)) {
    if (stepW == 0.1) tenta <- c(0.1, delta.(x))
    q_sd <- tenta %>% {seq(.[1], .[2], by = stepW)}    #  Make the range narrow gradually
    Rss <- rep(NA_real_, length(q_sd))
    for (i in seq_along(q_sd)) {
      qx <- seq(min(x), max(x), length = 200)
      qy <- dnorm(qx, peak_x, q_sd[i])
      Rss[i] <- {y[which.max(y)] -qy[which.max(qy)]} %>% {sum(. ^2)}
    }
    tenta <- interval2.(Rss, valley = T) %>% q_sd[.]
    if (length(tenta) == 1) break
  }
  final_sd <- mean(tenta)
  final_x <- seq(peak_x -6 *final_sd, peak_x +6 *final_sd, length = length(x))
  final_y <- dnorm(final_x, peak_x, final_sd)
  up_down <- final_y[whichNear.(vec = final_x, ref = x)] %>% {y > .}  # Note: y vs the nearest fina_y dut to different x numbers
  section_x <- diff(up_down) %>% {which(. != 0)} %>% x[.] %>% {.[which(. > peak_x & . < Dcal90)]} %>% {.[which.max(.)]} %>%
               {if (length(.) == 0) peak_x else .}  # In case of no intersection in the right tail
  return(section_x)
}


## 3 paramters ratio == (2021-09-01) ========================
ratio3. <- function(ref_xrange, com_xrange, xy0, xy1, xy2, xy3, ...) {
  f <- function(par) {
    al <- par[1]
    be <- par[2]
    ga <- par[3]
    tmp <- tibble(x = xy1$x, y = al *xy1$y +be *xy2$y +ga *{xy3$y %||% 0})

    target_area <- area.(xy0[ref_xrange, ])
  # target_cap <- sum(xy0$y[(which.max(xy0$y) -15) : (which.max(xy0$y) +15)])  # area.(xy0[(which.max(xy0$y)-15) : (which.max(xy0$y)+15), ])
    target_d50 <- cdf.(xy0, p = 0.5)

    i_area <- area.(tmp[com_xrange, ])
  # i_cap <- sum(tmp$y[(which.max(tmp$y) -15) : (which.max(tmp$y) +15)]) # area.(tmp[(which.max(tmp$y) -15) : (which.max(tmp$y) +15), ])
    i_d50 <- cdf.(tmp, p = 0.5)

    ## the last term makes the sum of ratio ~ 1. the evel term, (target_cap -i_cap) ^2, makes a right shift of the peak like 0% --> 5%
    out <- (target_area -i_area) ^2 +(target_d50 -i_d50) ^2 +(1 -area.(tmp)) ^2
    return(out)
  }
  ## (1,0,0)(al,be,ga)>=0, (0,1,0)(al,be,ga)>=0, (0,0,1)(al,be,ga)>=0, (-1,-1,-1)(al,be,ga)>=-1
  tmp <- constrOptim(c(0.33, 0.33, 0.33), f, grad = NULL, ui = rbind(c(1, 0, 0), c(0, 1, 0), c(0, 0, 1), c(-1, -1, -1)), ci = c(0, 0, 0, -1))
  ratio <- tmp$par %>% set_names(LETTERS[1:3])
# sum(ratio); print(ratio)
  return(ratio)
}


## Residual Sum of Square: local optimization for right tail == (2022-05-13) ========================
rssFit. <- function(xy0, xy1, xy2, xy3, ...) {  # xy1,2,3 are not raw or gam data but estimated p(θ|x)                                                                                                                                                                                                                                  
  ## Marking x as index of fitting
  percentileX <- function(percent) cdf.(xy0, p = percent)
  peak_x <- xy0$x[which.max(xy0$y)]  # Near; peak_x ~ percentileX(0.35)                                                  
# PERT_x <- (percentileX(0.1) +percentileX(0.99) +4 *peak_x) /6
# norm_x <- swing4_norm2section.(xy0)

  ## Concerned x range to make the criteria of the goodness of fitting
  ref_xrange <- whichNear.(vec = xy0$x, ref = c(peak_x, percentileX(0.975))) %>% {.[1] : .[2]}  # ref = c(peak_x, percentileX(0.95))
  com_xrange <- whichNear.(vec = xy1$x, ref = c(peak_x, percentileX(0.975))) %>% {.[1] : .[2]}  # xy1$x = xy2$x is the common x
  ref_xrange2 <- whichNear.(vec = xy0$x, ref = c(percentileX(0.80), percentileX(0.975))) %>% {.[1] : .[2]}  # for local mismatch 
  com_xrange2 <- whichNear.(vec = xy1$x, ref = c(percentileX(0.80), percentileX(0.975))) %>% {.[1] : .[2]}

  ## Mixing ratio determined by local fitting from peak to D95
  if (is.null(xy3)) {
    mixRatio <- swing4_ratio.(ref_xrange, com_xrange, xy0, xy1, xy2, xy3)
  } else {
    mixRatio <- ratio3.(ref_xrange, com_xrange, xy0, xy1, xy2, xy3)
  }
  xy123 <- tibble(x = xy1$x, y = mixRatio[1] *xy1$y +mixRatio[2] *xy2$y +mixRatio[3] *(xy3$y %||% 0))

  ## Mismatch evaluation
  index1 <- xy123$x[which.max(xy123$y)] %>% {. /peak_x -1}  # 1st index is the peak mismatch, oriented to mixed PSD accuracy
  index2 <- area.(xy123[com_xrange2, ]) -area.(xy0[ref_xrange2, ])  # 2nd is the local area mismatch, oriented to slicing capability

  return(list(ratio = mixRatio, peak_mismatch = index1, tail_mismatch = index2))
}


## Vital point on the PSD == (2021-08-30) ========================
vital_psd. <- function(dt_psd, ...) {
  def.(c('x', 'y'), list(dt_psd[[1]], dt_psd[[2]]))
  d1_999 <- cdf.(dt_psd, p = c(0.001, 0.999))
  peak_x <- x[which.max(y)]
  ## Seak the intersection between the raw PSD & the normal whose peak is agreed with the raw PSD
  for (stepW in c(0.1, 0.01, 1e-04, 1e-05)) {
    if (stepW == 0.1) tenta <- c(0.1, delta.(d1_999))
    q_sd <- tenta %>% {seq(.[1], .[2], by = stepW)}  # Make the range narrow gradually
    Rss <- rep(NA, length(q_sd))
    for (i in seq_along(q_sd)) {
      qx <- seq(min(x), max(x), length = 200)
      qy <- dnorm(qx, peak_x, q_sd[i])
      Rss[i] <- {y[which.max(y)] -qy[which.max(qy)]} %>% {sum(. ^2)}
    }
    tenta <- interval2.(Rss, valley = T) %>% q_sd[.]
    if (length(tenta) == 1) break
  }
  final_sd <- mean(tenta)
  final_x <- seq(peak_x -6 *final_sd, peak_x +6 *final_sd, length = nrow(dt_psd))
  final_y <- dnorm(final_x, peak_x, final_sd)

  up_down <- final_y[whichNear.(vec = final_x, ref = x)] %>% {y > .}  # Note: y vs the nearest fina_y; this is because of different x numbers
  section_x <- diff(up_down) %>% {which(. != 0)} %>% x[.] %>% {.[which(. > peak_x & . < max(final_x))]} %>% {.[which.max(.)]}
  return(section_x)
}


## Any model plot for a single PSD data == (2020-08-17) ========================
demo_any_model_plot <- function(...) {
  dt_psd <- pp.()
  dt_arxiv <- arxiv %>% dplyr::filter(remark %in% 'gold')
  dt <- getXYlines.(dt_psd, cook = T, n = 150)[[1]]
  def.(c('x', 'y'), list(xy.coords(dt)$x, xy.coords(dt)$y))
  mdl_eval <- map(dt_arxiv$model, ~.(x, y)) %>% map.(~ dev.(.))
# mdl_ranking <- order(mdl_eval, decreasing = T) %>% mdl_sel$'name'[.]  # Check out the names
  qyL <- map2(dt_arxiv$y, dt_arxiv$model, ~ .x(mdl = .y(x, y), x = x))
  xyL <- xyL2.(x, qyL) %>% set_names(dt_arxiv$name)
  save2.('二峰性_W')
  plt.(xyL[order(mdl_eval)[1:9]], ylim = c(0, NA), xlab = 'Particle Size (μm)', legePos = c(0.28,0.99), PDF = F, lwd = 1.5)
# lines(xyL[[order(mdl_eval)[20]]], col = 'palegreen2', lwd = 1.5)  # The best fitting
  points(getXYlines.(dt_psd, cook = T, n = 100)[[1]], col = 'grey35', lwd = 0.8, cex = 0.5)
  dev.off()
}


## Any model estimation for several data == (2021-08-17) ========================
demo_any_model_ranking <- function(arxiv_sel, ...) {
  query_lib.(beepr)
  psd2 <- getData.(path = '~/Library/Mobile Documents/com~apple~CloudDocs/R_script/tuningPSD/test4newPDF.xlsx')$sample
  obj_names <- pmap_chr(psd2[1:2], ~ str_flatten(c(...), collapse = '::'))
  tenta <- rep(NA_real_, nrow(psd2)) %>% set_names(obj_names) %>% bind_rows() %>% .[rep(1, length(arxiv_sel[['name']])), ]
  for (i in seq_along(tenta)) {
    d <- getXYlines.(psd2[i, ], cook = T)
    tenta[i] <- arxiv_sel$model %>% map(~.(d$x, d$y)) %>% map_dbl(~ .$dev)
    cat(str_c('    i = ', i, ' (/', nrow(psd2), ')  finished: ', now(), '\n'))
    if (i %% 10 == 0) beepr::beep(2)
    if (i == nrow(psd2)) beepr::beep(3)
  }
  res_value <- bind_cols(name = arxiv_sel$name, para = arxiv_sel$para, tenta)  # value fitting result; write.(res_value)

  ## Remake tiddy data
  d_res <- res_value %>% pivot_longer(-c(name, para), names_to = 'sample', values_to = 'dev')
  ## Total, average, sd, NA number
  stat_res <- function(d_res) {
    d_res %>% group_by(name) %>%
    summarise(total = sum.(dev), avg = mean.(dev), sd = sd.(dev), na = sum(is.na(dev)), para = mean(para)) %>% arrange(total)
  }
  eval1 <- stat_res(d_res)
# write.(eval1)
  ## NA
  eval2 <- eval1 %>% arrange(na) %>% dplyr::filter(na > 0) %>% {if (nrow(.) == 0) 'None' else .}
  ## Print the final evaluation
  cat('\n  Total deviance without NA...\n\n'); print(eval1)
  cat('\n  Count NA...\n\n'); print(eval2)
  write2.(list(value = res_value %>% select(!para), ranking = eval1), str_c(today2.(), '_psdResult_trial'))
}

