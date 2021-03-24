## ٩(´ᗜ`)و (´-`) .｡oO (Distribution inference in the special case when you know x & y position in the PDF coordinate system, 2019-01-29)
## https://en.wikipedia.org/wiki/List_of_probability_distributions
## https://www.vosesoftware.com/riskwiki/Distributionsbycategory.php
## https://www.trifields.jp/r-cran-task-view-probability-distributions-693
## https://github.com/cran/propagate/blob/master/R/distr-densities.R
## https://docs.scipy.org/doc/scipy/reference/tutorial/stats/continuous.html#continuous-random-variables
## https://www.wikizero.com/en/List_of_probability_distributions
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
## https://threeplusone.com/pubs/FieldGuide.pdf


## Parameter archive == (2020-02-08) ================================================================================================
## biWeight bhp cauchy epa gumbel halfCauchy Half-normal hohlfeld hyperSecan invExp invGauss invHalfNorm invRay laha laplace levy
## logGenHalfNorm logHalfNormGeo logis logLaplace logNorm meri moyal norm rayleigh recInvGauss relBrWi rice triWeight uniPrime (arcsine)
pLL_nu_lam <- list( list(nu=0.1,lam=1), list(nu=1,lam=10), list(nu=0.1,lam=10), list(nu=10,lam=1), list(nu=10,lam=10), list(nu=0,lam=10),
                    list(nu=0.1,lam=0.1), list(nu=1,lam=1), list(nu=100,lam=1) )

## asymLaplace birnSaun centBeta centLogis davis expPow expModGauss3 expExp expGam expGum fatigue Fisher-Tippett frechet gamExp gamGum
## gamNorm gev genGum genLogis genLogGam genNorm1 genNorm2 genPar halfExpPow halfPear7 hyperbola invNakagami logCauchy logExtWei
## logExpGenHalfNorm logGamLogis logGenHalfNormGeo logLogis logPear3 logSkewNorm logWeiExt nakagami oddLinNorm oddLogLogisNorm pareto
## pear3 pear5 pear7 poiWeiGum powFun powLogNorm powNorm r raisedCos shGom shLogLogis skewNorm skewLog weiMin student3 weibull3
## (gammaLogNorm)
pLL_nu_lam_al <- list( list(nu=0.01,lam=1,al=1), list(nu=0.01,lam=100,al=1), list(nu=0.01,lam=100,al=1), list(nu=0.1,lam=1000,al=1),
                       list(nu=1,lam=10,al=1), list(nu=1,lam=10,al=0.1), list(nu=0.1,lam=0.1,al=0.1), list(nu=0.1,lam=1,al=1),
                       list(nu=1,lam=1,al=1), list(nu=10,lam=1,al=10), list(nu=10,lam=10,al=1),list(nu=10,lam=10,al=0.01) )

## amoroso anoGenTransNorm baldNicho beta betaCau betaExp betaGum betaHypeSecant betaLogNorm betaLogWei betaLogis betaMoy betaNaka
## betaNorm betaPrime champer expGauss4 expGenGum expWei genBurr genPear7 genTransNorm genWei gumbel1 gumbel2 halfGenPear7 halphen jsu
## kumaInvGau kumaGum kumaNorm logExpGenHalfNormGeo logGamBurr3 oddBurrNorm oddGenExpGum oodGenExpNorm oddLogLogisLogNorm oddPowLinNorm
## prentice sinMad unitGam weimal weiNorm kappa4 betaGam4
pLL_nu_lam_al_be <- list( list(nu=1,lam=1,al=1,be=0.1), list(nu=1,lam=10,al=1,be=1), list(nu=0.1,lam=1,al=1,be=0.1),
                          list(nu=10,lam=10,al=1,be=1), list(nu=1,lam=0.1,al=0.1,be=0.1), list(nu=1,lam=0.1,al=1,be=0.1),
                          list(nu=0.1,lam=0.1,al=1,be=0.1), list(nu=0.01,lam=0.1,al=0.1,be=1), list(nu=0,lam=1,al=1,be=1),
                          list(nu=0.01,lam=1,al=1,be=1e3), list(nu=0.01,lam=1,al=1,be=1e4), list(nu=0.1,lam=1,al=1,be=1e3),
                          list(nu=0.01,lam=1,al=1,be=10), list(nu=0.01,lam=1e3,al=0.1,be=0.1), list(nu=0.1,lam=100,al=10,be=1),
                          list(nu=0.01,lam=100,al=1,be=10), list(nu=0.01,lam=100,al=10,be=10), list(nu=0.1,lam=1,al=1,be=1),
                          list(nu=10,lam=1,al=1,be=1), list(nu=100,lam=1,al=1,be=1), list(nu=100,lam=-100,al=-10,be=-10),
                          list(nu=-10,lam=10,al=10,be=0.1), list(nu=10,lam=1,al=1,be=1000), list(nu=10,lam=1,al=1,be=0.1) )

## betaFishTip betaGenWei betaMaolNorm betaOddLogLogisNorm expGenBeta extWeiGum extWeiNorm fellPare genAlpBetaSkewNorm genBeta genBetaPrime
## genOddWeiGenWei kumaOddLogLogisGum kumaOddLogLogisNorm libNov libNovBetaNorm logBetaBurr3 logBetaGenWei mcdoNorm modBetaNorm sichel
pLL_nu_lam_al_be_ga <- list ( list(nu=0.1,lam=1,al=1,be=1,ga=1), list(nu=0.1,lam=10,al=1,be=1,ga=10), list(nu=0.01,lam=10,al=1,be=1,ga=1),
                              list(nu=1,lam=1,al=1,be=1,ga=1), list(nu=0.1,lam=10,al=1,be=1,ga=1), list(nu=0.1,lam=0.1,al=0.1,be=0.1,ga=0.1),
                              list(nu=1,lam=0.1,al=0.1,be=0.1,ga=0.1), list(nu=0.1,lam=0.01,al=0.001,be=0.001,ga=0.01),
                              list(nu=-100,lam=10,al=10,be=0.1,ga=1), list(nu=1,lam=1,al=1,be=1,ga=0.1), list(nu=-1,lam=10,al=1,be=1,ga=10),
                              list(nu=0,lam=100,al=1,be=1,ga=1), list(nu=-1.8,lam=1.2,al=26,be=0,ga=5.6),
                              list(nu=0.1,lam=1,al=10,be=0,ga=10), list(nu=-10,lam=100,al=1,be=0.01,ga=0.1),
                              list(nu=1,lam=1000,al=1,be=1,ga=10), list(nu=10,lam=10000,al=1,be=1,ga=100),
                              list(nu=1,lam=1000,al=1,be=1,ga=1), list(nu=1,lam=1,al=0.01,be=0.1,ga=0.1),
                              list(nu=10,lam=1,al=1,be=0.01,ga=0.1), list(nu=10,lam=1,al=1,be=0.01,ga=0.001),
                              list(nu=0.1,lam=10,al=0.1,be=0.01,ga=0.001), list(nu=0.001,lam=0.001,al=0.1,be=0.01,ga=1),
                              list(nu=1,lam=1,al=0.01,be=0.01,ga=0.01), list(nu=1,lam=1,al=0.01,be=0.01,ga=0.1),
                              list(nu=1,lam=1,al=1,be=0.01,ga=0.1), list(nu=10,lam=100,al=10,be=1,ga=0.1),
                              list(nu=1,lam=100,al=10,be=10,ga=0.1), list(nu=-10,lam=10,al=100,be=100,ga=1) )

## genAddWeiGum genSichel genTransLogLogis2 logMcdoBurr12 weightFellPare
pLL_nu_lam_al_be_ga_de <- list( list(nu=0.1,lam=1,al=1,be=1,ga=1,de=1), list(nu=0.1,lam=10,al=1,be=1,ga=10,de=1),
                                list(nu=0.01,lam=10,al=1,be=1,ga=1,de=1), list(nu=1,lam=1,al=1,be=1,ga=1,de=1),
                                list(nu=0.1,lam=10,al=1,be=1,ga=1,de=1), list(nu=0.1,lam=0.1,al=0.1,be=0.1,ga=0.1,de=1),
                                list(nu=1,lam=0.1,al=0.1,be=0.1,ga=0.1,de=1), list(nu=0.1,lam=0.01,al=0.001,be=0.001,ga=0.01,de=1),
                                list(nu=-100,lam=10,al=10,be=0.1,ga=1,de=1), list(nu=1,lam=1,al=1,be=1,ga=0.1),
                                list(nu=-1,lam=10,al=1,be=1,ga=10,de=1), list(nu=0,lam=100,al=1,be=1,ga=1,de=1),
                                list(nu=0.01,lam=0.1,al=-1,be=0.01,ga=1,de=0.1), list(nu=1,lam=1,al=-0.01,be=0.01,ga=0.1,de=1),
                                list(nu=1,lam=10,al=1,be=0.1,ga=1,de=1), list(nu=-1,lam=10,al=1,be=0.1,ga=1,de=1),
                                list(nu=1,lam=10,al=1,be=0.1,ga=10,de=1), list(nu=10,lam=10,al=1,be=0.01,ga=10,de=1),
                                list(nu=1,lam=10,al=1,be=1,ga=1,de=10), list(nu=0.1,lam=10,al=100,be=-1,ga=1,de=100),
                                list(nu=0.1,lam=0.1,al=10,be=0.01,ga=1,de=10), list(nu=-10,lam=100,al=10,be=1,ga=10,de=-1) )

## von
pLL_nu_al <- list( list(nu=1,al=1), list(nu=0.1,al=0.1) )

## logBetaHalfNorm logGam logHype3
pLL_nu_al_be <- list( list(nu=1,al=10,be=10), list(nu=-1,al=10,be=10), list(nu=0,al=10,be=10), list(nu=0,al=10,be=1),
                      list(nu=-1,al=0.1,be=0), list(nu=0.1,al=1,be=pi), list(nu=1,al=1,be=pi), list(nu=10,al=1,be=pi),
                      list(nu=100,al=1,be=pi), list(nu=10, al=100,be=10) )
 
## varGam
pLL_nu_al_be_ga <- list( list(nu=0,al=1,be=1,ga=1), list(nu=10,al=0.1,be=10,ga=1) )

## halfLogisExp invExp invtExp lindley maxwell porTho
pLL_lam <- list( list(lam=0.1), list(lam=1), list(lam=10), list(lam=-1), list(lam=0.01), list(lam=0), list(lam=100) )

## alpPowExp alpPowInvExp anoGenTransExp compoRay expExt expGeo expHalfCau expHalfNorm expLin expLom expMax expPoiLin gamma gamGeo
## genExp genExpInvExp genExpInvRay genHalfNorm genInvExp genInvtExp genLin2 genModExp gompertz halfLogisNadaHaghi halfLogisWei
## invGam invLom invRayPoi invWei linGeo linPoi logisLogis logisUni lomax moffat mukIs mustapha1 nadaHaghi newLinExp newWeightLin
## nonCentChi nonCentChiSqr oddGenExpExp oddLogLogisExp oddMomExpExp pear2 poiWeiLin powLin psuedoWei quaLin rayRay rosin scaChi
## scaChiSqr scaInvChi scaInvChiSqr strechedExp symPrentice transExp transInvRay transLin transRay transTransRay truncLomUni weibull
## weightExp weightLin wilHil burr10Lom2
pLL_lam_al <- list( list(lam=0.1,al=0.1), list(lam=1,al=1), list(lam=1,al=10), list(lam=100,al=10), list(lam=10,al=1),
                    list(lam=0.1,al=10), list(lam=0.01,al=0.1), list(lam=1,al=0.1), list(lam=-1,al=0.01) )

## adjLogLogisGenExp alpPowInvWei alpLogTransWei benini betaExpExp betaGenRay betaHalfCau betaMax betaHalfNorm betaInvtExp betaKappa betaP
## betaLin birnSaunTStu burr3 burr10Fre burr10Lom burr10NadaHaghi burr12 burr12Fre dagumF expExpGeo expExpRay expNadaHaghi expExpLogis

## expExpPoi expFre expGenHalfNorm expGenPowExp expGom expInvExpPoi ExpInvRayPoi expLinPoi expLogLogis expLom expNaka expPare expPowFun
## expRecWei expScaChiSqr expTransExp expTransRay expWeiExp extExpPow extGom extLin extOddWeiLin extWei gamExpExp gamGom gamHalfCau
## gamLogLogis gamNadaHaghi gamPare gamWei genDag genExpGeo genExpPoi genGam genGom genHalfNormExp genHalfNormGeo genHalfNormLog
## genHalfNormPoi genInvGauss genLin1 genOddGenExpInvRay genOddLogLogisRecRay genPowLin genPowWei genTransExp genTransModExp genTruncLogGam
## gomLenBiasExp genInvWei gomGeo gomLog gomPoi gomPowSeri harrisExtExp halfLogisGenWei kF kappa kumaBurr10 kumaExp kumaGenExpExp
## kumaHalfCau kumaHalfLogis kumaHalfNorm kumaInvExp kumaInvRay kumaLin kumaMax lenBiasFellPare logOddNormPowCau logisFre logisPare
## linWei logDag logLogisFre logisWei lomaxFre maolExtWei maolFre maolGenExp maolLogLogis maolLogisExp maolGenLom maolNadaHaghi
## maolRecWei maolWei modWei modWeiExt nuki oddExpHalfLogisExp oddGenNadaHaghiExp oddGenNadaHaghiRay oddInvPareExp oddLinNadaHaghi
## oddLogLogisGom oddLogLogisLinExp oddLomExp oddLomRay oddMomExpFre oddMomExpLom oddMomExpWei oddLogLogisExpRecWei oddLinWei
## oddWeiWeip pareGeo pare4 pear6 poiGom poiLom poiOddExpUni poiWeiExpEx poiWeiLogLogis proGamWei quaXgamPoi stacy topLeoExpExp
## topLeoExpLogLogis topLeoLom topLeoNadaHaghi topLeoOddLogLogisExp topLeoGenLin topLeoWei transExpExp transExpRay transFre
## transGenExp transInvWei transLinGeo transLineFR transLogLogis transLom transModExp transOddGenExpExp transPow transRecWei
## transTransExp transTransLin truncInvtKumaExp truncLomFre type2GenExpLin type2GenExpLom type2HalfLogisWei weiExp weiExt weiGeo
##  weiLin weiLogis weiMaolLin weiMomExpweightModWei weightWei xtg zbFre zbLogLogis kappa3
pLL_lam_al_be <- list( list(lam=1,al=1,be=1), list(lam=100,al=10,be=1), list(lam=0.1,al=0.1,be=0.1), list(lam=10,al=1,be=1),
                       list(lam=10,al=0.1,be=0.1), list(lam=1,al=1,be=100), list(lam=10,al=0.1,be=1), list(lam=1,al=10,be=1),
                       list(lam=100,al=1,be=0.1), list(lam=0.1,al=10,be=1), list(lam=1,al=10,be=0.1), list(lam=0.1,al=0.1,be=1),
                       list(lam=0.1,al=0.1,be=10), list(lam=100,al=-1,be=-1), list(lam=10,al=100,be=1), list(lam=-1,al=0.1,be=0.1),
                       list(lam=100,al=0.01,be=0.01), list(lam=1,al=1.0e-8,be=1) )

## anoGenTransFre betaCompoRay betaExpGam betaExpGeo betaExpLin betaExpLog betaExpMukIs betaExpPow betaFisk betaFre betaGenExp
## betaGenHalfNorm betaGenInvtExp betaGenPare betaGom betaHalfNormGeo betaInvWei betaLinGeo betaLinPoi betaLogLogis betaLom betaNadaHaghi
## betaOddLogLogisExp betaPare betaPow betaRecWei betaWei betaWeightExp burr3MaolLin burr12Fre bw comGeoTransWei expModBurr3 expExpGom
## expGenBurr10 expGenFre expGenGam expGenInvWei expGenLom expGenMaolExp expGenPowFun expGenQuaLin expGenTopLeoExp expGenWei expGumExp
## expHalfLogisFre expHalfLogisGenHalfNorm expHalfLogisLogLogis expInvWeiPoi expKumaExp expModWeiExt expNadaHaghiPoi expPare4
## expTransExpExp expTransExpRay expTransGenRay expTransLineFR expTransWei expWeiGeo expWeiPare expWeiPoi expWeiRay extExpWei extWeiExp
## extWeiLin gamExtFre genBeta2 gamBurr3 genBeta2 genExpFre genExpGum2 genExpInvWei genGomGeo genGomLog genGomPoi genHalfNormBu
## genHalfNormGeo genInvWeiGeo genK genModWei genOddBurr3Logis genOddWeiGenWei genTransExpModExp genTransLin genTransPoiWei gomBi
## gomLom gumLom kumaCompoRay kumaDag kumaErlTruncExp kumaExpInvExp kumaExpInvRay kumaFre kumaFlexWeiExt kumaGam kumaGenHalfNorm
## kumaGenPare kumaGenPowExp kumaGom kumaGum2 kumaInvExpPoi kumaInvRayPoi kumaInvWei kumaLogLogis kumaLom kumaMaolExp kumaMaolRay
## kumaNaka kumaPare kumaPow kumaRecWei kumaTransExp kumaTransModExp kumaTransRay logBetaHalfNormGeo logGamPare logisBurr12 lomLogLogis
## lomWei maolGenLogLogis maolGenWei maolKappa maolKumaExp modBetaExp nadaHaghiTopLeoExp newLife newTransLin oodGenExpFre oddGenExpGom
## oddGenExpInvLogis oddGenNadaHaghiLom oddLogLogisDag oddLogLogisExpWei oddLogLogisLogWei oddLomLogLogis oddLomLom oddLomWei
## oddPowLinGam oddPowLinWei poiGenGom poiOddGenExpUni poiTopLeoWei topLeoGenWei topLeoInvWei transCompWeiGeo transDag transExpGenPare
## transExpGenWei transExpLineFR transExpLom transExpWei transGenGam transGenInvWei transGeoBurr10 transGeoWei transTopLeoWei
## transTransWei transWeiGeo transWeiPare weiAlpPowInvtExp weiBi weiDag weiExpExpPoi weiFre weiInvLom weiLogLogis weiLogLogisPoi weiLog
## weiLom weiWei rbb12 zeroTruncPoiBurr10Lom zeroTruncPoiBurr10Wei betaDag4 betaSinMad4 topLeoDag4
pLL_lam_al_be_ga <- list( list(lam=1,al=1,be=1,ga=1), list(lam=1,al=10,be=1,ga=0.1), list(lam=100,al=10,be=10,ga=-1),
                          list(lam=1,al=1,be=-10,ga=-10), list(lam=1,al=-10,be=1,ga=-10), list(lam=1,al=0.1,be=10,ga=1),
                          list(lam=100,al=10,be=1,ga=100), list(lam=10,al=-1,be=-1,ga=1), list(lam=10,al=1,be=10,ga=10),
                          list(lam=10,al=0.1,be=100,ga=10), list(lam=-1,al=0.1,be=-1,ga=1), list(lam=100,al=-1,be=-1,ga=-1),
                          list(lam=-1,al=1,be=0.1,ga=0.01), list(lam=10,al=1,be=1,ga=1), list(lam=100,al=0.01,be=0.01,ga=1),
                          list(lam=10,al=1,be=1,ga=1), list(lam=100,al=0.1,be=-1,ga=-0.1), list(lam=-10,al=1,be=-0.1,ga=0.1),
                          list(lam=100,al=100,be=-0.01,ga=1), list(lam=1,al=10,be=1,ga=-1), list(lam=0.001,al=0.01,be=0.01,ga=0.01) )

## betaBurr3 betaBurr12 betaDag betaExpFre betaExpGom betaExpLom betaExpPare betaExpWei betaGenHalfNormGeo betaGenInvWei betaGenMaolExp 
## betaGenPowLin betaGenPowWei betaGomMak betaKumaExp betaKumaExp2 betaLinPoi betaMaolWei betaOddLogLogisLom betaOddLogLogisWei
## betaSinMad betaTransFre betaTransPare betaTransPow betaTruncPare betaWeiGeo betaWeiLog betaWeiPoi betaWeightWei betaXTG burr12NegaBi
## doubleTruncDag expExpExpWei expBurr12Poi expGenExtGom expGenMaolLom expGenMaolWei expGenTopLeoLom expGenTopLeoQuaLin expGenTopLeoWei
## expKumaDag expTransExpLineFR expTransExpWei expTransModWei expWeiFre expWeiLogLogis expWeiWei extBirnSaun extWeiFre extWeiPare extWeiWei
## fiveParLin freTopLeoLom gamDag genGomBi genOddBurr3Lom genOddBurr3Wei genMaolKumaExp genTransBurr10 genTransLogLogis genTransWei
## kumaExpWei kumaGenExpGum2 kumaGenGam kumaGenKappa kumaGenPowWei kumaGomMak kumaInvWeiPoi kumaMaolFre kumaMaolLogLogis kumaMaolLom
## kumaMaolWei kumaOddLogLogisWei kumaPare4 kumaTransExpExp kumaTransExpModExp kumaTransExpRay kumaTransLineFR kumaTransLogLogis
## kumaTransPow kumaTransWei kumaWeiGeo maolKumaLom maolKumaWei mcdoDag mcdoExpPare mcdoFre mcdoGom mcdoInvWei mcdoLogLogis mcdoLom
## mcdoQuaLin mcdoRecWei mcdoWei modBetaGom modBetaWei nadaHaghiTopLeoLom poiTopLeoInvWei transExpGenFre transExpModWei transGenModWei
## transWeiLom
pLL_lam_al_be_ga_de <- list( list(lam=1,al=1,be=1,ga=1,de=1), list(lam=1,al=10,be=1,ga=0.1,de=1), list(lam=100,al=10,be=10,ga=-1,de=1),
                             list(lam=1,al=0.01,be=1,ga=1,de=1), list(lam=1,al=0.1,be=1,ga=10,de=10), list(lam=10,al=-1,be=10,ga=-1,de=1),
                             list(lam=1,al=1,be=10,ga=10,de=10), list(lam=1,al=1,be=20,ga=10,de=-1), list(lam=100,al=1,be=1,ga=1,de=1),
                             list(lam=10,al=1,be=-10,ga=10,de=1), list(lam=0.1,al=10,be=0.1,ga=10,de=1),
                             list(lam=100,al=1,be=10,ga=10,de=0.01), list(lam=100,al=1,be=1,ga=1,de=-1),
                             list(lam=1,al=1,be=1,ga=1,de=0.1), list(lam=10,al=1,be=1,ga=10,de=0.1), list(lam=10,al=1,be=1,ga=1,de=0.01),
                             list(lam=10,al=1,be=1,ga=1,de=0.1), list(lam=0.1,al=0.1,be=0.1,ga=0.1,de=0.1),
                             list(lam=0.1,al=0.1,be=0.1,ga=0.1,de=1), list(lam=0.01,al=0.001,be=0.001,ga=0.01,de=0.1),
                             list(lam=10,al=10,be=0.1,ga=1,de=-100), list(lam=1,al=1,be=1,ga=0.1,de=1), list(lam=10,al=1,be=1,ga=10,de=-1),
                             list(lam=100,al=1,be=1,ga=1,de=0), list(lam=-1,al=0.01,be=1,ga=1,de=0.001),
                             list(lam=1,al=10,be=0,ga=10,de=0.1), list(lam=10,al=1,be=-1,ga=-1,de=1), list(lam=-100,al=1,be=1,ga=-1,de=-1),
                             list(lam=10,al=1,be=0.001,ga=10,de=-0.1), list(lam=-1,al=0.1,be=100,ga=0.1,de=-0.0001),
                             list(lam=-0.1,al=0.1,be=10,ga=0.1,de=0.001), list(lam=-10,al=0.01,be=0,ga=0,de=1),
                             list(lam=-1,al=0.1,be=1,ga=1,de=0.0001), list(lam=-10,al=0.01,be=1,ga=1,de=0.001),
                             list(lam=-10,al=100,be=1,ga=0.1,de=-0.0001), list(lam=0.01,al=-1,be=0.1,ga=-0.1,de=0.01),
                             list(lam=0.001,al=-1,be=1,ga=-10,de=0.1), list(lam=-1,al=1,be=1,ga=0.1,de=-0.00001),
                             list(lam=-1,al=0.1,be=1,ga=-1,de=0.001), list(lam=10,al=100,be=-1,ga=100,de=1),
                             list(lam=100,al=100,be=1,ga=100,de=-1), list(lam=1,al=10,be=1,ga=-0.001,de=1),
                             list(lam=1,al=10,be=1,ga=-0.1,de=1), list(lam=1,al=10,be=-0.01,ga=1,de=0.1),
                             list(lam=0.01,al=10,be=1,ga=0.01,de=100), list(lam=0.01,al=10,be=1,ga=0.1,de=1000),
                             list(lam=0.01,al=100,be=1,ga=1,de=100), list(lam=1,al=1,be=0.1,ga=1,de=1),
                             list(lam=10,al=1,be=0.1,ga=10,de=0.01), list(lam=10,al=0.1,be=0.1,ga=1,de=1),
                             list(lam=100,al=1,be=0.01,ga=0.01,de=1) )

## addWei addWeiLogLogis betaExpWeiPoi betaKumaFre betaKumaLom betaKumaWei betaKumaWei2 betaExpModWei betaGenInvWeiGeo betaGenMaolFre
## betaGenMaolGom betaGenMaolLom betaGenMaolWei expTransExpModWei genAddWeiLogLogis genTransAddWei genTransWeiGeo
## kumaTransExpLineFR kumaTransExpWei kumaTransModWei kumaWeiQuaLin mdcoBurr12 transExpAddWei
pLL_lam_al_be_ga_de_et <- list( list(lam=1,al=0.1,be=1,ga=1,de=1,et=1), list(lam=1,al=0.1,be=10,ga=1,de=1,et=10),
                                list(lam=1,al=0.01,be=10,ga=1,de=1,et=1), list(lam=1,al=1,be=1,ga=1,de=1,et=1),
                                list(lam=1,al=0.1,be=10,ga=1,de=1,et=1), list(lam=1,al=-1,be=10,ga=1,de=1,et=10),
                                list(lam=1,al=0.1,be=0.1,ga=0.1,de=0.1,et=0.1), list(lam=1,al=0,be=100,ga=1,de=1,et=1),
                                list(lam=1,al=1,be=0.1,ga=0.1,de=0.1,et=0.1), list(lam=1,al=0.1,be=0.01,ga=0.001,de=0.001,et=0.01),
                                list(lam=1,al=-100,be=10,ga=10,de=0.1,et=1), list(lam=1,al=1,be=1,ga=1,de=1,et=0.1),
                                list(lam=1,al=10,be=1,ga=0.1,de=0.1,et=0.01), list(lam=-1,al=1,be=1,ga=0.1,de=0.01,et=0.001),
                                list(lam=-1,al=10,be=1,ga=0.1,de=0.01,et=0.001), list(lam=-0.1,al=-0.01,be=-0.1,ga=1,de=0.1,et=-0.0001),
                                list(lam=10,al=0.1,be=0.01,ga=0.01,de=0.1,et=10), list(lam=10,al=10,be=-1,ga=10,de=1,et=-0.1) )

## betaGenMaolExtModWei betaPhani genTransExpAddWei kumaTransAddWei kumaTransExpModWei kumaWeiBurr12
pLL_lam_al_be_ga_de_et_th <- list( list(lam=1,al=0.1,be=1,ga=1,de=1,et=1,th=1), list(lam=1,al=0.1,be=10,ga=1,de=1,et=1,th=1),
                                   list(lam=1,al=0.01,be=10,ga=1,de=1,et=1,th=1), list(lam=1,al=1,be=1,ga=1,de=1,et=1,th=1),
                                   list(lam=1,al=0.1,be=10,ga=1,de=1,et=1,th=1), list(lam=1,al=-1,be=10,ga=1,de=1,et=1,th=1),
                                   list(lam=1,al=0.1,be=0.1,ga=0.1,de=1,et=1,th=1), list(lam=1,al=0,be=100,ga=1,de=1,et=1,th=1),
                                   list(lam=1,al=0.1,be=0.01,ga=0.001,de=1,et=1,th=1), list(lam=1,al=-100,be=10,ga=10,de=1,et=1,th=1),
                                   list(lam=-10,al=0.1,be=1,ga=1,de=-10,et=-1,th=1), list(lam=-10,al=100,be=1,ga=1,de=1,et=1,th=1),
                                   list(lam=-1,al=10,be=1,ga=1,de=1,et=1,th=1), list(lam=-10,al=-100,be=-1,ga=1,de=0.01,et=1,th=1),
                                   list(lam=-0.1,al=1,be=10,ga=1,de=0.1,et=1,th=-0.1), list(lam=1,al=0.1,be=1,ga=-1,de=-1,et=100,th=-1),
                                   list(lam=100,al=-0.001,be=-0.1,ga=1,de=0.01,et=-0.01,th=0.001),
                                   list(lam=0.1,al=1,be=1,ga=-0.1,de=-1,et=100,th=-1), list(lam=0.1,al=1,be=1,ga=-0.1,de=-1,et=1000,th=-1),
                                   list(lam=0.1,al=1,be=1,ga=-0.01,de=-1,et=10000,th=-1),
                                   list(lam=0.1,al=1,be=1,ga=-0.01,de=-1,et=1000,th=-1),
                                   list(lam=0.1,al=0.1,be=1,ga=-0.01,de=-1,et=1000,th=-1) )

## kumaTransExpAddWei
pLL_lam_al_be_ga_de_p_q_r <- list( list(lam=1,al=0.1,be=1,ga=1,de=1,p=1,q=1,r=1), list(lam=1,al=0.1,be=10,ga=1,de=1,p=1,q=1,r=1),
                                   list(lam=1,al=0.01,be=10,ga=1,de=1,p=1,q=1,r=1), list(lam=1,al=1,be=1,ga=1,de=1,p=1,q=1,r=1),
                                   list(lam=1,al=-1,be=10,ga=1,de=1,p=1,q=1,r=1), list(lam=1,al=-100,be=10,ga=10,de=0.1,p=1,q=1,r=1),
                                   list(lam=1,al=0.1,be=0.1,ga=0.1,de=0.1,p=1,q=1,r=1), list(lam=1,al=0,be=100,ga=1,de=1,p=1,q=1,r=1),
                                   list(lam=1,al=1,be=0.1,ga=0.1,de=0.1,p=1,q=1,r=1), list(lam=1,al=10,be=-1,ga=0.1,de=1,p=10,q=10,r=0.01),
                                   list(lam=1,al=0.1,be=0.01,ga=0.001,de=0.001,p=1,q=1,r=1),
                                   list(lam=1,al=1,be=0.1,ga=-1,de=-0.1,p=1,q=10,r=1) )

## alpSkewNorm burr2 burr8 chi chiSqr chiSqrExp expRatio hyperSine invChi invChiSqr invMax invParaLogis logHalfNorm maxBolt maxJutt
## paraLogis revBurr skewCurSym student
pLL_al <- list( list(al=0.1), list(al=1), list(al=10), list(al=-1), list(al=0.01), list(al=0), list(al=100) )

## alpBetaSkewNorm bebbington benk2 betaStuT chen expChiSqr expGenStdHalfLogis expPare expRay expUQuad extHalfNorm F flexWei flexWeiExt
## frePoi gamEV genPoiLin invtBeta kumaGenLom lifeExp lineExp lineFR maolExtLom murthy newExpExp newExpRay oddLinRay pham
## poiOddExpHalfLogis powLogis powTopLeo quaXgam rayGeo rayLog skewGenNorm transInvExp type1HalfLogisGom xgamGeo xgamPoi life2 beta4
## kuma4 (kuma)
pLL_al_be <- list( list(al=1,be=1), list(al=0.1,be=0.1), list(al=0.01,be=0.01), list(al=0.1,be=10), list(al=100,be=1), list(al=-1,be=0),
                   list(al=-10,be=1), list(al=0,be=0) )

## betaBurrX1 betaExtHalfNorm betaRay burr10ExpWei burr12Geo burr12Poi compChenLog compGenTransPoiLin compGenTransPoiWei
## compGeoTransLin expBurr3 expFrePoi expLineFR expPowWei expUQuad extChen gamLineFR gamPare4 genInvGam genLineFR genRay gomInvExp
## gomMakkumaBurr3 halfLogisPoi invWeiPoi kumaChiSqr kumaExpExp kumaExpRay kumaGenExpPare kumaModExp kumaRay lineFRGeo lineFRLog
## logLogisWei maolExtBurr12 modWeightRay newExpLineFR newExpWei newPowTopLeoInvLom oddExpUni oddGenNadaHaghiUni oddLinExpWei
## oddLomLin pear12 pert poiBurr10Fre poiBurr10Pare2 poiOddGenExpHalfLogis powGom powLogDag quadHazRate quaXgamGeo sahZaiModWei
## slyLach topLeoBurr12 transCompPoi transExpPare transJan transLineExp trans2Lin transUQuad transWei truncInvtBeta truncLomLineFR
## type2PowTopLeoInvExp weiPoi weiRay weiUni betaLin3 life3 zbBurr123 (expKuma)
pLL_al_be_ga <- list( list(al=0.1,be=1,ga=10), list(al=0.1,be=1,ga=100), list(al=0.1,be=10,ga=10), list(al=0.1,be=10,ga=100),
                      list(al=0.1,be=100,ga=10), list(al=0.1,be=100,ga=100), list(al=1,be=1,ga=1), list(al=1,be=1,ga=10),
                      list(al=0.1,be=0.1,ga=0.1), list(al=0.001,be=0.001,ga=0.01), list(al=10,be=0.1,ga=1), list(al=1,be=1,ga=0.1),
                      list(al=1,be=0.1,ga=0.01), list(al=0.1,be=0,ga=0), list(al=10,be=1,ga=-10), list(al=100,be=0.1,ga=0.1),
                      list(al=-10,be=10,ga=10), list(al=1,be=1,ga=0.001), list(al=-10,be=10,ga=0.01) )

## betaBirnSaun betaBLZ betaChen betaFlexWei betaLineFR betaMaolExtUni betaMaolLom betaPham betaRayLog burr12Wei expChenLog
## expGenExtExp expGenUQuad expLineFRGeo expModWei expWeiLindley extGenLineFR extOddLogLogisModWei extWeiUni genAddWei genBurr12Poi
## genLineExp geoGenLineFR jsb kies kumaExpBurr12 kumaExpChen kumaExpLineFR kumaExpUQuad kumaExpWei2 kumaFlexWeiExt kumaGenLineFR
## kumaLineFR kumaModBurr3 kumaWei maolExpWei mcdoBurr3 mcdoExpGam modBetaRay modGenLineFR modPert modWeiGeo newExpModWei
## oddLogLogisModWei poiGenLineFR transModWei transWeiRay weiPowFun (kumaInvGau)
pLL_al_be_ga_de <- list( list(al=0.1,be=1,ga=10,de=10), list(al=0.1,be=1,ga=100,de=10), list(al=100,be=1,ga=1,de=0.01),
                         list(al=0.1,be=10,ga=10,de=10), list(al=0.1,be=10,ga=100,de=10), list(al=100,be=1,ga=10,de=0.1),
                         list(al=0.1,be=100,ga=10,de=10), list(al=0.1,be=100,ga=100,de=10), list(al=1,be=1,ga=-0.1,de=100),
                         list(al=0.1,be=1,ga=10,de=100), list(al=0.1,be=1,ga=100,de=100), list(al=-0.1,be=1,ga=-0.1,de=0.01),
                         list(al=0.1,be=10,ga=10,de=100), list(al=0.1,be=10,ga=100,de=100), list(al=-1,be=-100,ga=-100,de=-100),
                         list(al=0.1,be=100,ga=10,de=100), list(al=0.1,be=100,ga=100,de=100), list(al=10,be=0.01,ga=10,de=0.1),
                         list(al=1,be=1,ga=1,de=1), list(al=10,be=1,ga=0.1,de=1), list(al=10,be=10,ga=-1,de=1),
                         list(al=0.1,be=0.01,ga=0.1,de=1e4), list(al=0.01,be=1,ga=1,de=1e4), list(al=1,be=1,ga=1,de=1e2),
                         list(al=10,be=1,ga=1,de=1e3), list(al=1,be=0.01,ga=1,de=1), list(al=100,be=0.1,ga=0.1,de=-1),
                         list(al=1,be=10,ga=-1,de=-1000), list(al=1,be=-0.1,ga=-1,de=10), list(al=1,be=0.001,ga=10,de=1),
                         list(al=1,be=0.1,ga=1,de=0.1) )

## betaExpBurr12 betaLineFRGeo betaGeoGenLineFR betaLineFRLog betaModWei betaModWeightRay betaQuadHazRate betaSarZaiModWei betaSlyLach
## burr3MaolWei burr12WeiLog transExpAddWei expBurr12Wei expKumaWei extDag extWeiKuma freTopLeoKuma gamLogLogisWei genExpAddWei gmm
## kumaExpModWei kumaModWei kumaWeiUni maolAddWei mcdoGenLineFR modBetaLineFR modBetaLineExp newModWei phani transAddWei weiGomMak
## (extWeiKuma)
pLL_al_be_ga_de_et <- list( list(al=0.1,be=1,ga=1,de=1,et=1), list(al=0.1,be=10,ga=1,de=1,et=10), list(al=0.01,be=10,ga=1,de=1,et=1),
                            list(al=1,be=1,ga=1,de=1,et=1), list(al=0.1,be=10,ga=1,de=1,et=1), list(al=0.1,be=0.1,ga=0.1,de=0.1,et=0.1),
                            list(al=1,be=0.1,ga=0.1,de=0.1,et=0.1), list(al=0.1,be=0.01,ga=0.001,de=0.001,et=0.01),
                            list(al=-100,be=10,ga=10,de=0.1,et=1), list(al=1,be=1,ga=1,de=1,et=0.1), list(al=-1,be=10,ga=1,de=1,et=10),
                            list(al=0,be=100,ga=1,de=1,et=1), list(al=1,be=-1,ga=-1,de=1,et=10), list(al=1,be=1,ga=10,de=1,et=-0.001),
                            list(al=1,be=1,ga=10,de=1,et=0.001), list(al=100,be=-0.01,ga=1,de=1,et=-0.001),
                            list(al=1,be=1000,ga=1,de=10,et=1), list(al=1,be=1,ga=0.1,de=1,et=0.01), list(al=0.1,be=10,ga=10,de=10,et=10),
                            list(al=1,be=1,ga=0.01,de=1,et=0.0001), list(al=1,be=0.01,ga=0.01,de=1,et=0.01),
                            list(al=-0.01,be=0.01,ga=0.1,de=1,et=0.01), list(al=1,be=10,ga=0.01,de=0.1,et=-0.0001),
                            list(al=1,be=100,ga=1,de=0.1,et=0.01), list(al=1,be=1000,ga=1,de=10,et=10), list(al=10,be=0.1,ga=1,de=1,et=1),
                            list(al=0.1,be=10,ga=100,de=10,et=100), list(al=1,be=10,ga=1,de=0.1,et=-0.0001),
                            list(al=0.1,be=-0.1,ga=-1,de=0.1,et=0.01), list(al=0.1,be=-0.1,ga=-1,de=0.1,et=0.001),
                            list(al=0.01,be=-0.1,ga=-1,de=0.01,et=0.001), list(al=0.1,be=10,ga=-0.1,de=0.01,et=0.1),
                            list(al=0.1,be=0.1,ga=-1,de=0.1,et=0.01), list(al=0.01,be=-0.1,ga=-1,de=0.1,et=0.1),
                            list(al=1,be=1,ga=-1,de=0.01,et=0.1), list(al=0.01,be=0.1,ga=-1,de=0.1,et=1),
                            list(al=0.01,be=0.01,ga=0.1,de=0.1,et=0.01), list(al=10,be=0.1,ga=-1,de=10,et=1),
                            list(al=10,be=1,ga=-1,de=1,et=0.01), list(al=0.1,be=0.1,ga=1000,de=0.1,et=0.1),
                            list(al=0.001,be=0.001,ga=0.001,de=0.001,et=-10), list(al=0.1,be=0.001,ga=0.001,de=0.001,et=-10),
                            list(al=0.1,be=0.01,ga=0.001,de=0.001,et=-10), list(al=10,be=0.01,ga=0.1,de=0.0001,et=-10),
                            list(al=1,be=0.1,ga=10,de=0.001,et=-10), list(al=0.1,be=1,ga=-0.1,de=0.1,et=0.01),
                            list(al=1,be=1,ga=0.00001,de=0.001,et=0.00001) )

## betaAddWei betaGenMaolExtExpPare betaKies betaNadaKotz flexAddWei genAddWeiBurr12  kumaExpAddWei mcdoModWei modBetaGenLineFR
## modBetaModWei
pLL_al_be_ga_de_et_th <- list( list(al=0.1,be=1,ga=1,de=1,et=1,th=1), list(al=0.1,be=10,ga=1,de=1,et=10,th=1),
                               list(al=0.01,be=10,ga=1,de=1,et=1,th=1), list(al=-1,be=-0.1,ga=1,de=0.1,et=10,th=1),
                               list(al=1,be=1,ga=1,de=1,et=1,th=1), list(al=0.1,be=10,ga=1,de=1,et=1,th=1),
                               list(al=0.1,be=0.1,ga=0.1,de=0.1,et=0.1,th=1), list(al=1,be=0.1,ga=0.1,de=0.1,et=1,th=0.1),
                               list(al=0.1,be=0.01,ga=0.001,de=0.001,et=0.1,th=1), list(al=-100,be=10,ga=10,de=0.1,et=1,th=1),
                               list(al=1,be=1,ga=1,de=1,et=0.1,th=1), list(al=-1,be=10,ga=1,de=1,et=10,th=1),
                               list(al=0,be=100,ga=1,de=1,et=1,th=1), list(al=1,be=1,ga=10,de=0.01,et=-0.01,th=1),
                               list(al=1,be=1,ga=10,de=10,et=0.1,th=-0.001), list(al=1,be=1,ga=10,de=10,et=0.1,th=0.001),
                               list(al=10,be=1,ga=1,de=-0.01,et=0.1,th=1),list(al=1,be=0.01,ga=10,de=-1,et=-1,th=100),
                               list(al=1,be=0.01,ga=10,de=-1,et=-1,th=1000), list(al=1,be=0.01,ga=10,de=-1,et=10,th=1000),
                               list(al=0.1,be=0.1,ga=0.1,de=0.1,et=0.01,th=1), list(al=0.1,be=0.1,ga=0.01,de=0.1,et=0.01,th=1),
                               list(al=0.1,be=0.0001,ga=0.01,de=0.1,et=0.01,th=0.1), list(al=0.1,be=0.1,ga=0.01,de=0.1,et=0.01,th=1),
                               list(al=0.1,be=0.1,ga=0.01,de=0.1,et=0.01,th=0.1) )

## gmm
library('tidyr', quietly = T)
pLL_al_be_a1_a2_b1_b2_c1_c2 <- c(0.01,1,100) %>% expand.grid(.,.,.,.,.,.) %>% tibble::as_tibble() %>%
                               rlang::set_names(c('a1','a2','b1','b2','c1','c2')) %>% dplyr::mutate(al=0.5,be=0.5) %>% purrr::transpose()


## Quantile point
## anoGenTransWeiQ. betaBurr3Q. betaExpModWeiQ. betaGenHalfNormGeoQ. betaGumQ. betaMaolWeiQ. expGenExtGomQ. expModWeiExtQ. frechetQ.
## genGomQ. gumbelQ. gumbel2Q. genExpPoiQ. genLogGamQ. gomLomQ. logGamPareQ. logPear3Q. modWeiExtQ.


## Useful functions == (2020-07-23) ========================
erfc <- function(x) 2 *pnorm(x *sqrt(2), lower = F)  # https://stackoverflow.com/questions/29067916/error-function-erfz
erfcx <- function(x) exp(x ^2) *erfc(x)  # Scaled complementary error function:  https://en.wikipedia.org/wiki/Exponentially_modified_Gaussian_distribution
stnorm <- function(x) 1 /sqrt(2 *pi) *exp(-1/2 *x ^2)  # standard normal probability density function
stcum <- function(x) 1/2 *(1 +erfc(x /sqrt(2)))  # standard cumulative distribution funciton
## https://rdrr.io/cran/pracma/man/gammainc.html
## lower: 0-x, upper: x-Inf, regular: incgamma(lower) /gamma(x,a)
incgamma <- function(x, a, lower_upper_regular = 1) {
  query_lib.('pracma')
  if (lower_upper_regular != 3) {
    map_dbl(x, ~ pracma::gammainc(., a)[lower_upper_regular])
  } else {  # If you want regular inc.gamma, this method is faster
    pgamma(x, a)
  }  # Confirm: pracma::gammainc(1.3,1); pgamma(1.3,1)
}
## Incomplete beta function, Ix(a,b): https://stat.ethz.ch/pipermail/r-help/2005-December/084477.html
incbeta <- function(x, a, b) pbeta(x, a, b) /beta(a, b)


## Short cut 1 == (2020-10-31) ========================
best_mdl. <- function(mL) map_dbl(mL, ~ {if (!anyNA(.)) deviance(.) else NA}) %>% which.min() %>% {if (length(.) == 0) NULL else mL[[.]]}

## Short cut 2 == (2021-03-23) ========================
lazy_call. <- function(x, y, pLL, f, ext = F, y1 = 0, y2 = 0, ...) {
  query_lib.('minpack.lm')
  if (is.data.frame(x) && ncol(x) == 2) def.(c('x', 'y'), list(x[[1]], x[[2]]))
  mL <- list()
  fun_quasi <- formals(f) %>% names(.) %>% str_flatten(collapse = ',') %>% str_c('f(', ., ')')  # args(f)
  for (i in seq_along(pLL)) mL[[i]] <- tryReturn.(minpack.lm::nlsLM(y ~ eval(parse(text = fun_quasi)), start = pLL[[i]]))
  mdl <- best_mdl.(mL)
  dev <- dev.(mdl)
  dt_mdl <- lazy_xy.(f, mdl, x, ext, y1, y2)
  return(list(model = mdl, deviance = dev, formula = f, xy = dt_mdl))
}

## Short cut 3 == (2020-11-10) ========================
lazy_def. <- function(model, ...) {
  if (is.null(model)) return(NULL)
  tenta <- coef(model)
  for (i in seq_along(tenta)) assign(names(tenta)[i], tenta[i], envir = globalenv())  # def.() is just a local assignment
}

## Short cut 4 == (2021-02-09) ========================
lazy_xy. <- function(formulae, model, rawX, ext, y1 = 0, y2 = 0, ...) {  # ext(ension for rawX) which is used in the lazy_call.()
  if (is.null(model)) return(NULL)
  f_chr <- formals(formulae) %>% names(.) %>% str_flatten(collapse = ',') %>% str_c('f(', ., ')') %>% str_replace('x', 'anyX')
  lazy_def.(model)
  if (ext == FALSE && deviance(model) > 0.013) {  # bad fitting (which looks parallel to the x-axis): use rawX
    anyX <- rawX
    anyY <- eval(parse(text = f_chr))
  } else {
    ## good fitting (which isn't parallel): extend rawX to be surround on the x-axis (bell curve, sigmoid)
    qx_sides <- range(rawX, na.rm = T)
    anyX <- qx_sides[1]
    qy1 <- eval(parse(text = f_chr))
    anyX <- qx_sides[2]
    qy2 <- eval(parse(text = f_chr))

    ## Search on the x-left side
    for (stepW in c(1e+01, 1e+00, 1e-01, 1e-02, 5e-03)) {  # Punch stroke of searching changes shorter gradually
      anyX <- qx_sides[1] -stepW
      if (anyX > 0) {  # This is bothersome in fear of log(anyX), like log-normal
        qy <- eval(parse(text = f_chr))
        if (! qy %in% c(NA, NaN, -Inf, Inf) && abs(qy1 -y1) > stepW) {
          while (abs(qy -y1) > stepW && abs(qy -y1) < abs(qy1 -y1)) {  # keeping condition and minimum requirement
            tentaX <- anyX  # assurance
            tentaY <- eval(parse(text = f_chr))  # CAUTION: some pdfs draw a bimodal curve
            anyX <- tentaX +stepW *ifelse(tentaY >= y1, -1, 1)  # if so, move on left, or go back to the right; you went too far
            if (anyX < 0) {  # bothersome part2
              qx_sides[1] <- tentaX
              break
            }
            qy <- eval(parse(text = f_chr))
            if (qy %in% c(NA, NaN, -Inf, Inf) || abs(qy -y2) > abs(tentaY -y2)) {  # when the new qy is inferior to the old
              qx_sides[1] <- tentaX
              break
            }
            if (abs(qy -y1) <= stepW) {  # you win
              qx_sides[1] <- anyX
              break
            }
          }
        }
      }
    }

    ## Search on the x-right side
    for (stepW in c(1e+01, 1e+00, 1e-01, 1e-02, 5e-03)) {
      anyX <- qx_sides[2] +stepW
      qy <- eval(parse(text = f_chr))
      if (! qy %in% c(NA, NaN, -Inf, Inf) && abs(qy2 -y1) > stepW) {  # No striction of anyX due to right move (always anyX > 0)
        while (abs(qy -y2) > stepW && abs(qy -y2) < abs(qy2 -y2)) {
          tentaX <- anyX  # assurance
          tentaY <- eval(parse(text = f_chr))  # some pdfs draw a bimodal curve
          if ((qy >= y2 && y2 == 0) || (qy <= y2 && y2 == 1)) {  # move forward to the right
            anyX <- tentaX +stepW
          } else if ((qy < y2 && y2 == 0) || (qy > y2 && y2 == 1)) {  # go back to the left; you went too far
            anyX <- tentaX -stepW
          }
          qy <- eval(parse(text = f_chr))
          if (qy %in% c(NA, NaN, -Inf, Inf) || abs(qy -y2) > abs(tentaY -y2)) {
            qx_sides[2] <- tentaX
            break
          }
          if (abs(qy -y2) <= stepW) {  # you win
            qx_sides[2] <- anyX
            break
          }
        }
      }
    }

    anyX <- seq(qx_sides[1], qx_sides[2], length = 200)
    anyY <- eval(parse(text = f_chr))
  }
  dt_mdl <- tibble(x = anyX, y = anyY) %>% clean1.(.)  # If xAny covers out of range, then return NaN; so it should be replaced 0
  return(dt_mdl)
}  # crp.(iris[1:4]) crp.(c(iris[[2]],5.6,4.8,1.6,1.35))


## Short cut 5 == (2020-07-27) ========================
lazy_quantile. <- function(mdl, x, q = 0.999, Fx, qy = F, ...) {
  if (is.null(mdl)) return(NULL)
  lazy_def.(mdl)
  if (is.data.frame(x) && ncol(x) == 2) x <- x[[1]]
  qua <- eval(parse(text = Fx)) %>% clean0.(.)
  out <- if (qy == TRUE) tibble(x =x, y = qua) else whichNear.(vec = qua, ref = q) %>% x[.]
  return(out)
}


# dt <- ag[4, ] %>% {getXYlines.(., cook = T)[[1]]}
# def.(c('x', 'y'), list(xy.coords(dt)$'x', xy.coords(dt)$'y'))
# map.(dL, ~ dagum2F.(.$'x', .$'y') %>% rmse2.(.)) %>% box2.(.)
# plot(x, y); addWeiF.(x, y) %>% addWeiY.(., x) %>% lines(x, .)


## Additive Weibull distribution == (2020-02-22) ==
## https://www.researchgate.net/publication/295688313_Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
addWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,al,be,ga,de) 1 -exp(-(al *x ^be +ga *x ^de))
  f <- function(x,lam,al,be,ga,de,et) et *(al *be *x ^(be -1) +ga *de *x ^(de -1)) *(1 -z(x,al,be,ga,de)) *z(x,al,be,ga,de) ^(et -1) *(1 +lam -2 *lam *z(x,al,be,ga,de) ^et)
  lazy_call.(x,y,pLL,f,ext)
}


## Additive Weibull log-logistic distribution == (2020-06-21) ==
## https://www.academia.edu/37828681/Additive_Weibull_Log_Logistic_Distribution_Properties_and_Application?email_work_card=title
addWeiLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  f <- function(x,lam,al,be,ga,de,et) et /lam *(al *be *(x /lam) ^(be *et -1) +ga *de *(x /lam) ^(de *et -1)) *exp(-al *(x /lam) ^(be *et) -ga *(x /lam) ^(de *et))
  lazy_call.(x,y,pLL,f,ext)
}


## Adjusted log-logistic generalized exponential distribution == (2020-06-11) ==
## https://www.researchgate.net/publication/317387869_The_Adjusted_Log-logistic_Generalized_Exponential_Distribution_with_Application_to_Lifetime_Data
adjLogLogisGenExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al ^be *be *(al ^be +1) /lam *(1 -z(x,lam)) *z(x,lam) ^(be -1) *(al ^be +z(x,lam)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Alpha-beta skew normal distribution == (2020-08-02) ==
## https://arxiv.org/abs/1910.09192
alpBetaSkewNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) (1 +(1 -al *x -be *x ^3) ^2) /(2 +al ^2 +15 *be ^2 +6 *al *be) *stnorm(x)
  lazy_call.(x,y,pLL,f,ext)
}


## Alpha logarithmic transformed Weibull distribution == (2020-03-06) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
alpLogTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-x ^be /lam)
  f <- function(x,lam,al,be) (al -1) /log(al) *be /lam *x ^(be -1) *(1 -z(x,lam,be)) *(al -(al -1) ^z(x,lam,be)) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Alpha power exponential distribution == (2020-03-17) ==
## https://www.researchgate.net/publication/334971340_Topp-Leone_odd_log-logistic_exponential_distribution_Its_improved_estimators_and_applications
alpPowExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al) log(al) /(al -1) /lam *(1 -z(x,lam)) *al ^z(x,lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Alpha power inverse Weibull distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/331882388_Alpha_power_inverse_Weibull_distribution_with_reliability_application
alpPowInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-x ^(-be) /lam)
  f <- function(x,lam,al,be) log(al) /(al -1) *be /lam *x ^(-be -1) *z(x,lam,be) *al ^z(x,lam,be)
  lazy_call.(x,y,pLL,f,ext)
}


## Alpha power inverted exponential distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/338198214_Theoretical_Analysis_of_the_Weibull_Alpha_Power_Inverted_Exponential_Distribution_Properties_and_Applications
alpPowInvtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam,al) exp(-(x /lam) ^(-1))
  f <- function(x,lam,al) log(al) /(al -1) *1 /lam *(x /lam) ^(-2) *z(x,lam) *al ^z(x,lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Alpha skew normal distribution == (2020-08-02) ==
## https://arxiv.org/abs/1910.09192
alpSkewNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al
  f <- function(x,al) (1 +(1 -al *x) ^2) /(2 +al ^2) *stnorm(x)
  lazy_call.(x,y,pLL,f,ext)
}


## Amoroso distribution == (2019-12-23) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
amorosoF. <- function(x, y = NULL, ext = F, ...) {  # = Amoroso, Stacy
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /gamma(al) *abs(be /lam) *((x -nu) /lam) ^(al *be -1) *exp(- ((x -nu) /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Another generalized transmuted exponential distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/304528433_Another_Generalized_Transmuted_family_of_distributionsProperties_and_Applications
anoGenTransExpF. <- function(x, y = NULL, ext = F, ...) {  # Reduce two parameters to one
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /lam *exp(-x /lam) *(1 +al -2 *al *(1 -exp(-x /lam)))
  lazy_call.(x,y,pLL,f,ext)
}


## Another generalized transmuted Fréchet distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/304528433_Another_Generalized_Transmuted_family_of_distributionsProperties_and_Applications
anoGenTransFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(-al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(1 +ga -2 *ga *(1 -z(x,lam,al) ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Another generalized transmuted normal distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/304528433_Another_Generalized_Transmuted_family_of_distributionsProperties_and_Applications
anoGenTransNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 -stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 +be -2 *be *(1 -z(x,nu,lam) ^al))
  lazy_call.(x,y,pLL,f,ext)
}


## Another generalized transmuted uniform distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/304528433_Another_Generalized_Transmuted_family_of_distributionsProperties_and_Applications
anoGenTransUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -x /lam
  f <- function(x,lam,al,be) al /lam *z(x,lam) ^(al -1) *(1 +be -2 *be *(1 -z(x,lam) ^al))
  lazy_call.(x,y,pLL,f,ext)
}


## Another generalized transmuted Weibull distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/304528433_Another_Generalized_Transmuted_family_of_distributionsProperties_and_Applications
anoGenTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(-x ^al /lam)
  f <- function(x,lam,al,be) al /lam *x ^(al -1) *(1 -z(x,lam,al)) *(1 +be -2 *be *z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}
anoGenTransWeiQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '(1 +be) *(1 -exp(-x ^al /lam)) -be *(1 -exp(-x ^al /lam)) ^2'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Asymmetric Laplace distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Asymmetric_Laplace_distribution
asymLaplaceF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) (al +1 /al) ^(-1) /lam *exp(-(x -nu) /lam *al ^sgn.(x -nu) *sgn.(x -nu))
  lazy_call.(x,y,pLL,f,ext)
}


## Balding-Nichols distribution == (2020-01-04) ==
## https://en.wikipedia.org/wiki/Balding–Nichols_model
baldNichoF. <- function(x, y = NULL, ext = F, ...) {  # brother of beta, Balding-Nichols; used in population genetics
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) *((x -nu) /lam) ^(al -1) *(1 -(x -nu) /lam) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Bebbington distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
bebbingtonF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al,be) exp(al *x -be /x)
  f <- function(x,al,be) (al +be /x ^2) *z(x,al,be) *exp(-z(x,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Benini distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Benini_distribution
beniniF. <- function(x, y = NULL, ext = F, ...) {  # (shape) al, be > 0, (scale) lam > 0
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) (al + 2 *be *log(x /lam)) /x *exp(- al *log(x /lam) - be *(log(x /lam)) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Benktander type II distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Benktander_type_II_distribution
benk2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) (al *x ^be -be +1) *x ^(be -2) *exp(al /be *(1 -x ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Beta distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
betaF. <- function(x, y = NULL, ext = F, ...) {  # brother of beta, Balding-Nichols
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /abs(lam) *((x -nu) /lam) ^(al -1) *(1 -(x -nu) /lam) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta additive Weibull distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaAddWeiF. <- function(x, y = NULL, ext = F, ...) {  # Modified the original formula: z = 1 -exp(.) --> 1 -exp(-.)
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,al,be,ga,de) 1 -exp(-((al *x) ^be +(ga *x) ^de))
  h <- function(x,al,be,ga,de) al *be *(al *x) ^(be -1) +ga *de *(ga *x) ^(de -1)
  f <- function(x,al,be,ga,de,et,th) 1 /beta(et,th) *h(x,al,be,ga,de) *z(x,al,be,ga,de) ^(et -1) *(1 -z(x,al,be,ga,de)) ^th
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Birnbaum-Saunders distribution == (2020-01-27) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
betaBirnSaunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) stcum(1 /de *(sqrt(x /be) -sqrt(be /x)))
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *exp(de ^(-2)) /(2 *de *sqrt(2 *pi *be)) *x ^(-3 /2) *(x +be) *exp(-1 /2 /de ^2 *(x /be +be /x)) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta BLZ distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaBLZF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) 1 -exp(-exp(be *x -de /x))
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *(be +de /x ^2) *exp(be *x -de /x) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Burr III distribution == (2020-07-21) ==
## https://projecteuclid.org/download/pdfview_1/euclid.bjps/1378729985
betaBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 +(x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(-de -1) *z(x,lam,de) ^(-al *be -1) *(1 -z(x,lam,de) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}
betaBurr3Q. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'pbeta((1+(x /lam) ^(-de)) ^(-be), al, ga)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Beta Burr type X distribution == (2020-02-21) ==
## https://www.researchgate.net/publication/303389358_The_beta_Burr_type_X_distribution_properties_with_application
betaBurr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga) 2 /beta(al,ga) *be /lam ^2 *x *(z(x,lam) ^be) ^(al -1) *(1 -z(x,lam) ^be) ^(ga -1) *(1 -z(x,lam)) *z(x,lam) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Burr type X with one parameter distribution == (2020-07-21) ==
## https://www.researchgate.net/publication/282689786_Beta_Burr_type_X_with_application_to_rainfall_data
betaBurrX1F. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_al_be_ga
  z <- function(x,be) (1 -exp(-x ^2)) ^be
  f <- function(x,al,be,ga) 2 *be /beta(al,ga) *x /(exp(x ^2) -1) *z(x,be) ^al *(1 -z(x,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Burr XII distribution == (2020-01-25) ==
## https://www.academia.edu/6476913/The_beta_Burr_XII_distribution_with_application_to_lifetime_data
betaBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 +(x /lam) ^(de)
  f <- function(x,lam,al,be,ga,de) 1 /beta (al,ga) *be *de /x *(1 -z(x,lam,de)) *z(x,lam,de) ^(-be *ga -1) *(1 -z(x,lam,de) ^(-be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Cauchy distribution == (2020-07-21) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjoiLDb693qAhUayosBHcgGCXQQFjACegQIAxAB&url=https%3A%2F%2Fdownload.atlantis-press.com%2Farticle%2F11327%2Fpdf&usg=AOvVaw3LMbrkgo5I0QrQcTMyPImh
betaCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 /pi *atan((x -nu) /lam)
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /pi /lam /(1 +((x -nu) /lam) ^2) ^(-1) *(1 /2 +z(x,nu,lam)) ^(al -1) *(1 /2 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Chen distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaChenF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) 1 -exp(-be *(exp(x ^de) -1))
  f <- function(x,al,be,ga,de) be *de /beta(al,ga) *x ^(de -1) *exp(x ^de) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta compound Rayleigh distribution == (2020-07-21) ==
## https://www.researchgate.net/publication/317248481_The_beta_compound_Rayleigh_distribution_Properties_and_applications
betaCompoRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 +x ^2 /lam
  f <- function(x,lam,al,be,ga) 2 /beta(al,ga) *be /lam *x *z(x,lam) ^(-be *ga -1) *(1 -z(x,lam) ^(-be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Dagum distribution == (2020-08-02) ==
## https://www.sci-hub.tw/10.1007/s00477-016-1226-6
betaDagF. <- function(x, y = NULL, ext = F, ...) {  # = McDonald-Dagum
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 +x ^(-de) /lam
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *x ^(-de -1) *z(x,lam,de) ^(-al *be -1) *(1 -z(x,lam,de) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponential distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
betaExpF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0, (shape) al, ga > 0; similar to Prentice, exBeta, and Logistic
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /abs(lam) *exp(-al *(x -nu) /lam) *(1 -exp(-(x -nu) /lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponential Fréchet distribution == (2020-02-25) ==
## https://www.researchgate.net/publication/294733922_The_Beta_Exponential_Frechet_Distribution_with_Applications
betaExpFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) 1 -exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(-be -1) *(1 -z(x,lam,be)) *z(x,lam,be) ^(ga *de -1) *(1 -z(x,lam,be) ^de) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponential geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
betaExpGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *(1 -be) ^ga /lam *(1 -z(x,lam)) ^(al -1) *z(x,lam) ^ga /(1 -be *z(x,lam)) ^(al +ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponential logarithmic distribution == (2020-07-30) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
betaExpLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -log(h(x,lam,be)) /log(1 -be)
  h <- function(x,lam,be) 1 -be *exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al, ga) /lam /log(1 -be) *(1 -1 /h(x,lam,be)) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponential Pareto distribution == (2020-07-22) ==
## http://www.iapress.org/index.php/soic/article/view/soic.190612a/568
betaExpPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -exp(-be *(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(de -1) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponential power distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaExpPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(1 -exp((x /lam) ^be))
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(be -1) *exp((x /lam) ^be) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Burr XII distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/328860461_The_Marshall-Olkin_Generalized-G_Family_of_Distributions_with_Applications
betaExpBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be) 1 -(1 +x ^al) ^(-be)
  f <- function(x,al,be,ga,de,et) al *be *ga /beta(de,et) *x ^(al -1) *(1 +x ^al) ^(-be -1) *z(x,al,be) ^(ga *de -1) *(1 -z(x,al,be) ^ga) ^(et -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated exponential distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/333737826_Beta_Exponentiated_Modified_Weibull_Distribution_Properties_and_Application
betaExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(1 -z(x,lam)) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated gamma distribution == (2020-07-22) ==
## https://www.researchgate.net/publication/297587877_Beta_Exponentiated_Gamma_Distribution_Some_Properties_and_Estimation
betaExpGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -(1 +x /lam) *exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) *exp(-x /lam) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^be) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Gompertz distribution == (2020-07-23) ==
## https://pdfs.semanticscholar.org/0240/236eaa7ac51bee085467774a3877fb04fc85.pdf?_ga=2.244065221.1789535964.1595456056-1809871880.1595456056
betaExpGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-de *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *exp(x /lam) *(1 -z(x,lam,de)) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Lindley distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/281979360_The_beta_exponentiated_Lindley_distribution
betaExpLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Lomax distribution == (2020-03-06) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
betaExpLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1 +x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(1 +x /lam) ^(-de -1)  *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) *(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated modified Weibull distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/333737826_Beta_Exponentiated_Modified_Weibull_Distribution_Properties_and_Application
betaExpModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,de,et) 1 -exp(-(de *x +(x /lam) ^et))
  f <- function(x,lam,al,be,ga,de,et) be /beta(al,ga) *(de +et /lam *(x /lam) ^(et -1)) *(1 -z(x,lam,de,et)) *z(x,lam,de,et) ^(al *be -1) *(1 -z(x,lam,de,et) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}
betaExpModWeiQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'pbeta((1 -exp(-(de *x +(x /lam) ^et))) ^be, al, ga)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Beta exponentiated Mukherji-Islam distribution == (2020-07-23) ==
## https://www.ripublication.com/gjpam16/gjpamv12n1_82.pdf
betaExpMukIsF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) (x /lam) ^be
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /x *z(x,lam,be) ^al *(1 -z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Nadarajah-Haghighi distribution == (2020-03-02) ==
## https://hal.archives-ouvertes.fr/hal-01570564/document
betaExpNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(1 -(1 +x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(1 +x /lam) ^(de -1) *(1 -z(x,lam,de)) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Weibull distribution == (2020-03-02) ==
## https://hal.archives-ouvertes.fr/hal-01570564/document
betaExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(de -1) *(1 -z(x,lam,de)) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta exponentiated Weibull Poisson distribution == (2020-01-14) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&uact=8&ved=2ahUKEwj0-LXyr4DnAhXLQN4KHZSoAcQQFjADegQIBxAB&url=https%3A%2F%2Fwww.tci-thaijo.org%2Findex.php%2Fthaistat%2Farticle%2Fdownload%2F63616%2F52219%2F&usg=AOvVaw2CAtN60KfOhpvCa5tWz3AE
betaExpWeiPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  u <- function(x,be,de) exp(-de *x ^be)
  z <- function(x,lam,be,de,et) (exp(lam *(1 -u(x,be,de) ^et)) -1) /(exp(lam) -1)
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *x ^(be -1) *lam *u(x,be,de) /(exp(lam) -1) *et *(1 -u(x,be,de)) ^(et -1) *exp(lam *(1 -u(x,be,de)) ^et) *z(x,lam,be,de,et) ^(al -1) *(1 -z(x,lam,be,de,et)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta extended half-normal distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/233408424_General_properties_for_the_beta_extended_half-normal_model
betaExtHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be) pgamma(al *x ^be, 1 /be)
  f <- function(x,al,be,ga,de) 1 /beta(ga,de) *al ^(1 /be) *be /gamma(1 /be) *exp(-al *x ^be) *z(x,al,be) ^(ga -1) *(1 -z(x,al,be)) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Fisher-Tippett distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
betaFishTipF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *abs(be /lam) *((x -nu) /lam) ^(be -1) *exp(-al *((x -nu) /lam) ^be) *(1 -exp(-((x -nu) /lam) ^be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Fisk distribution == (2020-07-21) ==
## http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.925.7006&rep=rep1&type=pdf
betaFiskF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 +x ^(-be) /lam
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *x ^(-be -1) *z(x,lam,be) ^(-al -1) *(1 -z(x,lam,be) ^(-1)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta flexible Weibull distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/315382552_The_Beta_Flexible_Weibull_Distribution
betaFlexWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) 1 -exp(-exp(be *x -de /x))
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *(be +de /x ^2) *exp(be *x -de /x) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Fréchet distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/315382266_The_Exponentiated_Generalized_Standardized_Half-logistic_Distribution
betaFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(-be -1) *exp(-al *(x /lam) ^(-be)) *(1 -exp(-(x /lam) ^(-be))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized exponential distribution == (2020-06-07) ==
## https://www.researchgate.net/publication/1774177_The_beta_generalized_exponential_distribution
betaGenExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(1 -z(x,lam)) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized half-normal distribution == (2020-07-25) ==
## http://downloads.hindawi.com/journals/jps/2013/491628.pdf
betaGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 2 *stcum((x /lam) ^be) -1
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *sqrt(2 /pi) *be /lam *(x /lam) ^(be -1) *exp(-1 /2 *(x /lam) ^(2 *be)) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized half-normal geometric distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
betaGenHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) 2 *stcum((x /lam) ^be) -1
  f <- function(x,lam,al,be,ga,de) (1 -de) /beta(al,ga) *sqrt(2 /pi) *be /lam *(x /lam) ^(be -1) *exp(-1 /2 *(x /lam) ^(2 *be)) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^(ga -1) *(1 -de *(1 -pbeta(z(x,lam,be), al, ga)))
  lazy_call.(x,y,pLL,f,ext)
}
betaGenHalfNormGeoQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  z <- function(x,lam,be) 2 *stcum((x /lam) ^be) -1
  h <- function(x,lam,al,be,ga,de) pbeta(z(x,lam,be), al, ga) /(1 -de *(1 -pbeta(z(x,lam,be), al, ga)))
  Fx <- '1 -h(x,lam,al,be,ga,de)'  # The original depicts h(.), but modified here as 1 -h(.)
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Beta generalized inverse Weibull distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/305999881_The_Beta_Generalized_Inverse_Weibull_Distribution
betaGenInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be,de) exp(-al *de *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) be *de /beta(al,ga) *(x /lam) ^(-be -1) *z(x,lam,al,be,de) *(1 -z(x,lam,al,be,de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized inverse Weibull geometric distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/315650759_The_Beta_Generalized_Inverse_Weibull_Geometric_Distribution
betaGenInvWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,be,de) 1 -exp(-de *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *(1 -et) /lam *(x /lam) ^(-be -1) *(1 -z(x,lam,be,de)) ^al *((1 -et) *z(x,lam,be,de)) ^(ga -1) *(1 -et *z(x,lam,be,de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized inverted exponential distribution == (2020-07-26) ==
## https://www.ine.pt/revstat/pdf/rs170104.pdf
betaGenInvtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(-2) *(1 -z(x,lam)) *(1 -z(x,lam) ^be) ^(al -1) *z(x,lam) ^(be *ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized linear failure rate distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
betaGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) exp(-be *de /2 *x ^2)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *(be +de *x) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-exponential distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -(de *exp(-x /lam) /(1 -(1 -de) *exp(-x /lam))) ^be
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be /lam /(1 -(1 -de) *exp(-x /lam)) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-extended exponentiated Pareto distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolExtExpPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,be,de,et,th) 1 -(et *h(x,be,de,th) /(1 -(1 -et) *h(x,be,de,th))) ^be
  h <- function(x,be,de,th) 1 -(1 -(x /be) ^(-de)) ^th
  f <- function(x,al,be,ga,de,et,th) 1 /beta(al,ga) *de *th *(x /be) ^(-de -1) /(1 -(x /be) ^(-de)) *(1 -h(x,be,de,th)) /h(x,be,de,th) /(1 -(1 -et) *h(x,be,de,th)) *z(x,be,de,et,th) ^(al -1) *(1 -z(x,be,de,et,th)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-extended modified Weibull distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolExtModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et_th
  z <- function(x,lam,be,de,et,th) 1 -(lam *h(x,de,et,th) /(1 -(1 -lam) *h(x,de,et,th))) ^be
  h <- function(x,de,et,th) exp(-de *x -et *x ^th)
  f <- function(x,lam,al,be,ga,de,et,th) 1 /beta(al,ga) *be *(de +et *th *x ^(th -1)) /(1 -(1 -lam) *h(x,de,et,th)) *z(x,lam,be,de,et,th) ^(al -1) *(1 -z(x,lam,be,de,et,th)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-Frechet distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,be,de,et) 1 -(et *h(x,lam,de) /(1 -(1 -et) *h(x,lam,de))) ^be
  h <- function(x,lam,de) 1 -exp(-(x /lam) ^(-de))
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(-de -1) *(1 -h(x,lam,be)) /h(x,lam,be) /(1 -(1 -et) *h(x,lam,be)) *z(x,lam,be,de,et) ^(al -1) *(1 -z(x,lam,be,de,et)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-Gompertz distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,be,de,et) 1 -(et *h(x,lam,de) /(1 -(1 -et) *h(x,lam,de))) ^be
  h <- function(x,lam,de) exp(-de *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *exp(x /lam) /(1 -(1 -et) *h(x,lam,be)) *z(x,lam,be,de,et) ^(al -1) *(1 -z(x,lam,be,de,et)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-Lomax distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,be,de,et) 1 -(et *(1 +x /lam) ^(-de) /(1 -(1 -et) *(1 +x /lam) ^(-de))) ^be
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de /lam /(1 -(1 -et) *(1 +x /lam) ^(-de)) /(1 +x /lam) *z(x,lam,be,de,et) ^(al -1) *(1 -z(x,lam,be,de,et)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Marshall-Olkin-Weibull distribution == (2020-07-26) ==
## https://arxiv.org/pdf/1608.05985.pdf
betaGenMaolWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,be,de,et) 1 -(et *exp(-x ^de /lam) /(1 -(1 -et) *exp(-x ^de /lam))) ^be
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de /lam *x ^(de -1) /(1 -(1 -et) *exp(-x ^de /lam)) *z(x,lam,be,de,et) ^(al -1) *(1 -z(x,lam,be,de,et)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Pareto distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/316242403_The_Gamma_Generalized_Pareto_Distribution_with_Applications_in_Survival_Analysis
betaGenPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 +be *x /lam
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) /lam *(1 -z(x,lam,be) ^(-1 /be)) ^(al -1) *z(x,lam,be) ^(-ga /be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized power Lindley distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/301348569_A_new_class_of_generalized_power_Lindley_distribution
betaGenPowLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1 +x ^de /(1 +lam)) *exp(-x ^de /lam)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam /(1 +lam) *(1 +x ^de) *x ^(de -1) *exp(-x ^de /lam) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized power Weibull distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaGenPowWeiF. <- function(x, y = NULL, ext = F, ...) {  # Modified the original formula; ^be --> ^(be -1)
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -exp(1 -(1 +(x /lam) ^be) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(be-1) *(1 +(x /lam) ^be) ^(de -1) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Rayleigh distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/333737826_Beta_Exponentiated_Modified_Weibull_Distribution_Properties_and_Application
betaGenRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga) 2 /beta(al,ga) *be /lam *(x /lam) *(1 -z(x,lam)) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta generalized Weibull distribution == (2020-01-08) ==
## https://digitalcommons.wayne.edu/cgi/viewcontent.cgi?article=1134&context=jmasm
## also called beta 'generalized' Weibull ... https://iopscience.iop.org/article/10.1088/1742-6596/1366/1/012121/pdf
betaGenWeiF. <- function(x, y = NULL, ext = F, ...) {  # NULL without location nu, so I added 'generalized' and reshaped Γ(a+b)/Γ(a)/Γ(b) = 1/B(a,b)
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *((x -nu) /lam) ^(be -1) *exp(-ga *((x -nu) /lam) ^be) *(1 -exp(-((x -nu) /lam) ^be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta geometric generalized linear failure rate distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
betaGeoGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,de) exp(-be *de /2 *x ^2)
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) /(1 -be) ^al *(de +et *x) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^ga *(1 +be /(1 -be) *z(x,be,de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Gompertz distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) be /beta(al,ga) *exp(x /lam) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Gompertz-Makeham distribution == (2020-08-01) ==
## https://www.researchgate.net/publication/342097852_On_the_Beta_Mekaham_Distribution_and_Its_Applications
betaGomMakF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -exp(-be *x -de *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *(be +de *exp(x /lam)) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Gumbel distribution == (2020-07-27) ==
## http://downloads.hindawi.com/journals/mpe/2004/529485.pdf
betaGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) exp(-exp(-(x -nu) /lam))
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /lam *exp(-(x -nu) /lam) *z(x,nu,lam) ^al *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}
betaGumQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  z <- function(x,nu,lam) exp(-exp(-(x -nu) /lam))
  Fx <- 'pbeta(z(x,nu,lam), al, be)'  # The original depicts h(.), but modified here as 1 -h(.)
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Beta half-Cauchy distribution == (2020-05-01) ==
## https://www.researchgate.net/publication/326441057_The_Log-Odd_Normal_Generalized_Family_of_Distributions_with_Application
betaHalfCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 2 /pi *atan(x /lam)
  f <- function(x,lam,al,be) 1 /beta(al,be) *2 /pi /lam *(1 +(x /lam) ^2) ^(-1) *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta half-normal distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
betaHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 2 *stcum(x /lam) -1
  f <- function(x,lam,al,be) 1 /beta(al,be) *sqrt(2 /pi) /lam *exp(-1 /2 *(x /lam) ^2) *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta half-normal geometric distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
betaHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 2 *stcum(x /lam) -1
  f <- function(x,lam,al,be,ga) (1 -be) /beta(al,ga) *sqrt(2 /pi) /lam *exp(-1 /2 *(x /lam) ^2) *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^(ga -1) *(1 -be *(1 -pbeta(z(x,lam), al, ga)))
  lazy_call.(x,y,pLL,f,ext)
}


## Beta hyperbolic secant distribution == (2020-07-27) ==
## https://www.researchgate.net/publication/46458931_The_Beta-Hyperbolic_Secant_BHS_Distribution
betaHypeSecantF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 2 /pi *atan(exp((x -nu) /lam))
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /pi /lam /cosh((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta inverse Rayleigh distribution == (2020-02-22) ==
## https://www.researchgate.net/publication/262567684_On_some_properties_of_the_beta_Inverse_Rayleigh_distribution
betaInvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 1 /beta(al,ga) *2 *be /x ^3 *exp(-al *be /x ^2) *(1 -exp(-be /x ^2)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta inverse Weibull distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/305999881_The_Beta_Generalized_Inverse_Weibull_Distribution
betaInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-al *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga) be /beta(al,ga) *(x /lam) ^(-be -1) *z(x,lam,al,be) *(1 -z(x,lam,al,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta inverted exponential distribution == (2020-07-28) ==
## https://www.ijasm.org/administrator/components/com_jresearch/files/publications/IJASM_70_Final.pdf
betaInvtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-(x /lam) ^(-1))
  f <- function(x,lam,al,be) 1 /beta(al,be) *x ^(-2) /lam *z(x,lam) ^al *(1 -z(x,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-kappa distribution == (2020-01-07) ==
## https://rmets.onlinelibrary.wiley.com/doi/epdf/10.1002/met.37
betaKappaF. <- function(x, y = NULL, ext = F, ...) {  # slightly different from Dagaum, Burr III, Beta-kappa, or Beta-P
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al *be -1) *((x /lam) ^al +1) ^(-be -1)  # ^(al *be -1) is unique point
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kies distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaKiesF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,be,de,et,th) 1 -exp(-be *((x -et) /(th -x)) ^de)
  f <- function(x,al,be,ga,de,et,th) be *de /beta(al,ga) *(et -th) /(th -x) ^2 *((x -et) /(th -x)) ^(de -1) *z(x,be,de,et,th) ^(al -1) *(1 -z(x,be,de,et,th)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kumaraswamy exponential distribution == (2020-07-28) ==
## https://www.mdpi.com/2227-7390/8/1/23
betaKumaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1 -exp(-x /lam)) ^de
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *exp(-x /lam) *(1 -exp(-x /lam)) ^(be -1) *z(x,lam,de) ^(ga *de -1) *(1 -z(x,lam,de) ^de) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kumaraswamy-exponential distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/321162540_Beta_generated_kumaraswamy-G_family_of_distributions
betaKumaExp2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1 -exp(-x /lam)) ^de
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *exp(-x /lam) *(1 -exp(-x /lam)) ^(de -1) *z(x,lam,de) ^(be *ga -1) *(1 -z(x,lam,de) ^be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kumaraswamy-Fréchet distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/321162540_Beta_generated_kumaraswamy-G_family_of_distributions
betaKumaFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,de,et) 1 -exp(-de *(x /lam) ^(-et))
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *et /lam *(x /lam) ^(-et -1) *(1 -z(x,lam,de,et)) *z(x,lam,de,et) ^(be *ga -1) *(1 -z(x,lam,de,et) ^be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kumaraswamy-Lomax distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/321162540_Beta_generated_kumaraswamy-G_family_of_distributions
betaKumaLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,de,et) 1 -(1 -(1 +x /lam) ^(-de)) ^et
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *et /lam *(1 +x /lam) ^(-de -1) *(1 -(1 +x /lam) ^(-de)) ^(et -1) *z(x,lam,de,et) ^(be *ga -1) *(1 -z(x,lam,de,et) ^be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kumaraswamy-Weibull distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/275484167_Exponentiated_Kumaraswamy-Dagum_distribution_with_applications_to_income_and_lifetime_data
betaKumaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,ga,et) 1 -(1 -exp(-(lam *x) ^ga)) ^et
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(be,de) *al *ga *et *(lam *x) ^ga /x /(exp(lam *x) ^ga -1) *(1 -z(x,lam,ga,et)) *z(x,lam,ga,et) ^(al *de -1) *(1 -z(x,lam,ga,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Kumaraswamy-Weibull distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/321162540_Beta_generated_kumaraswamy-G_family_of_distributions
betaKumaWei2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,de,et) 1 -(1 -exp(-x ^de /lam)) ^et
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *et /lam *x ^(de -1) *exp(-x ^de /lam) *(1 -exp(-x ^de /lam)) ^(et -1) *z(x,lam,de,et) ^(be *ga -1) *(1 -z(x,lam,de,et) ^be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Lindley distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/285585413_The_Transmuted_Exponentiated_Generalized-G_Family_of_Distributions
betaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-(x /lam))
  f <- function(x,lam,al,be) 1 /beta(al,be) /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Lindley geometric distribution == (2020-07-28) ==
## https://www.researchgate.net/publication/337810108_A_New_Extension_of_Lindley_Geometric_Distribution_and_its_Applications
betaLinGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) (1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *(1 -be) ^ga /lam *(1 +x) /(1 +lam +x) *(1 -z(x,lam)) ^(al -1) *z(x,lam) ^ga /(1 -be *z(x,lam)) ^(al +ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Lindley Poisson distribution == (2020-07-28) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
betaLinPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) (1 -h(x,lam,be)) /(1 -exp(be))
  h <- function(x,lam,be) be *(1 -(1 +x /(1 +lam)) *exp(-x /lam))
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /(exp(be) -1) /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam,be)^(al -1) *(1 -z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
betaLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-ga *x -de /2 *x ^2)
  f <- function(x,al,be,ga,de) 1 /beta(al,be) *(ga +de *x) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de)) ^be
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Linear failure rate geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
betaLineFRGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,de,et) exp(-de *x -et *x ^2 /2)
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) *(1 -be) ^ga *(de +et *x) *(1 -z(x,de,et)) ^(al -1) *z(x,de,et) ^ga /(1 -be *z(x,de,et)) ^(al +ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta linear failure rate logarithmic distribution == (2020-07-29) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
betaLineFRLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,de,et) 1 -log(h(x,be,de,et)) /log(1 -et)
  h <- function(x,be,de,et) 1 -et *exp(-be *x -de /2 *x ^2)
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) *(be +de *x) /log(1 -et) *(1 -1 /h(x,be,de,et)) *z(x,be,de,et) ^(al -1) *(1 -z(x,be,de,et)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta log-logistic distribution == (2020-03-07) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
betaLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(al *be -1) *(1 +(x /lam) ^be) *(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta log-normal distribution == (2020-07-30) ==
## https://www.academia.edu/5786493/Log-Weibull_extended_regression_model_Estimation_sensitivity_and_residual_analysis?email_work_card=title
betaLogNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) exp((log(x) -nu) /lam)
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /sqrt(2 *pi) /lam /x *exp(-1 /2 *z(x,nu,lam) ^2) *stcum(z(x,nu,lam)) ^(al -1) *(1 -stcum(z(x,nu,lam))) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta log-Weibull distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaLogWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 -exp(-exp((x -nu) /lam))
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /lam *exp((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^be
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-logistic distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
betaLogisF. <- function(x, y = NULL, ext = F, ...) {  # brother of Beta-logistic, Central-logistic
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /abs(lam) *exp(-al *(x -nu) /lam) *(1 +exp(-(x -nu) /lam)) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Lomax distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/280125764_The_Gumbel-Lomax_Distribution_Properties_and_Applications
betaLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(1 +x /lam) ^(-be *ga -1) *(1 -(1 +x /lam) ^(-be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Marshall-Olkin extended uniform distribution == (2020-07-31) ==
## https://www.researchgate.net/publication/278018772_The_Beta_Marshall-Olkin_Extended_Uniform_Distribution
betaMaolExtUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be *de *x ^(al -1) *(be *(de -x)) ^(ga -1) *(be *de +(1 -de) *x) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Marshall-Olkin Lomax distribution == (2020-07-31) ==
## https://pdfs.semanticscholar.org/588d/9299f07fbd140b71eeb87d931493ab4fe910.pdf?_ga=2.196684330.702420109.1596162416-1809871880.1595456056
betaMaolLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be) 1 -(1 +x) ^(-be)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be /(1 +x) *z(x,be) ^(al -1) *(de *(1 -z(x,be))) ^ga *(de +(1 -de) *z(x,be)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Marshall-Olkin normal distribution == (2020-03-25) ==
## https://www.researchgate.net/publication/279511677_The_beta_Marshall-Olkin_family_of_distributions
betaMaolNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be ^ga *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(ga -1) *(be +(1 -be) *z(x,nu,lam)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Marshall-Olkin Weibull distribution == (2020-03-25) ==
## https://www.researchgate.net/publication/279511677_The_beta_Marshall-Olkin_family_of_distributions
betaMaolWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) be ^ga /beta(al,ga) *de /lam *(x /lam) ^(de -1) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de)) ^ga *(be +(1 -be) *z(x,lam,de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}
betaMaolWeiQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  h <- function(x,lam,be,de) z(x,lam,de) /(be +(1 -be) *z(x,lam,de))
  Fx <- 'incbeta(h(x,lam,be,de), al, ga)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Beta Maxwell distribution == (2020-07-31) ==
## https://mds.marshall.edu/cgi/viewcontent.cgi?article=1005&context=etd
betaMaxF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 2 /sqrt(pi) *incgamma(1 /2 *(x /lam) ^2, 3 /2, lower_upper_regular = 1)
  f <- function(x,lam,al,be) 1 /beta(al,be) *sqrt(2 /pi) *x ^2 /lam ^3 *exp(-1 /2 *(x /lam) ^2) *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta modified Weibull distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/42256194_The_beta_modified_Weibull_distribution
betaModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,de,et) be *x ^de *exp(et *x)
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) *(et +de /x) *(1 -exp(-z(x,be,de,et)))^(al -1) *exp(-ga *z(x,be,de,et))
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-modified weighted Rayleigh distribution == (2020-02-26) ==
## https://www.researchgate.net/publication/320755650_The_Beta-Modified_Weighted_Rayleigh_Distribution_Application_to_Virulent_Tubercle_Disease
betaModWeightRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga) exp(-al *(be *ga ^2 +1) *x ^2)
  f <- function(x,al,be,ga,de,et) 2 /beta(de,et) *al *(be *ga ^2 +1) *x *(1 -z(x,al,be,ga)) ^(de -1) *z(x,al,be,ga) ^et
#   pLL <- pLL_al_be_ga  # NOTE?? the formula collpase by reducing al *(be *ga ^2 +1) --> al ??
#   z <- function(x,be) exp(-be *x ^2)
#   f <- function(x,al,be,ga) 2 /beta(al,ga) *be *x *(1 -z(x,be)) ^(al -1) *z(x,be) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Moyal distribution == (2020-08-01) ==
## https://pdfs.semanticscholar.org/328f/25caddc6a9a347b4b3c32f55ae2e6480267e.pdf?_ga=2.200868520.702420109.1596162416-1809871880.1595456056
betaMoyF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 /gamma(1 /2) *incgamma(1 /2 *exp(-(x -nu) /lam), 1 /2, lower_upper_regular = 1)
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /gamma(1 /2) ^(be -1) *sqrt(2 *pi) /lam *exp(-1 /2 *((x -nu) /lam +exp(-(x -nu) /lam))) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Nadarajah-Haghighi distribution == (2020-02-29) ==
## http://www.hjms.hacettepe.edu.tr/uploads/88b7c05c-9393-4f7a-9dc9-532a22747bf7.pdf
betaNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(1 -(1 +x /lam) ^be)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(1 +x /lam) ^(be -1) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Nadarajah-Kotz distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaNadaKotzF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,be,de,et,th) 1 -exp(-be *x ^de *(exp(et *x ^th) -1))
  f <- function(x,al,be,ga,de,et,th) be /beta(al,ga) *x ^(de -1) *((de +et *th *x ^th) *exp(et *x ^th) -de) *z(x,be,de,et,th) ^(al -1) *(1 -z(x,be,de,et,th)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Nakagami distribution == (2020-08-01) ==
## https://pdfs.semanticscholar.org/328f/25caddc6a9a347b4b3c32f55ae2e6480267e.pdf?_ga=2.200868520.702420109.1596162416-1809871880.1595456056
betaNakaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 /gamma(nu) *incgamma(nu /lam *x ^2, nu, lower_upper_regular = 1)
  f <- function(x,nu,lam,al,be) 2 /beta(al,be) /gamma(nu) *(nu *x ^2 /lam) ^nu /x *exp(-nu /lam *x ^2) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta normal distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/317527934_The_odd_log-logistic_logarithmic_generated_family_of_distributions_with_applications_in_different_areas
betaNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta odd log-logistic-exponential distribution == (2020-04-25) ==
## https://www.academia.edu/13868788/THE_BETA_ODD_LOG-LOGISTIC_GENERALIZED_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
betaOddLogLogisExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *z(x,lam) ^(al *be -1) *(1 -z(x,lam)) ^ga *(z(x,lam) ^be +(1 -z(x,lam)) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta odd log-logistic-Lomax distribution == (2020-04-25) ==
## https://www.academia.edu/13868788/THE_BETA_ODD_LOG-LOGISTIC_GENERALIZED_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
betaOddLogLogisLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) (1 +x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *z(x,lam,de) ^(al *be +1 /de) *(z(x,lam,de) ^be +(1 -z(x,lam,de)) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta odd log-logistic-normal distribution == (2020-04-25) ==
## https://www.academia.edu/13868788/THE_BETA_ODD_LOG-LOGISTIC_GENERALIZED_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
betaOddLogLogisNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al *be -1) *(1 -z(x,nu,lam)) ^(be *ga -1) *(z(x,nu,lam) ^be +(1 -z(x,nu,lam)) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta odd log-logistic-Weibull distribution == (2020-04-25) ==
## https://www.academia.edu/13868788/THE_BETA_ODD_LOG-LOGISTIC_GENERALIZED_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
betaOddLogLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-x ^de /lam)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de)) ^(be *ga) *(z(x,lam,de) ^be +(1 -z(x,lam,de)) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-P distribution == (2020-01-07) ==
## https://rmets.onlinelibrary.wiley.com/doi/epdf/10.1002/met.37
betaPF. <- function(x, y = NULL, ext = F, ...) {  # slightly different from Dagaum, Burr III, Beta-kappa, or Beta-P
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *((x /lam) ^al +1) ^(-be -1)  # ^(al -1) is unique point
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Pareto distribution == (2020-03-26) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
betaPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(-be *ga -1) *(1 -(x /lam) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Pareto-geometric distribution == (2020-08-01) ==
## https://www.researchgate.net/publication/257498255_A_new_generalization_of_the_Pareto-geometric_distribution
betaPareGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *(1 -be) ^ga *de /lam *(1 -(x /lam) ^(-de)) ^(al -1) *(x /lam) ^(-ga *de -1) *(1 -be *(x /lam) ^(-de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Pham distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaPhamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) 1 -exp(1 -de ^(x ^be))
  f <- function(x,al,be,ga,de) be *log(de) /beta(al,ga) *x ^(be -1) *de ^(x ^be) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Phani distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaPhaniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et_th
  z <- function(x,lam,ga,de,et,th) 1 -exp(-lam *(x -ga) ^de /(et -x) ^th)
  h <- function(x,ga,de,et,th) (x -ga) ^(de -1) /(et -x) ^(th -1) *(th *(x -ga) +de *(th -x))
  f <- function(x,lam,al,be,ga,de,et,th) lam /beta(al,be) *h(x,ga,de,et,th) *z(x,lam,ga,de,et,th) ^(al -1) *(1 -z(x,lam,ga,de,et,th)) ^be
  lazy_call.(x,y,pLL,f,ext)
}


## Beta power distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/320226600_The_Transmuted_Topp-Leone_G_Family_of_Distributions_Theory_Characterizations_and_Applications
betaPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(al *be -1) *(1 -(x /lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta prime distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Beta_prime_distribution
betaPrimeF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) *((x -nu) /lam) ^(al -1) *(1 +(x -nu) /lam) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta quadratic hazard rate distribution == (2020-08-01) ==
## https://www.researchgate.net/publication/281975001_The_Beta_Quadratic_Hazard_Rate_Distribution
betaQuadHazRateF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -exp(-ga *x -de /2 *x ^2 -et /3 *x ^3)
  f <- function(x,al,be,ga,de,et) 1 /beta(al,be) *(ga +de *x +et *x ^2) *z(x,ga,de,et) ^(al -1) *(1 -z(x,ga,de,et)) ^be
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Rayleigh distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
betaRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be) exp(-be /2 *x ^2)
  f <- function(x,al,be,ga) 1 /beta(al,ga) *be *x *z(x,be) ^(al -1) *(1 -z(x,be)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Rayleigh logarithmic distribution == (2020-07-30) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
betaRayLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de) 1 -log(h(x,be,de)) /log(1 -de)
  h <- function(x,be,de) 1 -de *exp(-be /2 *x ^2)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be /log(1 -de) *x *(1 -1 /h(x,be,de)) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
betaRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(-be -1) *z(x,lam,be) ^al *(1 -z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Sarhan-Zaindin modified Weibull distribution == (2020-05-19) ==
## https://www.academia.edu/20383842/Beta_Sarhan-Zaindin_modified_Weibull_distribution?email_work_card=title
betaSarZaiModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga) exp(-al *x -be *x ^ga)
  f <- function(x,al,be,ga,de,et) 1 /beta(de,et) *(al +be *ga *x ^(ga -1)) *(1 -z(x,al,be,ga)) ^(de -1) *z(x,al,be,ga) ^et
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Singh-Maddala distribution == (2020-08-02) ==
## https://www.sci-hub.tw/10.1007/s00477-016-1226-6
betaSinMadF. <- function(x, y = NULL, ext = F, ...) {  # betaDag: -de, betaSinMad: +de
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 +x ^(+de) /lam
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *x ^(+de -1) *z(x,lam,de) ^(-al *be -1) *(1 -z(x,lam,de) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Slymen-Lachenbruch distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaSlyLachF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,de,et) 1 -exp(-exp(et +be /2 /de *(x ^de -x ^(-de))))
  h <- function(x,be,de,et) be /2 /x *(x ^de +x ^(-de)) *exp(et +be /2 /de *(x ^de -x ^(-de)))
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) *h(x,be,de,et) *z(x,be,de,et) ^(al -1) *(1 -z(x,be,de,et)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Student's t distribution == (2020-08-03) ==
## https://www.pp.rhul.ac.uk/~cowan/stat/skew_t_jones_and_faddy.pdf
betaStuTF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al,be) x /sqrt(al +be +x ^2)
  f <- function(x,al,be) 1 /beta(al,be) *2 ^(1 -al -be) /sqrt(al +be) *(1 +z(x,al,be)) ^(al +1 /2) *(1 -z(x,al,be)) ^(be +1 /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta transmuted-Fréchet distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
betaTransFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) exp(-al *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be /lam *(x /lam) ^(-be -1) *z(x,lam,al,be) *(1 +de -2 *de *z(x,lam,al,be)) *(1 +de -de *z(x,lam,al,be)) ^(al -1) *(1 -z(x,lam,al,be) *(1+de -de *z(x,lam,al,be))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta transmuted-Gompertz distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
betaTransGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) exp(-lam *be *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *exp(x /lam) *z(x,lam,be) *(1 -de +2 *de *z(x,lam,be)) *((1 -z(x,lam,be)) *(1 +de *z(x,lam,be))) ^(al -1) *(1 -(1 -z(x,lam,be)) *(1 +de *z(x,lam,be))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta transmuted-Lindley distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
betaTransLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be) (1 +be +be *x) /(1 +be) *exp(-be *x)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be ^2 *(1 +x) *exp(-be *x) /(1 +be) *(1 -de +2 *de *z(x,be)) *((1 -z(x,be)) *(1 +de *z(x,be))) ^(al -1) *(1 -(1 -z(x,be)) *(1 +de *z(x,be))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta transmuted-Pareto distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
betaTransPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) (1 -(x /lam) ^(-be)) *(1 +de *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be /lam *(x /lam) ^(be -1) *(1 -de +2 *de *(x /lam) ^(-be)) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta transmuted power distribution == (2020-08-05) ==
## https://journal.stats.id/index.php/ijsa/article/view/204/121
betaTransPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) (x /lam) ^be
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be /x *(1 +de -2 *de *z(x,lam,be)) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be) *(1 +de -de *z(x,lam,be))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta transmuted Weibull distribution == (2020-02-22) ==
## https://www.researchgate.net/publication/276474098_The_Beta_Transmuted_Weibull_Distribution
## Never use the similar formula in; https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
betaTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be) exp(-al *x ^be)
  f <- function(x,al,be,ga,de,et) al *be *x ^(be -1) *z(x,al,be) *(1 -ga +2 *ga *z(x,al,be)) *((1 -z(x,al,be)) *(1 +ga *z(x,al,be))) ^(de -1) *(1 -(1 -z(x,al,be)) *(1 +ga *z(x,al,be))) ^(et -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta truncated Pareto distribution == (2020-08-05) ==
## http://www.est.ufmg.br/portal/arquivos/mestrado/dissertacoes/rodolfo_parte2.pdf
betaTruncPareF. <- function(x, y = NULL, ext = F, ...) {  # lam < x < de
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) (1 -(x /lam) ^(-be)) /(1 -(de /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be /lam *(x /lam) ^(-be -1) /(1 -(de /lam) ^(-be)) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Weibull distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
betaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(x /lam) ^(be -1) *exp(-ga *(x /lam) ^be) *(1 -exp(-(x /lam) ^be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## beta-Weibull-geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
betaWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *(1 -be) ^ga *de /lam *(x /lam) ^(de -1) *(1 -z(x,lam,de)) *z(x,lam,de) ^ga /(1 -be *z(x,lam,de)) ^(al +ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta-Weibull-logarithmic distribution == (2020-08-11) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwic7ZfQh5PrAhVTfd4KHajiAtgQFjABegQIARAB&url=http%3A%2F%2Fjirss.irstat.ir%2Farticle-1-287-fa.pdf&usg=AOvVaw2LqWFNnzOdi5sy9f2t294V
betaWeiLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -be *exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(de -1) /z(x,lam,be,de) *(log(z(x,lam,be,de) /(1 -be))) ^(al -1) *(log(1 /z(x,lam,be,de))) ^(ga -1) *(log(1 /(1 -be))) ^(-al -ga +1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta Weibull-Poisson distribution == (2020-01-14) ==
## http://chjs.mat.utfsm.cl/volumes/04/02/Percontini_etal(2013).pdf
betaWeiPoiF. <- function (x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  u <- function(x,be,de) exp(-de *x ^be)
  z <- function(x,lam,be,de) (exp(lam) -exp(lam *u(x,be,de))) /(exp(lam) -1)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de *x ^(be -1) *lam *u(x,be,de) *exp(lam *u(x,be,de)) *(exp(lam) -1) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta weighted exponential distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/315075720_The_Beta_Weighted_Exponential_Distribution_Theory_and_Application
betaWeightExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 /be *((1 +be) *(1 -exp(-x /lam)) -(1 -exp(-(1 +be) /lam *x)))
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *(1 +be) /be /lam *exp(-x /lam) *(1 -exp(-be /lam *x)) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Beta weighted Weibull distribution == (2020-02-23) ==
## https://www.researchgate.net/publication/315480980_LIFE_LENGTH_OF_COMPONENTS_ESTIMATES_WITH_BETA-WEIGHTED_WEIBULL_DISTRIBUTION
betaWeightWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,be,de) (de +1) /de *((1 -exp(-x ^be)) -1 /(de +1) *(1 -exp(-(de +1) *x ^be)))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *z(x,be,de) ^(al -1) *(1 -z(x,be,de)) ^(ga -1) *(de +1) /de *be /lam *x ^(be -1) *exp(-x ^be /lam) *(1 -exp(-de *x ^be /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Beta XTG (Xie, Tang, and Goh) distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
betaXTGF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -exp(-be *lam *(exp((x /lam) ^de) -1))
  f <- function(x,lam,al,be,ga,de) be *de /beta(al,ga) *(x /lam) ^(de -1) *exp((x /lam) ^de) *z(x,lam,be,de) ^(al -1) *(1 -z(x,lam,be,de)) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Birnbaum-Saunders distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
birnSaunF. <- function(x, y = NULL, ext = F, ...) {  # Models physical fatigue failure due to crack growth
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /2 /al /sqrt(2 *pi *lam ^2) *lam /(x -nu) *(sqrt((x -nu) /lam) +sqrt(lam /(x -nu))) *exp(1 /2 /al ^2 *(sqrt((x -nu) /lam) -sqrt(lam /(x -nu))) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Birnbaum-Saunders-t-Student distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/263311157_The_beta-Weibull_geometric_distribution
birnSaunTStuF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /(2 *al *sqrt(pi *lam *be)) *gamma((be +1) /2) /gamma(be /2) *(x +lam) /sqrt(x ^3) *(1 +1 /al ^2 /be *(x /lam +lam /x -2)) ^(-(be +1) /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Biweight distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
biWeightF. <- function(x, y = NULL, ext = F, ...) {  # Used in non-parametirc kenel density estimation
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 15 /16 /abs(lam) *((1 -((x -nu) /lam) ^2)) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Bramwell-Holdsworth-Pinton distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
bhpF. <- function(x, y = NULL, ext = F, ...) {  # similar to BHP, gammaEx, gGumbel, Gumbel, Moyal; (positive integer) n
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /gamma(pi /2) /abs(lam) *exp(pi /2 *(x -nu) /lam -exp((x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Burr II distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
burr2F. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_al
  f <- function(x,al) al *exp(-x) *(1 +exp(-x)) ^(al +1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr III distribution == (2020-07-21) ==
## https://projecteuclid.org/download/pdfview_1/euclid.bjps/1378729985
burr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al -1) *(1 +(x /lam) ^(-al)) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr III Marshall-Olkin Lindley distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/335367005_On_Burr_III_Marshal_Olkin_family_development_properties_characterizations_and_applications
burr3MaolLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) -log(ga *zz(x,lam) /(1 -(1 -ga) *zz(x,lam)))
  zz <- function(x,lam) (1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be,ga) al *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) /zz(x,lam) *z(x,lam,ga) ^(-al -1) *(1 +z(x,lam,ga) ^(-al)) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr III Marshall-Olkin Weibull distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/335367005_On_Burr_III_Marshal_Olkin_family_development_properties_characterizations_and_applications
burr3MaolWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,et) -log(et *exp(-x ^al) /(1 -(1 -et) *exp(-x ^al)))
  f <- function(x,al,be,ga,de,et) al *be *ga *x ^(al -1) /(1 -(1 -et) *exp(-x ^al)) *z(x,al,et) ^(-be -1) *(1 +de *z(x,al,et) ^(-be)) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr VIII distribution == (2020-01-25) ==
## https://github.com/cran/propagate/blob/master/R/distr-densities.R
burr8F. <- function(x, y = NULL, ext = F, ...) {  # (shape) al > 0
  pLL <- pLL_al
  f <- function(x,al) al *(pi /2) ^(-al) *1 /(exp(x) +exp(-x)) *(atan(exp(x))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr X distribution == (2020-02-21) ==
## https://www.researchgate.net/publication/303389358_The_beta_Burr_type_X_distribution_properties_with_application
burr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *al *x /lam ^2 *exp(-(x /lam) ^2) *(1 -exp(-(x /lam))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr X exponentiated Weibull distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/336568244_A_New_Extension_of_the_Lomax_Distribution_with_Properties_and_Applications_to_Failure_Times_Data
burr10ExpLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(1 +x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(1 +x /lam) ^(-al -1) *z(x,lam,al) ^(2 *be -1) *(1 -z(x,lam,al) ^be) ^(-3) *exp(-(z(x,lam,al) ^be /(1 -z(x,lam,al) ^be)) ^2) *(1 -exp(-(z(x,lam,al) ^be /(1 -z(x,lam,al) ^be)) ^2)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr X exponentiated Weibull distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
burr10ExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -exp(-x ^al)
  f <- function(x,al,be,ga) 2 *al *be *ga *x ^(al -1) *(1 -z(x,al)) *z(x,al) ^(2 *be -1) *(1 -z(x,al) ^be) ^(-3) *exp(-(z(x,al) ^be /(1 -z(x,al) ^be)) ^2) *(1 -exp(-(z(x,al) ^be /(1 -z(x,al) ^be)) ^2)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr X Fréchet distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/335368890_The_Burr_X_Frechet_Model_for_Extreme_Values_Mathematical_Properties_Classical_Inference_and_Bayesian_Analysis
burr10FreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) 2 *al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^2 /(1 -z(x,lam,al)) ^3 *exp(-(z(x,lam,al) /(1 -z(x,lam,al))) ^2) *(1 -exp(-(z(x,lam,al) /(1 -z(x,lam,al))) ^2)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr X Lomax distribution == (2020-03-07) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
burr10LomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-((1 +x /lam) ^al -1) ^2)
  f <- function(x,lam,al,be) 2 *al *be /lam *(1 +x /lam) ^(al -1) *((1 +x /lam) ^al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr X Nadarajah Haghighi distribution == (2020-03-02) ==
## https://thescipub.com/pdf/10.3844/jmssp.2019.146.157
burr10NadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-((1 -exp(1 -(1 +x /lam) ^al)) /exp(1 -(1 +x /lam) ^al)) ^2)
  f <- function(x,lam,al,be) 2 *al *be /lam *(1 +x /lam) ^(al -1) *(1 -exp(1 -(1 +x /lam) ^al)) /exp(2 *(1 -(1 +x /lam) ^al)) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Burr_distribution
burr12F. <- function(x, y = NULL, ext = F, ...) {  # al, be > 0, (scale) lam > 0; similar to Singh-Maddala (nu ≠ 0)
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) abs(al *be /lam) *(x /lam) ^(al -1) *(1 + (x /lam) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII Fréchet distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/337826448_A_New_Extended_Frechet_Distribution_Properties_and_Estimation
burr12FreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^be /(1 -z(x,lam,al)) ^(be +1) *(1 +(z(x,lam,al) /(1 -z(x,lam,al))) ^be) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII-geometric distribution == (2020-01-26) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
burr12GeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *(1 -ga) *x ^(al -1) *(1 +x ^al) ^(-be -1) *(1 -ga *(1 +x ^al) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII inverse Rayleigh distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/337826448_A_New_Extended_Frechet_Distribution_Properties_and_Estimation
burr12InvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-(x /lam) ^(-2))
  f <- function(x,lam,al,be) 2 *al *be /lam *(x /lam) ^(-3) *z(x,lam) ^al /(1 -z(x,lam)) ^(al +1) *(1 +(z(x,lam) /(1 -z(x,lam))) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII negative binomial distribution == (2020-06-24) ==
## https://www.academia.edu/10609355/The_Burr_XII_Negative_Binomial_Distribution_with_Applications_to_Lifetime_Data
burr12NegaBiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(1 -de) ^ga /(1 -(1 -de) ^ga) *(x /lam) ^(al -1) *z(x,lam,al) ^(-be -1) *(1 -de *z(x,lam,al) ^(-be)) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII-Poisson distribution == (2020-01-26) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
burr12PoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *ga /(exp(ga) -1) *x ^(al -1) *(1 +x ^al) ^(-be -1) *exp(ga *(1 +x ^al) ^(-be))
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII-Weibull distribution == (2020-01-24) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&uact=8&ved=2ahUKEwi58ceP8ZvnAhVbFogKHQPXD50QFjADegQIBBAC&url=https%3A%2F%2Fwww.mdpi.com%2F2571-905X%2F1%2F1%2F6%2Fpdf&usg=AOvVaw3SM9N6fyFY0hS_fTpTDvpT
burr12WeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  f  <- function(x,al,be,ga,de) (al *be *x ^(be -1) +ga *de *x ^(ga -1)) *(1 +x ^ga) ^(-de -1) *exp(-al *x ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Burr XII-Weibull-logarithmic distribution == (2020-01-24) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&uact=8&ved=2ahUKEwi58ceP8ZvnAhVbFogKHQPXD50QFjADegQIBBAC&url=https%3A%2F%2Fwww.mdpi.com%2F2571-905X%2F1%2F1%2F6%2Fpdf&usg=AOvVaw3SM9N6fyFY0hS_fTpTDvpT
burr12WeiLogF. <- function (x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga,de) (1 +x ^ga) ^(-de -1) *exp(-al *x ^be)
  f <- function(x,al,be,ga,de,et) (al *be *x ^(be -1) +ga *de *x ^(ga -1)) *z(x,al,be,ga,de) *et /log(1 -et) /(et *(1 +x ^ga) *z(x,al,be,ga,de) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## BW distribution == (2020-01-26) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
bwF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be /lam ^be *x ^(be -1) *exp(-ga *(x /lam) ^be) *(1 -exp(-(x /lam) ^be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Cauchy distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Cauchy_distribution
cauchyF. <- function(x, y = NULL, ext = F, ...) {  # (location) mu, (scale) lam > 0; similar to Pearson VII, Cauchy, RBW, and Student's t
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /pi /lam /(1 +((x -nu) /lam) ^2) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Central-beta distribution == (2020-01-13) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
centBetaF. <- function(x, y = NULL, ext = F, ...) {  # Reshaped; gamma(2 *al) /(gamma(al)) ^2  -->  1 /beta(al,al)
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /beta(al,al) *2 ^(-2 *al +1) /abs(lam) *(1 -((x -nu) /lam) ^2) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Central-logistic distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
centLogisF. <- function(x, y = NULL, ext = F, ...) {  # brother of Beta-logistic, Central-logistic
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /beta(al,al) /abs(lam) *exp(-al *(x -nu) /lam) *(1 +exp(-(x -nu) /lam)) ^(-2 *al)
  lazy_call.(x,y,pLL,f,ext)
}


## Champernowne distribution == (2020-01-06) ==
## https://en.wikipedia.org/wiki/Champernowne_distribution
champerF. <- function (x, y = NULL, ext = F, ...) {  # Described a logarithm of income
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al /(cosh((x -nu) /lam) +be)
  lazy_call.(x,y,pLL,f,ext)
}


## Chen distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
chenF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al) 1 -exp(x ^al)
  f <- function(x,al,be) al *be *x ^(al -1) *(1 -z(x,al)) *z(x,al) ^(-1) *exp(be *z(x,al) *exp(1 /z(x,al)) +1 /z(x,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Chi distribution == (2020-01-25) ==
## http://www.ntrand.com/jp/chi-distribution/
chiF. <- function(x, y = NULL, ext = F, ...) {  # (degrees of freedom) n > 0, x >= 0;  n := al
  pLL <- pLL_al
  f <- function(x,al) 2 ^(-al /2 +1) /gamma(al /2) *x ^(al -1) *exp(-x ^2 /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Chi-square distribution == (2019-12-29) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
chiSqrF. <- function(x, y = NULL, ext = F, ...) {  # interger n := al
  pLL <- pLL_al
  f <- function(x,al) 1 /2 /gamma(al /2) *(x /2) ^(al /2 -1) *exp(- (x /2))
  lazy_call.(x,y,pLL,f,ext)
}


## Chi-square exponetial distribution == (2019-12-29) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
chiSqrExpF. <- function(x, y = NULL, ext = F, ...) {  # = log-chi-square; interger n := al
  pLL <- pLL_al
  f <- function(x,al) 1 /(2 ^(al /2)) /gamma(al /2) *exp(al *x /2-exp(x) /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Complementary Chen logarithmic distribution == (2020-12-15) ==
## https://www.academia.edu/25855996/Exponentiated_Extended_Weibull_Power_Series_Class_of_Distributions?email_work_card=title
compChenLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) 1 -exp(-al *exp(x ^be))
  f <- function(x,al,be,ga) al *be *ga /(-log(1 -ga)) *x ^(be -1) *exp(x ^be) *(1 -z(x,al,be)) /(1 -ga *z(x,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Complementary generalized transmuted Poisson-Lindley distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/311714502_The_Complementary_Generalized_Transmuted_Poisson-G_Family_of_Distributions
compGenTransPoiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) exp(al *exp(-be *x) *(1 +be +be *x) /(1 +be))
  f <- function(x,al,be,ga) al *be ^2 *(1 +x) *exp(-be *x) /(exp(al) -1) /(1 +al) *z(x,al,be) *(1 -ga *(exp(al) -2 *z(x,al,be) +1) /(exp(al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Complementary generalized transmuted Poisson-Weibull distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/311714502_The_Complementary_Generalized_Transmuted_Poisson-G_Family_of_Distributions
compGenTransPoiWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) exp(al *exp(-x ^be))
  f <- function(x,al,be,ga) al *be *x ^(be -1) *exp(-x ^be) /(exp(al) -1) *z(x,al,be) *(1 -ga *(exp(al) -2 *z(x,al,be) +1) /(exp(al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Complementary geometric transmuted-Lindley distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/312601087_The_complementary_geometric_transmuted-G_family_of_distributions_Model_properties_and_application
compGeoTransLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) (1 +al +al *x) /(1 +al) *exp(-al *x)
  f <- function(x,al,be,ga) al ^2 *be *(1 +x) /(1 +al +al *x) *z(x,al) *(1 -ga +2 *ga *z(x,al)) *(1 -(1 -be) *(1 -z(x,al)) *(1 +ga *z(x,al))) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Complementary geometric transmuted-Weibull distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/312601087_The_complementary_geometric_transmuted-G_family_of_distributions_Model_properties_and_application
compGeoTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) exp(-(x /lam) ^be)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(be -1) *z(x,lam,be) *(1 -ga +2 *ga *z(x,lam,be)) *(1 -(1 -al) *(1 -z(x,lam,be)) *(1 +ga *z(x,lam,be))) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Complementary Weibull geometric distribution == (2020-02-21) ==
## https://www.researchgate.net/publication/303299501_A_New_Lifetime_Model_with_Variable_Shapes_for_the_Hazard_Rate
compWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-(x /lam) ^be)
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(be -1) *z(x,lam,be) *(al +(1 -al) *z(x,lam,be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Compound Rayleigh distribution == (2020-07-21) ==
## https://www.researchgate.net/publication/317248481_The_beta_compound_Rayleigh_distribution_Properties_and_applications
compoRayF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *al /lam *x *(1 +x ^2 /lam) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Dagum distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Dagum_distribution
dagumF. <- function(x, y = NULL, ext = F, ...) {  # aka inverse Burr III; slightly different from Beta-kappa and Beta-P
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al *be) *(1 +(x /lam) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}
## Slightly improved; and if you want, ^(al *be) --> ^(al *be -1) will improve a bit more...(Beta-kappa type) == (2020-02-08) ==
dagum2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al *be /lam *((x -nu) /lam) ^(al *be) *(1 +((x -nu) /lam) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Davis distribution == (2020-01-04) ==
## https://en.wikipedia.org/wiki/Davis_distribution
davisF. <- function(x, y = NULL, ext = F, ...) {  # Note: used Riemann zeta function;  income sizes
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) /'VGAM'::zeta(al) /lam *((x -nu) /lam) ^(-al -1) *(exp(((x -nu) /lam) ^(-1)) -1) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Double truncated Dagum distribution == (2020-03-09) ==
## https://www.researchgate.net/publication/312605218_The_Double_Truncated_Dagum_Distribution_with_Applications
doubleTruncDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  f <- function(x,lam,al,be,ga,de) al *be /lam *x ^(-al -1) *(1 +x ^(-al) /lam) ^(-be -1) *((1 +ga ^(-al) /lam) ^(-be) -(1 +de ^(-al) /lam) ^(-be)) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Epanechnikov distribution == (2020-01-03) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
epaF. <- function(x, y = NULL, ext = F, ...) {  # Used in non-parametirc kenel density estimation
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 3 /4 /abs(lam) *(1 -((x -nu) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponent power-Weibull distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/340027510_New_methods_to_define_heavy-tailed_distributions_with_applications_to_insurance_data
expPowWeiF. <- function(x, y = NULL, ext = F, ...) {  # heavey tail
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *ga /(exp(1) -1) *x ^(ga -1) *(al +be *x ^ga) ^(-2) *exp(be *x ^ga /(al +be *x ^ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential Burr-III distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
expBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *x ^(-be -1) *(1 +x ^(-be)) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential exponential geometric distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
expExpGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *(1 -be) /lam *(1 -z(x,lam)) *z(x,lam) ^(-al +1) *(1 -be +be *z(x,lam) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential extension distribution == (2020-08-05) ==
## https://www.academia.edu/23043652/The_Kumaraswamy_Generalized_Power_Weibull_Distribution?email_work_card=view-paper
expExtF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(1 +x /lam) ^(al -1) *exp(1 -(1 +x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential generalized beta distribution == (2020-01-27) ==
## https://en.wikipedia.org/wiki/Generalized_beta_distribution
expGenBetaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) exp((x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) /abs(lam) *z(x,nu,lam) ^al *(1 -(1 -be) *z(x,nu,lam)) ^(ga -1) *(1 +be *z(x,nu,lam)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
expGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) (1 -al) /lam *z(x,lam) /(1 -al *z(x,lam)) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential logarithmic distribution == (2020-07-30) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
expLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al,be,ga) 1 /lam /log(1 -al) *(1 -(1 -al *exp(-x /lam)) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential Lomax distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/322487714_On_the_inferences_and_applications_of_transmuted_exponential_Lomax_distribution
expLom3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam  *(1 +x /lam) ^(al -1) *exp(-be *(1 +x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential modified Burr-III distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
expModBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *x ^(-be -1) *(1 +x ^(-be) /lam) ^(-lam *ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential Pareto distribution == (2020-07-22) ==
## http://www.iapress.org/index.php/soic/article/view/soic.190612a/568
expPareF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(be -1) *exp(-al *(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential-Poisson distribution == (2020-07-12) ==
## https://www.academia.edu/11590115/A_generalization_of_the_exponential-Poisson_distribution?email_work_card=title
expPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) al /lam /(1 -exp(-al)) *z(x,lam) *exp(-al *(1 -z(x,lam)))
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential Poisson Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/306347030_Weibull_Lindley_distribution
expPoiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam,al) 1 +al -exp(-x /lam)
  f <- function(x,lam,al) 1 /lam *al ^2 *(1 +al) ^2 /(al +(1 +al) ^2) *(2 +z(x,lam,al)) /z(x,lam,al) ^3 *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential power distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
expPowF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0, (power) be
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /2 /lam /gamma(1 /al) *exp(-abs((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponential ratio distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
expRatioF. <- function(x, y = NULL, ext = F, ...) {  # scale lam := al
  pLL <- pLL_al
  f <- function(x,al) 1 /abs(al) *(1 +x /al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Expotentially modified Gaussian distribution == (2020-01-27) ==
## https://en.wikipedia.org/wiki/Exponentially_modified_Gaussian_distribution
expModGauss3F. <- function(x, y = NULL, ext = F, ...) {  # avg := μ+τ, var := σ^2 +τ^2
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /2 *exp(al *(nu +al *lam ^2 /2 -x)) *erfc((nu +al *lam ^2 -x) /sqrt(2) /lam)
  lazy_call.(x,y,pLL,f,ext)
}
expModGauss4F. <- function(x, y = NULL, ext = F, ...) {  # avg := μ+τ, var := σ^2 +τ^2
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) be *lam /al *sqrt(pi /2) *exp(1/2 *(lam /al) ^2 - (x -nu) /al) *erfc(1 /sqrt (2) *(lam /al - (x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated additive Weibull distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
expAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,ga,de,et) 1 -exp(-(be *x ^ga +de *x ^et))
  f <- function(x,al,be,ga,de,et) al *(be *ga *x ^(ga -1) +de *et *x ^(et -1)) *(1 -z(x,be,ga,de,et)) *z(x,be,ga,de,et) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Burr XII Poisson distribution == (2020-06-24) ==
## https://www.academia.edu/10609355/The_Burr_XII_Negative_Binomial_Distribution_with_Applications_to_Lifetime_Data
expBurr12PoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam /(1 -exp(-de)) *(x /lam) ^(al -1) *z(x,lam,al) ^(-be -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1) *exp(-de *(1 -z(x,lam,al) ^(-be)) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Burr XII Weibull distribution == (2020-01-24) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=2ahUKEwi58ceP8ZvnAhVbFogKHQPXD50QFjACegQIBxAC&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F656%2F07%2BNo.1%2B255.pdf&usg=AOvVaw0XtAOV7H9-RAVrwr2v_AYV
expBurr12WeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga,et) (1 +x ^ga) ^(-et) *exp(-al *x ^be)
  f <- function(x,al,be,ga,de,et) de /(1 +x ^ga) *(-al *be *x ^(be -1) +(ga *et +x) *x ^(ga -1) +1) *(1 -z(x,al,be,ga,et)) ^(de -1) *z(x,al,be,ga,et)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Chen logarithmic distribution == (2020-12-14) ==
## https://www.academia.edu/25855996/Exponentiated_Extended_Weibull_Power_Series_Class_of_Distributions?email_work_card=title
expChenLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be) 1 -exp(-al *exp(x ^be))
  f <- function(x,al,be,ga,de) al *be *ga *de /(-log(1 -de)) *x ^(be -1) *exp(x ^be) *(1 -z(x,al,be)) *z(x,al,be) ^(ga -1) /(1 -de *z(x,al,be) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated chi-square distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expChiSqrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al) incgamma((x /2) ^2, al /2, lower_upper_regular = 3)
  f <- function(x,al,be) 1 /gamma(al /2) *be *(x /2) ^(al -1) *exp(-(x /2) ^2) *z(x,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated exponential distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
expExpF. <- function (x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /abs(lam) *exp(-(x -nu) /lam) *(1 -exp(-(x -nu) /lam) ) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated exponential logistic distribution == (2020-12-15) ==
## https://www.researchgate.net/publication/275354921_A_new_class_of_generalized_logistic_distribution
expExpLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 +exp(x /lam)
  f <- function(x,lam,al,be) al *be /lam *(1 +z(x,lam)) *z(x,lam) ^(-al -1) *(1 -z(x,lam) ^(-al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated exponential Poisson distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
expExpPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam /(1 -exp(-al)) *(1 -z(x,lam)) *z(x,lam) ^(be -1) *exp(-al *z(x,lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated exponential Rayleigh distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/335526906_On_the_Exponentiated_Weibull_Rayleigh_Distribution
expExpRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(-al *(exp(x ^2 /lam) -1))
  f <- function(x,lam,al,be) 2 *al *be /lam *x *exp(x ^2 /lam) *(exp(x ^2 /lam) -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponetiated exponentiated exponential-Weibull distribution == (2020-01-07) ==
## https://www.researchgate.net/publication/326974027_A_New_Five_Parameter_Lifetime_Distribution_Properties_and_Application
expExpExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(de -1) *(1 -z(x,lam,de)) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de) ^al) ^(be -1) *(1 -(1 -z(x,lam,de) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated exponentiated Gompertz distribution == (2020-07-23) ==
## https://pdfs.semanticscholar.org/0240/236eaa7ac51bee085467774a3877fb04fc85.pdf?_ga=2.244065221.1789535964.1595456056-1809871880.1595456056
expExpGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-ga *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *exp(x /lam) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated extended half-normal distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/233408424_General_properties_for_the_beta_extended_half-normal_model
expExtHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al ^(1 /be) *be *ga /gamma(1 /be) *exp(-al *x ^be) *pgamma(al *x ^be, 1 /be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Fréchet distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/315382266_The_Exponentiated_Generalized_Standardized_Half-logistic_Distribution
expFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-be -1) *z(x,lam,be) *(1 -z(x,lam,be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Fréchet Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
expFrePoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) 1 /(exp(be) -1) *(exp(be *exp(-x ^(-ga))) -1)
  f <- function(x,al,be,ga) al *be *ga /(exp(be) -1) *x ^(-ga -1) *exp(-x ^(-ga) +be *exp(-x ^(-ga))) *z(x,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated gamma distribution == (2020-01-08) ==
## http://downloads.hindawi.com/journals/jam/2012/284296.pdf
expGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /lam *((x -nu) /lam) *exp(-(x -nu) /lam) *(1 -(1 +(x -nu) /lam) *exp(-(x -nu) /lam)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Burr type X distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/316862424_New_extension_of_Burr_type_X_distribution_properties_with_application
expGenBurr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1) *(1 -(1 -z(x,lam) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized extended exponential distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/303208805_The_exponentiated_generalized_extended_exponential_distribution
expGenExtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be,ga) (al +be +al *be *x) *exp(-al *ga *x)
  f <- function(x,al,be,ga,de) be ^2 *ga *de /(al +be)^(ga *de) *(1 +al *x) /(al +be +al *be *x) *z(x,al,be,ga) ^ga *((al +be) ^ga -z(x,al,be,ga)) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}
expGenExtExpQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '((al +be) ^ga -(al +be +al *be *x) ^ga *exp(-al *ga *x)) ^de *(al +be) ^(-ga *de)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Exponentiated generalized extended Gompertz distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/330185055_The_exponentiated_generalized_extended_Gompertz_distribution
expGenExtGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-de *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) al *be *ga *de *(1 -z(x,lam,de)) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de) ^al) ^(be -1) *(1 -(1 -z(x,lam,de) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}
expGenExtGomQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '(1 -(1 -(1 -exp(-lam *de *(exp(x /lam) -1))) ^al) ^be) ^ga'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Exponentiated generalized Frechet distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
expGenFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be,ga) 1 -(1 -exp(-(x /lam) ^(-be))) ^ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-be -1) *(exp((x /lam) ^(-be)) -1) ^(-1) *(1 -z(x,lam,be,ga)) *z(x,lam,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponenetiated generalized gamma distribution == (2020-08-15) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expGenGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) incgamma((x /lam) ^be, al, lower_upper_regular = 3)
  f <- function(x,lam,al,be,ga) 1 /gamma(al) *be *ga /lam *(x /lam) ^(al *be -1) *exp(-(x /lam) ^be) *z(x,lam,al,be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Gumbel distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/273061479_The_Exponentiated_Generalized_Gumbel_Distribution
expGenGumF. <- function(x, y, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 -exp(-(exp(-(x -nu) /lam)))
  f <- function(x,nu,lam,al,be) al *be /lam *exp(-((x -nu) /lam +exp(-(x -nu) /lam))) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized half-normal distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) incgamma(h(x,lam,al) ^(2 *al), 1 /2, lower_upper_regular = 3)
  h <- function(x,lam,al) x /lam /2 ^(1 /2 /al)
  f <- function(x,lam,al,be) 2 /gamma(1 /2) *al *be /x *h(x,lam,al) ^al *exp(-h(x,lam,al) ^(2 *al)) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized inverse Weibull distribution == (2021-01-05) ==
## https://www.researchgate.net/publication/326487806_Stress-Strength_Reliability_Estimation_for_Exponentiated_Generalized_Inverse_Weibull_Distribution
expGenInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-(x /lam) ^(-ga))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Lomax distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (1 +x /lam) ^(-2 *al)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(1 +x /lam) ^(-1) *z(x,lam,al) ^be *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Marshall-Olkin-exponential distribution == (2020-05-15) ==
## https://www.academia.edu/39926322/The_Exponentiated_Generalized_Marshall-_Olkin_Family_of_Distribution_Its_Properties_and_Applications?email_work_card=title
expGenMaolExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be,ga) al *be /lam *(ga *z(x,lam)) ^al *(1 -(1 -ga) *z(x,lam)) ^(-al *be -1) *((1 -(1 -ga) *z(x,lam)) ^al -(ga *z(x,lam)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Marshall-Olkin-Lomax distribution == (2020-05-15) ==
## https://www.academia.edu/39926322/The_Exponentiated_Generalized_Marshall-_Olkin_Family_of_Distribution_Its_Properties_and_Applications?email_work_card=title
expGenMaolLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) (1 +x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) al *be *de /lam *(1 +x /lam) ^(-1) *(ga *z(x,lam,de)) ^al *(1 -(1 -ga) *z(x,lam,de)) ^(-al *be -1) *((1 -(1 -ga) *z(x,lam,de)) ^al -(ga *z(x,lam,de)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Marshall-Olkin-Weibull distribution == (2020-05-15) ==
## https://www.academia.edu/39926322/The_Exponentiated_Generalized_Marshall-_Olkin_Family_of_Distribution_Its_Properties_and_Applications?email_work_card=title
expGenMaolWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(-x ^de /lam)
  f <- function(x,lam,al,be,ga,de) al *be *de /lam *x ^(be -1) *(ga *z(x,lam,de)) ^al *(1 -(1 -ga) *z(x,lam,de)) ^(-al *be -1) *((1 -(1 -ga) *z(x,lam,de)) ^al -(ga *z(x,lam,de)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized power exponential distribution == (2020-08-05) ==
## https://www.academia.edu/23043652/The_Kumaraswamy_Generalized_Power_Weibull_Distribution?email_work_card=view-paper
expGenPowExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al,be) al *be /lam *(1 +x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized power function distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/334390483_A_New_Generalization_of_Power_Function_Distribution_Properties_and_Estimation_based_on_Censored_Samples
expGenPowFunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(x /lam) ^al
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Quasi Lindley distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenQuaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (1 +x /lam /(1 +al)) *exp(-2 *x /lam)
  f <- function(x,lam,al,be,ga) 2 *be *ga /lam *(al +x /lam) /(1 +al +x /lam) *z(x,lam,al) ^be *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized standardized half-logistic distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/315382266_The_Exponentiated_Generalized_Standardized_Half-logistic_Distribution
expGenStdHalfLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x) 1 +exp(-x)
  f <- function(x,al,be) al *be *(2 *(z(x) -1)) ^al *(z(x) ^al -(2 *(z(x) -1)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Topp-Leone exponential distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenTopLeoExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-2 *(x /lam))
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1) *(1 -(1 -z(x,lam) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Topp-Leone Lindley distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenTopLeoLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al) (1 +al /(1 +al) *x) *exp(-2 *al *x)
  f <- function(x,al,be,ga,de) 2 *al ^2 *be *ga *de *(1 +x) /(1 +al +al *x) *z(x,al) *(1 -z(x,al)) ^(be -1) *(1 -(1 -z(x,al)) ^be) ^(ga -1) *(1 -(1 -(1 -z(x,al)) ^be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Topp-Leone Lomax distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenTopLeoLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) (1 +x /lam) ^(-2 *al)
  f <- function(x,lam,al,be,ga,de) 2 *al *be *ga *de /lam *(1 +x /lam) ^(-1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1) *(1 -(1 -z(x,lam,al)) ^be) ^(ga -1) *(1 -(1 -(1 -z(x,lam,al)) ^be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Topp-Leone quasi Lindley distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenTopLeoQuaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) (1 +x /lam /(1 +al)) *exp(-2 *x /lam)
  f <- function(x,lam,al,be,ga,de) 2 *be *ga *de /lam *(al +x /lam) /(1 +al +x /lam) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1) *(1 -(1 -z(x,lam,al)) ^be) ^(ga -1) *(1 -(1 -(1 -z(x,lam,al)) ^be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Topp-Leone Weibull distribution == (2020-04-09) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenTopLeoWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -exp(-2 *(x /lam) ^al)
  f <- function(x,lam,al,be,ga,de) 2 *al *be *ga *de /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1) *(1 -(1 -z(x,lam,al) ^be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized U-quadratic distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
expGenUQuadF. <- function(x, y = NULL, ext = F, ...) {  # Slightly different from kumaUQuad by z = 1 -... vs z = ...
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be) 1 -(be /3) *((x -al) ^3 -(al -be) ^3)
  f <- function(x,al,be,ga,de) be *ga *de *(x -al) ^2 *z(x,al,be) ^(ga -1) *(1 -z(x,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated generalized Weibull distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-2 *(x /lam) ^al)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *(1 -z(x,lam,al)) ^(be -1) *(1 -(1 -z(x,lam,al)) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Gompertz distribution == (2020-07-23) ==
## https://pdfs.semanticscholar.org/0240/236eaa7ac51bee085467774a3877fb04fc85.pdf?_ga=2.244065221.1789535964.1595456056-1809871880.1595456056
expGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-be *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al *be /lam *exp(x /lam) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Gumbel distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/337948732_Exponentiated_Gumbel_Exponential_distribution_Properties_and_Applications
expGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) 1 -exp(-exp(-(x -nu) /lam))
  f <- function(x,nu,lam,al) al /lam *exp(-(x -nu) /lam) *(1 -z(x,nu,lam)) *z(x,nu,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Gumbel exponential distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/337948732_Exponentiated_Gumbel_Exponential_distribution_Properties_and_Applications
expGumExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be,ga) exp(-exp(be *ga) *(exp(x /lam) -1) ^(-be))
  f <- function(x,lam,al,be,ga) al *be /lam *exp(be *ga +x /lam) *(exp(x /lam) -1) ^(-be -1) *(1 -z(x,lam,be,ga)) *z(x,lam,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Gumbel type-2 distribution == (2020-06-11) ==
## https://www.researchgate.net/publication/305889245_The_Exponentiated_Gumbel_Type-2_Distribution_Properties_and_Application
expGum2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-x ^(-al) /lam)
  f <- function(x,lam,al,be) al *be /lam *x ^(-al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated half-Cauchy distribution == (2020-05-01) ==
## https://www.researchgate.net/publication/326441057_The_Log-Odd_Normal_Generalized_Family_of_Distributions_with_Application
expHalfCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 2 /pi *atan(x /lam)
  f <- function(x,lam,al) 2 /pi /lam *(1 +(x /lam) ^2) ^(-1) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated half logistic distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/321295370_Kumaraswamy_Half-Logistic_Distribution_Properties_and_Applications
expHalfLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) 2 *al /lam *z(x,lam) *((1 -z(x,lam)) /(1 +z(x,lam))) ^(al -1) *(1 +z(x,lam)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated half-logistic-Fréchet distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/263086572_The_Exponentiated_Half-Logistic_Family_of_Distributions_Properties_and_Applications
expHalfLogisFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(-al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1) *(1 +z(x,lam,al) ^be) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated half-logistic generalized half-normal distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/263086572_The_Exponentiated_Half-Logistic_Family_of_Distributions_Properties_and_Applications
expHalfLogisGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -stcum((x /lam) ^al)
  f <- function(x,lam,al,be,ga) 2 ^be *al *be *ga /lam *sqrt(2 /pi) *(x /lam) ^(al -1) *exp(-1 /2 *(x /lam) ^(2 *al)) *z(x,lam,al) ^(be -1) *(1 -(2 *z(x,lam,al)) ^be) ^(ga -1) *(1 +(2 *z(x,lam,al)) ^be) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated half-logistic-log-logistic distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/263086572_The_Exponentiated_Half-Logistic_Family_of_Distributions_Properties_and_Applications
expHalfLogisLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(-1) *(-1 +z(x,lam,al)) *z(x,lam,al) ^(-be -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1) *(1 +z(x,lam,al) ^(-be)) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated half-normal distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) incgamma((x /lam) ^2 /2, 1 /2, lower_upper_regular = 3)
  f <- function(x,lam,al) sqrt(2) /gamma(1 /2) *al /lam *exp(-(x /lam) ^2 /2) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated inverse exponential Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
expInvExpPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 /(exp(be) -1) *(exp(be *exp(-x ^(-1) /lam)) -1)
  f <- function(x,lam,al,be) al *be /lam /(exp(be) -1) *x ^(-2) *exp(-x ^(-1) /lam +be *exp(-x ^(-1) /lam)) *z(x,lam,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated inverse Rayleigh Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
expInvRayPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 /(exp(be) -1) *(exp(be *exp(-x ^(-2) /lam)) -1)
  f <- function(x,lam,al,be) 2 *al *be /lam /(exp(be) -1) *x ^(-3) *exp(-x ^(-2) /lam +be *exp(-x ^(-2) /lam)) *z(x,lam,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated inverse Weibull Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
expInvWeiPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be,ga) 1 /(exp(be) -1) *(exp(be *exp(-x ^(-ga) /lam)) -1)
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(exp(be) -1) *x ^(-ga -1) *exp(-x ^(-ga) /lam +be *exp(-x ^(-ga) /lam)) *z(x,lam,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Kumaraswamy Dagum distribution == (2020-07-29) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
expKumaDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 -(1 +x ^(-al) /lam) ^(-be)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *x ^(-al -1) *(1 +x ^(-al) /lam) ^(-be -1) *z(x,lam,al,be) ^(ga -1) *(1 -z(x,lam,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Kumaraswamy exponential distribution == (2020-07-28) ==
## https://www.mdpi.com/2227-7390/8/1/23
expKumaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(1 -exp(-x /lam)) ^al
  f <- function(x,lam,al,be,ga) al *be *de /lam *exp(-x /lam) *(1 -exp(-x /lam)) ^(al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Kumaraswamy-Weibull distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/275484167_Exponentiated_Kumaraswamy-Dagum_distribution_with_applications_to_income_and_lifetime_data
expKumaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,ga,et)  1 -(1 -exp(-(et *x) ^ga)) ^be
  f <- function(x,al,be,ga,de,et) al *be *ga *de *(et *x) ^ga /x /(exp((et *x) ^ga) -1) *(1 -z(x,be,ga,et)) *z(x,be,ga,et) ^(al -1) *(1 -z(x,be,ga,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Lindley distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/281979360_The_beta_exponentiated_Lindley_distribution
expLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam /(1 +lam) *(1 +x) *exp(-x /lam) *(1 -(1 +x /(1 +lam)) *exp(-x /lam)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Lindley Poisson distribution == (2020-07-28) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
expLinPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) (1 -h(x,lam,be)) /(1 -exp(be))
  h <- function(x,lam,be) be *(1 -(1 +x /(1 +lam)) *exp(-x /lam))
  f <- function(x,lam,al,be) al *be /(exp(be) -1) /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam,be)^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated linear failure rate distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) 1 -exp(-(be *x +ga *x ^2))
  f <- function(x,al,be,ga) al *(be +2 *ga *x) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated linear failure rate geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
expLineFRGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) exp(-ga *x -de *x ^2 /2)
  f <- function(x,al,be,ga,de) al *(1 -be) *(ga +de *x) *(1 -z(x,ga,de)) ^(al -1) *z(x,ga,de) /(1 -be *z(x,ga,de)) ^(al +1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated log-logstic distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/269872178_The_Zografos-Balakrishnan_Log-Logistic_Distribution_Properties_and_Applications
expLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al *be -1) *(1 +(x /lam) ^be) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Lomax distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
expLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *al /lam *(1 +x /lam) ^(-2 *al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Maxwell distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expMaxF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) incgamma(x ^2 /lam, 3 /2, lower_upper_regular = 3)
  f <- function(x,lam,al) 2 /gamma(3 /2) *al /sqrt(lam) *(x ^2 /lam) *exp(-x ^2 /lam) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated modified Weibull distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga,de) 1 -exp(-(be *x +ga *x ^de))
  f <- function(x,al,be,ga,de) al *(be +ga *de *x ^(de -1)) *(1 -z(x,be,ga,de)) *z(x,be,ga,de) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated modified Weibull extension distribution == (2020-06-20) ==
## https://www.academia.edu/25773416/Exponentiated_modified_Weibull_extension_distribution?email_work_card=title
expModWeiExtF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) 1 -exp(al *lam *(1 -exp((x /lam) ^be)))
  f <- function(x,lam,al,be,ga) al *be *ga *(x /lam) ^(be -1) *exp((x /lam) ^be) *(1 -z(x,lam,al,be)) *z(x,lam,al,be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}
expModWeiExtQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '(1 -exp(al *lam *(1 -exp((x /lam) ^be)))) ^ga'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Exponentiated Nadarajah-Haghighi distribution == (2020-03-02) ==
## https://www.researchgate.net/publication/335127375_Exponentiated_Nadarajah_Haghighi_Poisson_Distribution
expNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(1 +x /lam) ^al)
  f <- function(x,lam,al,be) al *be /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Nadarajah-Haghighi-Poisson distribution == (2020-03-02) ==
## https://www.researchgate.net/publication/335127375_Exponentiated_Nadarajah_Haghighi_Poisson_Distribution
expNadaHaghiPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1) *exp(-ga *(1 -z(x,lam,al) ^be)) /(1 -exp(-ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Nakagami distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expNakaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) incgamma(x ^2 /lam *al, al, lower_upper_regular = 3)
  f <- function(x,lam,al,be) 2 /gamma(al) *be /sqrt(lam /al) *(x /sqrt(lam /al)) ^(2 *al -1) *exp(-x ^2 /lam *al) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Pareto distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/326208811_Product_Spacings_for_the_Estimation_of_the_Parameters_of_the_Exponentiated_Pareto_Distribution
expPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be *(1 +x) ^(-al -1) *(1 +(1 +x) ^(-al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Pareto IV distribution == (2020-04-23) ==
## https://www.academia.edu/12965162/The_Kumaraswamy_Pareto_IV_distribution?email_work_card=title
expPare4F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(-be -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated power function distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/334390483_A_New_Generalization_of_Power_Function_Distribution_Properties_and_Estimation_based_on_Censored_Samples
expPowFunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *(1 -(x /lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Rayleigh distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) 1 -exp(-be *x ^2)
  f <- function(x,al,be) 2 *al *be *x *(1 -z(x,be)) *z(x,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Rayleigh Rayleigh distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/335526906_On_the_Exponentiated_Weibull_Rayleigh_Distribution
expRayRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(-al *(exp(x ^2 /lam) -1) ^2)
  f <- function(x,lam,al,be) 4 *al *be /lam *x *exp(x ^2 /lam) *(exp(x ^2 /lam) -1) ^3 *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
expRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated scaled chi-square distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
expScaChiSqrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) incgamma(x /sqrt(2) /lam, al /2, lower_upper_regular = 3)
  f <- function(x,lam,al,be) 1 /gamma(al /2) *be /sqrt(2) /lam *(x /sqrt(2) /lam) ^(al /2 -1) *exp(-x /sqrt(2) /lam) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted exponential distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,be) 1 -exp(-be *x)
  f <- function(x,lam,al,be) al *be *(1 -z(x,be)) *z(x,be) ^(al -1) *(1 +lam -2 *lam *z(x,be)) *(1 +lam -lam *z(x,be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted exponentiated exponential distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x)
  f <- function(x,lam,al,be,ga) al *be *ga *(1 -z(x,ga)) *z(x,ga) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga) ^al) *(1 +lam -lam *z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted exponentiated linear failure rate distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransExpLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-(ga *x +de *x ^2))
  f <- function(x,lam,al,be,ga,de) al *be *(ga +2 *de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga,de) ^al) *(1 +lam -lam *z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted exponentiated modified Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransExpModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -exp(-(ga *x +de *x ^et))
  f <- function(x,lam,al,be,ga,de,et) al *be *(ga +de *et *x ^(et -1)) *(1 -z(x,ga,de,et)) *z(x,ga,de,et) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga,de,et) ^al) *(1 +lam -lam *z(x,ga,de,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted exponentiated Rayleigh distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransExpRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x ^2)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga *x *(1 -z(x,ga)) *z(x,ga) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga) ^al) *(1 +lam -lam *z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted exponentiated Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-ga *x ^de)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de *x ^(de -1) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga,de) ^al) *(1 +lam -lam *z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted generalized Rayleigh distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
expTransGenRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga) 2 *al *be /lam *(x /lam) *(1 -z(x,lam)) *z(x,lam) ^(al *be -1) *(1 +ga -ga *z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted linear failure rate distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,be,ga) 1 -exp(-(be *x +ga *x ^2))
  f <- function(x,lam,al,be,ga) al *(be +2 *ga *x) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga)) *(1 +lam -lam *z(x,be,ga)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted modified Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,be,ga,de) 1 -exp(-(be *x +ga *x ^de))
  f <- function(x,lam,al,be,ga,de) al *(be +ga *de *x ^(de -1)) *(1 -z(x,be,ga,de)) *z(x,be,ga,de) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga,de)) *(1 +lam -lam *z(x,be,ga,de)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted Rayleigh distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,be) 1 -exp(-be *x ^2)
  f <- function(x,lam,al,be) 2 *al *be *x *(1 -z(x,be)) *z(x,be) ^(al -1) *(1 +lam -2 *lam *z(x,be)) *(1 +lam -lam *z(x,be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated transmuted Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
expTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,be,ga) 1 -exp(-be *x ^ga)
  f <- function(x,lam,al,be,ga) al *be *ga *x ^(ga -1) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga)) *(1 +lam -lam *z(x,be,ga)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated U-quadratic distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
expUQuadF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) (be /3) *((x -al) ^3 -(al -be) ^3)
  f <- function(x,al,be,ga) be *ga *(x -al) ^2 *z(x,al,be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull distribution == (2020-01-08) ==
## https://en.wikipedia.org/wiki/Exponentiated_Weibull_distribution
expWeiF. <- function(x, y = NULL, ext = F, ... ) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al *be /lam *((x -nu) /lam) ^(be -1) *exp(-((x -nu) /lam) ^be) *(1 -exp(-((x -nu) /lam) ^be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated-Weibull exponential distribution == (2020-05-07) ==
## https://www.academia.edu/13007993/Exponentiated_T_-_X_Family_of_Distributions_with_Some_Applications?email_work_card=title
expWeiExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,al) 1 -(1 -exp(-x)) ^al
  f <- function(x,lam,al,be) al *be /lam *exp(-x) *(1 -exp(-x)) ^(al -1) /z(x,al) *(-log(z(x,al)) /lam) ^(be -1) *exp(-(-log(z(x,al)) /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull-Fréchet distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/317586386_The_Exponentiated_Weibull-H_Family_of_Distributions_Theory_and_Applications
expWeiFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,ga) exp((x /lam) ^(-ga)) -1
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(-ga -1) *z(x,lam,ga) ^(be -1) *exp((x /lam) ^(-ga) -al *z(x,lam,ga) ^(-be)) *(1 -exp(-al *z(x,lam,ga) ^(-be))) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull geometric distribution == (2020-06-10) ==
## https://www.researchgate.net/publication/282863150_The_Generalized_Transmuted-G_Family_of_Distributions
expWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be /lam ^al *x ^(al -1) *(1 -ga) *z(x,lam,al) /(1 -ga *z(x,lam,al)) ^2 *((1 -z(x,lam,al)) /(1 -ga *z(x,lam,al))) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull-Lindley distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/317586386_The_Exponentiated_Weibull-H_Family_of_Distributions_Theory_and_Applications
expWeiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,de) (1 +de) *exp(de *x) /(1 +de +de *x) -1
  f <- function(x,al,be,ga,de) al *be *ga *de ^2 *(1 +x) /(1 +de +de *x) *(z(x,de) +1) *z(x,de) ^(be -1) *exp(-al *z(x,de) ^be) *(1 -exp(-al *z(x,de) ^be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull-log-logistic distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/317586386_The_Exponentiated_Weibull-H_Family_of_Distributions_Theory_and_Applications
expWeiLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(be -1) *exp(-al *(x /lam) ^be) *(1 -exp(-al *(x /lam) ^be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull-Pareto distribution == (2020-02-20) ==
## https://www.researchgate.net/publication/296259233_The_Exponentiated_Weibull-Pareto_Distribution_with_Application
expWeiPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (x /lam) ^al -1
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(be -1) *exp(-z(x,lam,al) ^be) *(1 -exp(-z(x,lam,al) ^be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull Poisson distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
expWeiPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-(x /lam) ^ga)
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(1 -exp(-al)) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(be -1) *exp(-al *z(x,lam,ga) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull Rayleigh distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/335526906_On_the_Exponentiated_Weibull_Rayleigh_Distribution
expWeiRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-al *(exp(x ^2 /lam) -1) ^be)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *x *exp(x ^2 /lam) *(exp(x ^2 /lam) -1) ^(be -1) *(1 -z(x,lam,al,be)) *z(x,lam,al,be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Weibull-Weibull distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/317586386_The_Exponentiated_Weibull-H_Family_of_Distributions_Theory_and_Applications
expWeiWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(ga -1) *exp(be *(x /lam) ^ga -al *(exp((x /lam) ^ga) -1) ^be) *(1 -exp(-(x /lam) ^ga)) ^(be -1) *(1 -exp(-al *(exp((x /lam) ^ga) -1) ^be)) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Birnbaum-Saunders distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/263311157_The_beta-Weibull_geometric_distribution
extBirnSaunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be,ga) ga +1 /al *((x /lam) ^be -(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) 2 *be /al /lam ^be *(x ^(2 *be) +lam ^(2 /lam)) /x ^(1 +be) *stnorm(z(x,lam,al,be,ga)) *stcum(de *z(x,lam,al,be,ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Chen distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extChenF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) exp(x ^ga) -1
  h <- function(x,al,be,ga) exp(-al *z(x,ga) *exp(-be /z(x,ga)) -be /z(x,ga))
  f <- function(x,al,be,ga) al *ga *x ^(ga -1) *(1 +be /z(x,ga)) *(1 +z(x,ga)) *h(x,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Dagum distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/277652614_An_Extended_Dagum_Distribution_Properties_and_Applications
extDagF. <- function(x, y = NULL, ext = F, ...) {  # aka Exponentiated Kumaraswamy Dagum
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -(1 +et *x ^(-de)) ^(-ga)
  f <- function(x,al,be,ga,de,et) al *be *ga *de *et /x /(et +x ^de) *(1 -z(x,ga,de,et)) *z(x,ga,de,et) ^(al -1) *(1 -z(x,ga,de,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended exponentiated-power distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extExpPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(x ^be /lam) -1
  h <- function(x,lam,al,be) exp(-z(x,lam,be) *exp(-al /z(x,lam,be)) -al /z(x,lam,be))
  f <- function(x,lam,al,be) be /lam *(1 +al /z(x,lam,be)) *(1 +z(x,lam,be)) *h(x,lam,al,be)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended exponential-Weibull distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) exp(x ^ga /lam) -1
  h <- function(x,lam,al,be,ga) exp(-al *z(x,lam,ga) *exp(-be /z(x,lam,ga)) -be /z(x,lam,ga))
  f <- function(x,lam,al,be,ga) al *ga /lam *(1 +be /z(x,lam,ga)) *(1 +z(x,lam,ga)) *h(x,lam,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended exponentiated Nadarajah-Haghighi distribution == (2020-03-02) ==
## http://bu.edu.eg/portal/uploads/Citations/1566259918.pdf
extExpNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al,be,ga) al /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(be +(ga -be) *z(x,lam,al) ^al) *(1 +z(x,lam,al) ^be -z(x,lam,al) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended generalized linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
extGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,ga,de) 1 -1 /al *(ga *x +de /2 *x ^2)
  f <- function(x,al,be,ga,de) be *(ga +de *x) *z(x,al,ga,de) ^(al -1) *(1 -z(x,al,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended half-normal distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/233408424_General_properties_for_the_beta_extended_half-normal_model
extHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al ^(1 /be) *be /gamma(1 /be) *exp(-al *x ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Gompertz distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/330185055_The_exponentiated_generalized_extended_Gompertz_distribution
extGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) al *be *exp(x /lam) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/306347030_Weibull_Lindley_distribution
extLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /lam *((1 +x /(1 +lam)) ^(al -1) *(be *(1 +x /(1 +lam)) *(x /lam) ^(be -1)) -lam *al /(1 +lam)) *exp(-(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended odd log-logistic modified Weibull distribution == (2020-05-22) ==
## https://www.academia.edu/37328945/The_Extended_Odd_Family_of_Probability_Distributions_with_Practice_to_a_Submodel?email_work_card=title
extOddLogLogisModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga) exp(-be *x -be *x ^ga)
  f <- function(x,al,be,ga,de) al *be *(1 +ga *x ^(ga -1)) *z(x,be,ga) *(de +z(x,be,ga) ^(-2)) *((1 -z(x,be,ga)) *(de +z(x,be,ga) ^(-1))) ^(al -1) *(1 +((1 -z(x,be,ga)) *(de +z(x,be,ga) ^(-1))) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Extendted odd Weibull Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/338390107_The_Weibull_Marshall-Olkin_Lindley_Distribution_Properties_and_Estimation
extOddWeiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) al /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al -1) *(1 -z(x,lam))^(-al -1) *(1 +1 /be *(z(x,lam) /(1 -z(x,lam))) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
extWeiF. <- function(x, y = NULL, ext = F, ...) {  # weiGeo's be --> 1 -be
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) *(1 -(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-exponential distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(x /lam) -1
  h <- function(x,lam,al,be,ga) exp(-al *z(x,lam) ^be *exp(-ga /z(x,lam)) -ga /z(x,lam))
  f <- function(x,lam,al,be,ga) al /lam *(be +ga /z(x,lam)) *(1 +z(x,lam)) *z(x,lam) ^(be -1) *h(x,lam,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-Frechet distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(x ^de /lam) /(1 -exp(x ^de /lam))
  h <- function(x,lam,al,be,ga,de) exp(-al *z(x,lam,de) ^be *exp(-ga /z(x,lam,de)) -ga /z(x,lam,de))
  f <- function(x,lam,al,be,ga,de) al *de /lam *x ^(de -1) *exp(x ^de /lam) *(1 -exp(x ^de /lam)) ^2 *(be +ga /z(x,lam,de)) *z(x,lam,de) ^(be -1) *h(x,lam,al,be,ga,de)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-Gumbel distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) (exp(exp(-(x -nu) /lam)) -1) ^(-1)
  h <- function(x,nu,lam,al,be,ga) exp(-al *z(x,nu,lam) ^be *exp(-ga /z(x,nu,lam)) -ga /z(x,nu,lam))
  f <- function(x,nu,lam,al,be,ga) al /lam *exp(-(x -nu) /lam -exp(-(x -nu) /lam)) *(1 -exp(-exp(-(x -nu) /lam))) ^2 *(be +ga /z(x,nu,lam)) *z(x,nu,lam) ^(be -1) *h(x,nu,lam,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-Lindley distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) (1 +lam) /(1 +lam +x) *exp(x /lam) -1
  h <- function(x,lam,al,be,ga) exp(-al *z(x,lam) ^be *exp(-ga /z(x,lam)) -ga /z(x,lam))
  f <- function(x,lam,al,be,ga) al *(1 +x) /lam /(1 +lam) *exp(-x /lam) *z(x,lam) ^(-2) *(be +ga /z(x,lam)) *z(x,lam) ^(be -1) *h(x,lam,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-normal distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiNormF. <- function(x, y = NULL, ext = F, ...) {  # bi-modal
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) stcum((x -nu) /lam) /(1 -stcum((x -nu) /lam))
  f <- function(x,nu,lam,al,be,ga) al /lam *stnorm((x -nu) /lam) *(be +ga *z(x,nu,lam)) *z(x,nu,lam) ^ga /stcum((x -nu) /lam) ^2 *exp(-al *z(x,nu,lam) ^ga *exp(-be /z(x,nu,lam)) -be /z(x,nu,lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-Pareto distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) (x /lam) ^de -1
  h <- function(x,lam,al,be,ga,de) exp(-al *z(x,lam,de) ^be *exp(-ga /z(x,lam,de)) -ga /z(x,lam,de))
  f <- function(x,lam,al,be,ga,de) al *de /lam *(x /lam) ^(-3 *de -1) *(be +ga /z(x,lam,de)) *z(x,lam,de) ^(be -1) *h(x,lam,al,be,ga,de)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-uniform distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiUniF. <- function(x, y = NULL, ext = F, ...) {  # aka Extended Phani
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) x /(lam -x)
  h <- function(x,lam,al,be,ga) exp(-al *z(x,lam) ^be *exp(-ga /z(x,lam)) -ga /z(x,lam))
  f <- function(x,lam,al,be,ga) al /lam *(1 -x /lam) ^2 *(be +ga /z(x,lam)) *z(x,lam) ^(be -1) *h(x,lam,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-Weibull distribution == (2020-04-11) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(x ^de /lam) -1
  h <- function(x,lam,al,be,ga,de) exp(-al *z(x,lam,de) ^be *exp(-ga /z(x,lam,de)) -ga /z(x,lam,de))
  f <- function(x,lam,al,be,ga,de) al *de /lam *x ^(de -1) *(be +ga /z(x,lam,de)) *(1 +z(x,lam,de)) *z(x,lam,de) ^(be -1) *h(x,lam,al,be,ga,de)
  lazy_call.(x,y,pLL,f,ext)
}


## F distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
fF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_al_be
  f <- function(x,al,be) al ^(al /2) *be ^(be /2) /beta(al /2,be /2) *x ^(al /2 -1) *(be +al *x) ^(-(al +be) /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Fatigue lifetime distribution == (2020-02-08) ==
## https://www.vosesoftware.com/riskwiki/FatigueLifedistribution.php
fatigueF. <- function(x, y = NULL, ext = F, ...) {  # (domain) x > nu > 0, lam, al > 0
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) sqrt((x -nu) /lam)
  f <- function(x,nu,lam,al) (z(x,nu,lam) +1 /z(x,nu,lam)) /2 /al /z(x,nu,lam) ^2 *stnorm((z(x,nu,lam) +1 /z(x,nu,lam)) /al)
  lazy_call.(x,y,pLL,f,ext)
}


## Feller-Pareto distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/259218859_Estimation_for_Parameters_of_Feller-Pareto_Distribution_from_Progressive_Type-II_Censoring_and_Some_Characterizations
fellPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) (x -nu) /lam
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *z(x,nu,lam) ^(be *ga -1) *(1 +z(x,nu,lam) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Fisher-Tippett distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
fishTipF. <- function(x, y = NULL, ext = F, ...) {  # The same to gGumbel
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) abs(al /lam) *((x -nu) /lam) ^(al -1) *exp(-((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Five parameter Lindley distribution == (2020-07-28) ==
## https://www.researchgate.net/publication/279997009_The_five_parameter_Lindley_distribution
fiveParLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -(1 -exp(-x /lam)) ^al
  f <- function(x,lam,al,be,ga,de) 1 /lam /(ga +de *lam) *(ga /gamma(al) *(x /lam) ^(al -1) +de /gamma(be) *(x /lam) ^(be -1)) *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Flexible additive Weibull distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/339745087_A_novel_flexible_additive_Weibull_distribution_with_real-life_applications
flexAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  f <- function(x,al,be,ga,de,et,th) (al *de *x ^(de -1) +be *et *x ^(et -1) +ga *th *x ^(th -1)) *exp(-al *x ^de -be *x ^et -ga *x ^th)
  lazy_call.(x,y,pLL,f,ext)

}


## Flexible Weibull distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/315382552_The_Beta_Flexible_Weibull_Distribution
flexWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) (al +be /x ^2) *exp(al *x -be /x) *exp(-exp(al *x -be /x))
  lazy_call.(x,y,pLL,f,ext)
}


## Flexible Weibull extension distribution == (2020-08-15) ==
## https://www.researchgate.net/publication/311807683_The_Kumaraswamy_Flexible_Weibull_Extension
flexWeiExtF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al,be) 1 -exp(-exp(al *x -be /x))
  f <- function(x,al,be) (al +be /x ^2) *exp(al *x -be /x -exp(al *x -be /x))
  lazy_call.(x,y,pLL,f,ext)
}


## Fréchet distribution == (2019-12-23) ==
## https://en.wikipedia.org/wiki/Fréchet_distribution
frechetF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0, (shape) al > 0
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /lam *(lam / (x -nu)) ^(al +1) *exp(- (lam /(x -nu)) ^al)
  lazy_call.(x,y,pLL,f,ext)
}
frechetQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'exp(-((x -nu) /lam) ^(-al))'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Fréchet Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
frePoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be /(exp(al) -1) *x ^(-be -1) *exp(-x ^(-be) +al *exp(-x ^(-be)))
  lazy_call.(x,y,pLL,f,ext)
}


## Fréchet Topp-Leone Kumaraswamy distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/332397016_The_Frechet_Topp_Leone-G_Family_of_Distributions_Properties_Characterizations_and_Applications
freTopLeoKumaF. <- function(x, y = NULL, ext = F, ...) {  # 0 < x < 1 ...
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,ga,et) 1 -(1 -x ^et) ^(2 *ga)
  f <- function(x,al,be,ga,de,et) 2 *al ^be *be *ga *et *x ^(et -1) *(1 -x ^et) ^(2 *ga -1) *z(x,ga,et) ^(-be *de -1) *(1 -z(x,ga,et) ^de) ^(be -1) *exp(-al ^be *((1 -z(x,ga,et) ^de) /z(x,ga,et) ^de) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Fréchet Topp-Leone Lomax distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/332397016_The_Frechet_Topp_Leone-G_Family_of_Distributions_Properties_Characterizations_and_Applications
freTopLeoLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,ga) 1 -(1 +x /lam) ^(-2 *ga)
  f <- function(x,lam,al,be,ga,de) 2 *al ^be *be *ga *de /lam *(1 +x /lam) ^(-2 *ga -1) *z(x,lam,ga) ^(-be *de -1) *(1 -z(x,lam,ga) ^de) ^(be -1) *exp(-al ^be *((1 -z(x,lam,ga) ^de) /z(x,lam,ga) ^de) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Gamma_distribution = http://nhkuma.blogspot.com/2013/08/blog-post_13.html
gamF. <- function(x, y = NULL, ext = F, ...) {  # aka Erlang; (scale) lam > 0, (shape) al > 0;  x --> x -nu becomes Pearson III
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /gamma(al) /abs(lam) *(x /lam) ^(al -1) *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma Burr III distribution == (2020-01-14) ==
## https://www.researchgate.net/publication/320785080_A_useful_extension_of_the_Burr_III_distribution
gamBurr3F. <- function(x, y = NULL, ext = F, ...) {  # Sister of gamma Burr3, log-gamma Burr3, Ristić-Balakrishnan Burr12, ZB Burr12
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 +(x /lam) ^(-ga)
  f <- function(x,lam,al,be,ga) 1 /gamma(al) *be *ga /x *(z(x,lam,ga) -1) *z(x,lam,ga) ^(-be -1) *(-log(1 -z(x,lam,ga) ^(-be))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-Dagum distribution == (2020-01-14) ==
## https://www.researchgate.net/publication/264594768_A_New_Class_of_Generalized_Dagum_Distribution_with_Applications_to_Income_and_Lifetime_Data
gamDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 -(1 +x ^(-al) /lam) ^(-be)
  f <- function(x,lam,al,be,ga,de) ga ^de /gamma(de) *al *be /lam *x ^(-al -1) *(1 +x ^(-al) /lam) ^(-be -1) *z(x,lam,al,be) ^(ga -1) *(-log(z(x,lam,al,be))) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma extended Fréchet distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/315382266_The_Exponentiated_Generalized_Standardized_Half-logistic_Distribution
gamExtFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga) 1 /gamma(al) *be *ga /lam *(x /lam) ^(-be -1) *z(x,lam,be) *(1 -z(x,lam,be)) ^(ga -1) *(-ga *log(1 -z(x,lam,be))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma extreme value distribution == (2020-06-18) ==
## https://www.researchgate.net/publication/256678672_Log-gamma_generated_families_of_distributions
gamEVF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) be ^al /gamma(al) *exp(al *x) *exp(-be *exp(x))
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-exponential distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
gamExpF. <- function(x, y = NULL, ext = F, ...) {  # similar to BHP genGum Gumbel moyal (often confused with logGam); heavy tail on the left
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) /abs(lam) *exp(al *(x -nu) /lam -exp((x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma exponentiated exponential distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
gamExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) 1 /gamma(al) *be /lam *(1 -z(x,lam)) *z(x,lam) ^(be -1) *(-be *log(z(x,lam))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma exponentiated exponential-Weibull distribution == (2020-12-04) ==
## https://www.researchgate.net/publication/269991366_The_Gamma_exponentiated_exponential-Weibull_distribution
gamExpExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  f <- function(x,al,be,ga,de) 1 /gamma(de) *(al +be *ga *x ^(ga -1)) *(al *x +be *x ^ga) ^(de -1) *exp(-al *x -be *x ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma generalized Pareto distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/316242403_The_Gamma_Generalized_Pareto_Distribution_with_Applications_in_Survival_Analysis
gamGenPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 +be *x /lam
  f <- function(x,lam,al,be) 1 /gamma(al) /lam *(log(z(x,lam,be)) /be) ^(al -1) *z(x,lam,be) ^(-1 /be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-geometric distribution == (2020-05-28) ==
## https://www.academia.edu/38223750/A_new_lifetime_model_by_mixing_gamma_and_geometric_distributions_with_fitting_hydrologic_data?email_work_card=title
gamGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) al /lam *x /lam *z(x,lam) *(1 +(1 -al) *z(x,lam)) *(1 -(1 -al) *z(x,lam)) ^(-3)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma/Gompertz distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Gamma/Gompertz_distribution
gamGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /lam *al *be ^al *exp(x /lam) *(be -1 +exp(x /lam)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-Gumbel distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/273404417_The_Zografos-Balakrishnan-G_Family_of_Distributions_Mathematical_Properties_and_Applications
gamGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) /lam *exp(al *((x -nu) /lam) -exp((x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma half-Cauchy distribution == (2020-05-01) ==
## https://www.researchgate.net/publication/326441057_The_Log-Odd_Normal_Generalized_Family_of_Distributions_with_Application
gamHalfCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -2 /pi *atan(x /lam)
  f <- function(x,lam,al,be) 1 /gamma(al) *2 /pi *be ^al /lam *(1 +(x /lam) ^2) ^(-1) *(-log(z(x,lam))) ^(al -1) *z(x,lam) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-linear failure rate distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/259087309_The_gamma-Lomax_Distribution
gamLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 1 /gamma(ga) *(al +2 *be *x) *(al *x +be *x ^2) ^(ga -1) *exp(-(al *x +be *x ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-log-logstic distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/273404417_The_Zografos-Balakrishnan-G_Family_of_Distributions_Mathematical_Properties_and_Applications
gamLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(al) *be /lam *(x /lam) ^(be -1) *(1 +x /lam) ^(-2) *(log(1 +(x /lam) ^be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma log-logistic Weibull distribution == (2020-01-13) ==
## https://www.researchgate.net/publication/317026101_The_gamma_log-logistic_Weibull_distribution_Model_properties_and_application
gamLogLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga) 1 -1 /(1 +x ^ga) *exp(-al *x ^be)
  f <- function(x,al,be,ga,de,et) et ^de /gamma(de) *(al *be *x ^(be -1) +1 /(1 +x ^ga) *ga *x ^(ga -1) ) *(1 -z(x,al,be,ga)) *z(x,al,be,ga) ^(et -1) *(-log(z(x,al,be,ga))) ^(de-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-log-normal distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/273404417_The_Zografos-Balakrishnan-G_Family_of_Distributions_Mathematical_Properties_and_Applications
gamLogNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) /sqrt(2 *pi) /lam /x *exp(-1 /2 *((log(x) +nu) /lam) ^2) *(-log(stcum((-log(x) +nu) /lam))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-Lomax distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/259087309_The_gamma-Lomax_Distribution
gamLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 +(x /lam)
  f <- function(x,lam,al,be) 1 /gamma(al) *be ^al /lam *z(x,lam) ^(-be -1) *(log(z(x,lam))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma Nadarajah-Haghighi distribution == (2020-03-02) ==
## https://www.researchgate.net/publication/280962246_A_new_generalized_gamma_distribution_with_applications
gamNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) (1 +x /lam) ^al -1
  f <- function(x,lam,al,be) 1 /gamma(be) *al /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) ^(be -1) *exp(-z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-normal distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/273404417_The_Zografos-Balakrishnan-G_Family_of_Distributions_Mathematical_Properties_and_Applications
gamNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) *stnorm((x -nu) /lam) *(-log(1 -stcum((x -nu) /lam))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma Pareto distribution == (2020-04-23) ==
## https://www.academia.edu/12965162/The_Kumaraswamy_Pareto_IV_distribution?email_work_card=title
gamPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(al) *be ^al /lam *(x /lam) ^(-be -1) *(-log(x /lam)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma Pareto IV distribution == (2020-04-23) ==
## https://www.academia.edu/12965162/The_Kumaraswamy_Pareto_IV_distribution?email_work_card=title
gamPare4F. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -x ^al
  f <- function(x,al,be,ga) (ga -1) /gamma(ga) *al *be ^ga /x *(1 -z(x,al)) *z(x,al) ^(-be -1) *log(z(x,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Gamma-Weibull distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/273404417_The_Zografos-Balakrishnan-G_Family_of_Distributions_Mathematical_Properties_and_Applications
gamWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(al) *be *lam *(x /lam) ^(al *be -1) *exp(-(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Mixture model
## Gaussian Mixture Model (GMM) == (2020-06-09) ==
## http://kusanagi.hatenablog.jp/entry/2017/01/24/193909
gmmF. <- function(x, y = NULL, ext = F, ...) {  # This is not all-around pdf; try (x,y) = psd[4:5]
  pLL <- pLL_al_be_ga_de_et
  f <- function(x,al,be,ga,de,et) al *dnorm(x,be,ga)+(1 -al)*dnorm(x,de,et)
  # pLL <- pLL_al_be_a1_a2_b1_b2_c1_c2
  # f <- function(x,al,be,a1,a2,b1,b2,b3,c1,c2) al *dnorm(x,a1,a2) +be *dnorm(x,b1,b2) *(1 -al -be) *dnorm(x,c1,c2)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized additive Weibull distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga,de) 1 -exp(-(be *x +ga *x ^de))
  f <- function(x,al,be,ga,de) al *(be +ga *de *x ^(de -1)) *(1 -z(x,be,ga,de)) *z(x,be,ga,de) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Genralized additive Weibull-Burr XII distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/318904166_The_Generalized_Additive_Weibull-G_Family_of_Distributions
genAddWeiBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,et,th) th *log(1 +x ^et)
  f <- function(x,al,be,ga,de,et,th) et *th *x ^(et -1) *(1 +x ^et) ^(-1) *(al *be *z(x,et,th) ^(be -1) +ga *de *z(x,et,th) ^(de -1)) *exp(-al *z(x,et,th) ^be -ga *z(x,et,th) ^de)
  lazy_call.(x,y,pLL,f,ext)
}


## Genralized additive Weibull-Gumbel distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/318904166_The_Generalized_Additive_Weibull-G_Family_of_Distributions
genAddWeiGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga_de
  z <- function(x,nu,lam) exp((x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga,de) 1 /lam *z(x,nu,lam) *(al *be *z(x,nu,lam) ^(be -1) +ga *de *z(x,nu,lam) ^(de -1)) *exp(-al *z(x,nu,lam) ^be -ga *z(x,nu,lam) ^de)
  lazy_call.(x,y,pLL,f,ext)
}


## Genralized additive Weibull log-logistic distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/318904166_The_Generalized_Additive_Weibull-G_Family_of_Distributions
genAddWeiLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,et) log(1 +(x /lam) ^et)
  f <- function(x,lam,al,be,ga,de,et) et /lam *(x /lam) ^(et -1) *(1 +(x /lam) ^et) ^(-1) *(al *be *z(x,lam,et) ^(be -1) +ga *de *z(x,lam,et) ^(de -1)) *exp(-al *z(x,lam,et) ^be -ga *z(x,lam,et) ^de)
  lazy_call.(x,y,pLL,f,ext)
}


## Genralized additive Weibull-uniform distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/318904166_The_Generalized_Additive_Weibull-G_Family_of_Distributions
genAddWeiUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam) -log(1 -x /lam)
  f <- function(x,lam,al,be,ga,de) 1 /(lam -x) *(al *be *z(x,lam) ^(be -1) +ga *de *z(x,lam) ^(de -1)) *exp(-al *z(x,lam) ^be -ga *z(x,lam) ^de)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized alpha-beta skew normal distribution == (2020-08-02) ==
## https://arxiv.org/abs/1910.09192
genAlpBetaSkewNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,al,be,ga) (1 +3 *al *be +al ^2 /2 +15 /2 *be ^2 -sqrt(2 /pi *ga ^2 /(1 +ga ^2)) *(al +be *(3 +2 *ga ^2) /(1 +ga ^2))) ^(-1)
  f <- function(x,nu,lam,al,be,ga) (1 +(1 -al *(x -nu) /lam -be *((x -nu) /lam) ^3) ^2) *stnorm((x -nu) /lam) *stcum(ga *(x -nu) /lam) *z(x,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized beta distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genBetaF. <- function(x, y = NULL, ext = F, ...) {  # brother of gb, gbp, gb2
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *abs(be /lam) *((x -nu) /lam) ^(al *be -1) *(1 -((x -nu) /lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized beta of the second kind distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Generalized_beta_distribution
genBeta2F. <- function(x, y = NULL, ext = F, ...) {  # aka Transformed Beta;  brother of gb, gbp, gb2
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *abs(be /lam) *(x /lam) ^(al *be -1) *(1 +(x /lam) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized beta prime distribution == (2019-12-27) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genBetaPrimeF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0, (shape) al, be, ga > 0
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *abs(be /lam) *((x -nu) /lam) ^(al *be -1) *(1 +((x -nu) /lam) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Burr distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genBurrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al *be /lam *((x -nu) /lam) ^be *(1 +((x -nu) /lam) ^be) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Burr XII-Poisson distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/296625031_A_Generalization_of_the_BurrXII-Poisson_Distribution_and_its_Applications
genBurr12PoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be,ga) exp(ga *((1 +x ^al) ^(-be) -1))
  f <- function(x,al,be,ga,de) al *be *ga *de /(1 -exp(-ga)) ^de *x ^(al -1) *(1 +x ^al) ^(-be -1) *z(x,al,be,ga) *(1 -z(x,al,be,ga)) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Dagum distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/338823174_Topp-Leone_Dagum_Distribution_Properties_and_its_Applications
genDagF. <- function(x, y = NULL, ext = F, ...) {  #  Reduced one parameter from the original formula
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *x ^(-al -1) *(1 +x ^(-al) /lam) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponential distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
genExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) al /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}



## Generalized exponential geometric distribution == (2020-12-14) ==
## https://www.academia.edu/25855996/Exponentiated_Extended_Weibull_Power_Series_Class_of_Distributions?email_work_card=title
genExpGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *(1 -be) /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -be *z(x,lam) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponential-Poisson (Exponentiated exponential-Poisson) distribution == (2020-07-12) ==
## https://www.academia.edu/11590115/A_generalization_of_the_exponential-Poisson_distribution?email_work_card=title
genExpPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam /(1 -exp(-be)) ^al *(1 -exp(-be *(1 -z(x,lam)))) ^(al -1) *z(x,lam) *exp(-be *(1 -z(x,lam)))
  lazy_call.(x,y,pLL,f,ext)
}
genExpPoiQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '((1 -exp(-be +be *exp(-x /lam))) /(1 -exp(-be))) ^al'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Generalized exponentiated additive Weibull distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genExpAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,be,ga,de,et) 1 -exp(-(be *x ^ga +de *x ^et))
  f <- function(x,al,be,ga,de,et) al *(be *ga *x ^(ga -1) +de *et *x ^(et -1)) *(1 -z(x,be,ga,de,et)) *z(x,be,ga,de,et) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponentiated Frechet distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
genExpFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -(1 -exp(-(x /lam) ^(-be)))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-be -1) *(1 -z(x,lam,be)) *z(x,lam,be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponentiated Gumbel type-2 distribution == (2020-08-15) ==
## https://www.ajol.info/index.php/afst/article/view/167113/156551
genExpGum2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-x ^(-ga) /lam)
  f <- function(x,lam,al,be,ga) al *be *ga *de /lam *x ^(-ga -1) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponentiated inverse exponential distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
genExpInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -exp(-(x /lam) ^(-1))
  f <- function(x,lam,al) al /lam *(x /lam) ^(-2) *(1 -z(x,lam)) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponentiated inverse Rayleigh distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
genExpInvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -exp(-(x /lam) ^(-2))
  f <- function(x,lam,al) al /lam *(x /lam) ^(-3) *(1 -z(x,lam)) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized exponentiated inverse Weibull distribution == (2020-08-15) ==
## https://www.ajol.info/index.php/afst/article/view/167113/156551
genExpInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-(x /lam) ^(-ga))
  f <- function(x,lam,al,be,ga) al *be *ga *de /lam *(x /lam) ^(-ga -1) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Extreme Value (GEV) distribution == (2020-01-06) ==
## https://en.wikipedia.org/wiki/Generalized_extreme_value_distribution
gevF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam,al) if (al != 0) (1 +al *(x -nu) /lam) ^(-1 /al) else exp(-(x -nu) /lam)
  f <- function(x,nu,lam,al) 1 /lam *z(x,nu,lam,al) ^(al +1) *exp(-z(x,nu,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Fisher-Tippett distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genFishTipF. <- function(x, y = NULL, ext = F, ...) {  # Slightly different from genWei and genFre; note abs behavior
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) be ^be /gamma(be) *abs(al /lam) *((x -nu) /lam) ^(be *al -1) *exp(-be *((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Fréchet distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genFreF. <- function(x, y = NULL, ext = F, ...) {  # Slightly different from genWei and genFishTip; al --> -al
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) be ^be /gamma(be) *al /abs(lam) *((x -nu) /lam) ^(-be *al -1) *exp(-be *((x -nu) /lam) ^(-al))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized gamma distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Generalized_gamma_distribution
genGamF. <- function(x, y = NULL, ext = F, ...) {  # (scale) lam > 0, if al = be it becomes Weibull
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(al /be) *abs(be /lam) *(x /lam) ^(al -1) *exp(-(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Gompertz distribution == (2020-06-20) ==
## https://www.academia.edu/25773416/Exponentiated_modified_Weibull_extension_distribution?email_work_card=title
genGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(x /lam)
  f <- function(x,lam,al,be) al *be *(1 -z(x,lam)) *exp(al *lam *z(x,lam)) *(1 -exp(al *lam *z(x,lam))) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}
genGomQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '(1 -exp(al *lam *(1 -exp(x /lam)))) ^be'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Generalized Gompertz-binomial distribution == (2020-08-03) ==
## https://www.academia.edu/25858978/Generalized_Gompertz-Power_Series_Distributions?email_work_card=view-paper
genGomBiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) 1 -exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /((1 +ga) ^de -1) *exp(x /lam) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1) *(1 +ga *z(x,lam,be) ^al) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Gompertz-geometric distribution == (2020-08-03) ==
## https://www.academia.edu/25858978/Generalized_Gompertz-Power_Series_Distributions?email_work_card=view-paper
genGomGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *(1 -ga) *exp(x /lam) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1) *(1 -ga *z(x,lam,be) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Gompertz-logarithmic distribution == (2020-08-03) ==
## https://www.academia.edu/25858978/Generalized_Gompertz-Power_Series_Distributions?email_work_card=view-paper
genGomLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga /log(1 -ga) *exp(x /lam) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1) *(ga *z(x,lam,be) ^al -1) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Gompertz-Poisson distribution == (2020-08-03) ==
## https://www.academia.edu/25858978/Generalized_Gompertz-Power_Series_Distributions?email_work_card=view-paper
genGomPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1) *exp(x /lam -ga *(1 -z(x,lam,be) ^al))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Gumbel distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genGumF. <- function(x, y = NULL, ext = F, ...) {  # similar to exGamma, gGumbel, Gumbel, BHP; (positive integer) n
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al ^al /gamma(al) /abs(lam) *exp(-al *(x -nu) /lam -al *exp((x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half-normal distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
genHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) sqrt(2 /pi) *al /lam *(x/lam) ^(al -1) *exp(-1 /2 *(x /lam) ^(2 *al))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half normal-binomial distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/315663125_Notes_on_Generalized_Half-Normal_Power_Series_Distributions
genHalfNormBiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be,ga) ga /((1 +be) ^ga -1) *(2 *be *stcum((x /lam) ^al) +be -1) ^(ga -1)
  f <- function(x,lam,al,be,ga) sqrt(2 /pi) *al *be /lam *(x /lam) ^(al -1) *exp(-1 /2 *(x /lam) ^(2 *al)) *z(x,lam,al,be,ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half-normal exponentiated distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
genHalfNormExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 2 *stcum((x /lam) ^be) -1
  f <- function(x,lam,al,be) sqrt(2 /pi) *al *be /lam *(x/lam) ^(be -1) *exp(-1 /2 *(x /lam) ^(2 *be)) *z(x,lam,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half-normal exponentiated geometric distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
genHalfNormExpGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 2 *stcum((x /lam) ^be) -1
  f <- function(x,lam,al,be,ga) sqrt(2 /pi) *al *be *(1 -ga) /lam *(x/lam) ^(be -1) *exp(-1 /2 *(x /lam) ^(2 *be)) *z(x,lam,be) ^(al -1) *(1 -ga *(1 -z(x,lam,be) ^al))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half-normal geometric distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
genHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) sqrt(2 /pi) *al *(1 -be) /lam *(x/lam) ^(al -1) *exp(-1 /2 *(x /lam) ^(2 *al))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half normal-logarithmic distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/315663125_Notes_on_Generalized_Half-Normal_Power_Series_Distributions
genHalfNormLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al,be) 1 /log(1 -be) /(2 *be *stcum((x /lam) ^al) +be -1)
  f <- function(x,lam,al,be) sqrt(2 /pi) *al *be /lam *(x /lam) ^(al -1) *exp(-1 /2 *(x /lam) ^(2 *al)) *z(x,lam,al,be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized half normal-Poisson distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/315663125_Notes_on_Generalized_Half-Normal_Power_Series_Distributions
genHalfNormPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al,be) exp(2 *be *stcum((x /lam) ^al)) /(exp(2 *be) -exp(be))
  f <- function(x,lam,al,be) sqrt(2 /pi) *al *be /lam *(x /lam) ^(al -1) *exp(-1 /2 *(x /lam) ^(2 *al)) *z(x,lam,al,be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized inverse exponential distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/305999881_The_Beta_Generalized_Inverse_Weibull_Distribution
genInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al *(x /lam) ^(-2) *exp(-al *(x /lam) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized inverse gamma distribution == (2020-03-24) ==
## http://www.nematrian.com/GeneralisedInverseGaussianDistribution
genInvGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 1 /2 /besselK(sqrt(al *be),ga) *sqrt(al /be) ^ga *x ^(ga -1) *exp(-1 /2 *(al *x +be /x))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized inverse Gaussian distribution == (2020-01-27) ==
## https://en.wikipedia.org/wiki/Generalized_inverse_Gaussian_distribution
## https://github.com/JuliaStats/Distributions.jl/issues/554
genInvGaussF. <- function(x, y = NULL, ext = F, ...) {  # Using modified Bessel function of the second kind; NOTE: I've reshaped the formula in Wiki as a = alpha /lambda, b = beta *lambda; brother of Generalized inverse gaussian, Halphen
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /besselK(al,be) *abs(1 /2 /lam) *(x /lam) ^(al -1) *exp(-be /2 *(x /lam +lam /x))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized inverse Weibull distribution == (2020-07-18) ==
## https://www.academia.edu/12221822/The_Transmuted_Generalized_Inverse_Weibull_Distribution
genInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al -1) *exp(-be *(x /lam) ^(-al))  # Unknown error (avoid it by al *be --> al *1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized inverse Weibull geometric distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/315650759_The_Beta_Generalized_Inverse_Weibull_Geometric_Distribution
genInvWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be,ga) 1 -exp(-ga *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga) al *be *(1 -ga) /lam *(x /lam) ^(-be -1) *(1 -z(x,lam,be,ga)) *(1 -ga *z(x,lam,be,ga)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized inverted exponential distribution == (2020-07-26) ==
## https://www.ine.pt/revstat/pdf/rs170104.pdf
genInvtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(x /lam) ^(-2) *exp(-x /lam) *(1 -exp(-x /lam)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized K distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
genKF. <- function(x, y = NULL, ext = F, ...) {  # a crazy distribution...
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 2 /gamma(al) /gamma(be) *abs(ga /lam) *(x /lam) ^((al +be) *ga /2 -1) *besselK(2 *(x /lam) ^(be /2), al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Lindley (GL1) distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/306347030_Weibull_Lindley_distribution
genLin1F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(1 +al) /lam /(1 +be *lam) *(x /lam) ^(al -1) *(al +be *x) *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Lindley (GL2) distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/338390107_The_Weibull_Marshall-Olkin_Lindley_Distribution_Properties_and_Estimation
genLin2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al) al /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized linear exponential distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
genLineExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga,de) be *x -ga /2 *x ^2 -de
  f <- function(x,al,be,ga,de) al *(be +ga *x) *z(x,be,ga,de) ^(al -1) *exp(-z(x,be,ga,de) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized linear failure rate distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
genLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) exp(-be *x -ga /2 *x ^2)
  f <- function(x,al,be,ga) al *(be +ga *x) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized log-gamma distribution == (2020-06-15) ==
## https://www.researchgate.net/publication/267070036_Control_charts_for_generalized_log-gamma_processes
genLogGamF. <- function(x, y = NULL, ext = F, ...) {  # (left-heavy)
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) (x -nu) /lam
  f <- function(x,nu,lam,al) 1 /gamma(al) *al ^(al -1 /2) /lam *(exp(sqrt(al) *z(x,nu,lam)) -al *exp(z(x,nu,lam) /sqrt(al)))
  lazy_call.(x,y,pLL,f,ext)
}
genLogGamQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  z <- al *exp(1 /sqrt(al) *(x -nu) /lam)
  Fx <- '1 -incgamma(z, al)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Generalized logistic distribution == (2020-01-07) ==
## https://www.vosesoftware.com/riskwiki/Generalisedlogisticdistribution.php
genLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /lam *exp(-(x -nu) /lam) *(1 +exp(-(x -nu) /lam)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Marshall-Olkin Kumaraswamy-exponential distribution == (2020-06-22) ==
## https://www.academia.edu/39926151/THE_GENERALIZED_MARSHALL-OLKIN-KUMARASWAMY-G_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
genMaolKumaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de ^ga /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be *ga -1) *(1 -(1 -de) *(1 -z(x,lam) ^al) ^be) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al) al /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized (or Exponentiated) modified Weibull distribution == (2020-02-25) ==
## https://www.researchgate.net/publication/305688898_The_Transmuted_Generalized_Modified_Weibull_Distribution
genModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,ga) exp(-al *x ^ga *exp(x /lam))
  f <- function(x,lam,al,be,ga) al *be *x ^(ga -1) *(ga +x /lam) *exp(x /lam) *z(x,lam,al,ga) *(1 -z(x,lam,al,ga)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized normal ver.1 distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Generalized_normal_distribution
genNorm1F. <- function(x, y = NULL, ext = F, ...) {  # a, b > 0 , p in R
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(1 /al) *abs(al /2 /lam) *exp(- abs((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized normal ver.2 distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Generalized_normal_distribution
genNorm2F. <- function(x, y = NULL, ext = F, ...) {  # (location) nu in R, (shape) al in R, (scale) lam > 0
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam,al) if (al != 0) (x -nu) /lam else -1 /al *log(1 -al *(x -nu) /lam)
  f <- function(x,nu,lam,al) stnorm(z(x,nu,lam,al)) /(lam -al *(x -nu))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd Burr III-logistic distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/327945079_The_generalized_odd_Burr_III_family_of_distributions_properties_applications_and_characterizations
genOddBurr3LogisF. <- function(x, y = NULL, ext = F, ...) {  # The original formula was wrong (lacking '^(de-1)' )
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 +exp(-x /lam)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(z(x,lam) -1) /z(x,lam) ^2 *(1 -z(x,lam) ^(-al)) ^(be -1) /z(x,lam) ^(-al *be -1) *(1 +((1 -z(x,lam) ^(-al)) /z(x,lam) ^(-al)) ^be) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd Burr III-Lomax distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/327945079_The_generalized_odd_Burr_III_family_of_distributions_properties_applications_and_characterizations
genOddBurr3LomF. <- function(x, y = NULL, ext = F, ...) {  # The original formula was wrong (lacking '^(de-1)' )
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1+x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(1 +x /lam) ^(-de -1) *(1 -z(x,lam,de) ^al) ^(be -1) /z(x,lam,de) ^(al *be +1) *(1 +((1 -z(x,lam,de) ^al) /z(x,lam,de) ^al) ^be) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd Burr III-Weibull distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/327945079_The_generalized_odd_Burr_III_family_of_distributions_properties_applications_and_characterizations
genOddBurr3WeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(de -1) *(1 -z(x,lam,de)) *(1 -z(x,lam,de) ^al) ^(be -1) /z(x,lam,de) ^(al *be +1) *(1 +((1 -z(x,lam,de) ^al) /z(x,lam,de) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd generalized exponential inverse Rayleigh distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/338115641_A_Univariate_Bivariate_and_Multivariate_Extensions_for_the_Inverse_Rayleigh_Model_with_Properties_and_Applications_to_the_Univariate_Version
genOddGenExpInvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-al *(x /lam) ^(-2))
  f <- function(x,lam,al,be) 2 *al *be /lam *(x /lam) ^(-3) *z(x,lam,al) /(1 -z(x,lam,al)) ^2 *exp(-z(x,lam,al) /(1 -z(x,lam,al))) *(1 -exp(-z(x,lam,al) /(1 -z(x,lam,al)))) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd log-logistic reciprocal Rayleigh distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
genOddLogLogisRecRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-(x /lam) ^(-2))
  f <- function(x,lam,al,be) 2 *al *be /lam *(x /lam) ^(-3) *z(x,lam) ^(al *be) *(1 -z(x,lam) ^al) ^(be -1) *(z(x,lam) ^(al *be) +(1 -z(x,lam) ^al) ^be) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd Weibull generated-normal distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/327816885_The_Generalized_Odd_Weibull_Generated_Family_of_Distributions_Statistical_Properties_and_Applications
genOddWeiGenNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al *be /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al *be -1) *(1 -z(x,nu,lam) ^al) ^(-be -1) *exp(-(z(x,nu,lam) ^al /(1 -z(x,nu,lam) ^al)) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized odd Weibull generated-Weibull distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/327816885_The_Generalized_Odd_Weibull_Generated_Family_of_Distributions_Statistical_Properties_and_Applications
genOddWeiGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-(x /lam) ^ga)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^ga *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al *be -1) *(1 -z(x,lam,ga) ^al) ^(-be -1) *exp(-(z(x,lam,ga) ^al /(1 -z(x,lam,ga) ^al)) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Pareto distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
genPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /abs(lam) *(1 +al *(x -nu) /lam) ^(-1 /al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Pearson VII distribution == (2020-01-27) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genPear7F. <- function(x, y = NULL, ext = F, ...) {  # be, m > 0, be *m > 1
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(be -1 /al,1 /al) *abs(al /2 /lam) *(1 +abs((x -nu) /lam) ^al) ^(-be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Poisson-Lindley distribution == (2020-01-07) ==
## https://www.researchgate.net/publication/318638596_A_new_generalized_Poisson_Lindley_distribution
genPoiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be ^2 /(1 -exp(-1)) /(be +1) *(1 +x) *(1 -(1 +be *x /(be +1)) *exp(-be *x)) ^(al -1) *exp(-(1 -(1 +be *x /(be +1)) *exp(-be *x)) ^al -be *x)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized power function distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/334390483_A_New_Generalization_of_Power_Function_Distribution_Properties_and_Estimation_based_on_Censored_Samples
genPowFunF. <- function(x, y = NULL, ext = F, ...) {  # Reduced parameters from two to one
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(x /lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized power Lindley distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/301348569_A_new_class_of_generalized_power_Lindley_distribution
genPowLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-x ^al /lam)
  f <- function(x,lam,al,be) al *be /lam /(1 +lam) *(1 +x ^al) *x ^(al -1) *z(x,lam,al) *(1 -(1 +x ^al /(1 +lam)) *z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized power Weibull distribution == (2020-03-13) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwiPyKGcr5boAhXac94KHUaZBroQFjAAegQIARAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F429%2FJDS-1210.pdf&usg=AOvVaw2qxI-uyZ_M3tXAgK19K88g
genPowWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(-1) *exp(1 -z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Ramos-Louzada distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/338035172_A_generalization_of_Ramos-Louzada_distribution_Properties_and_estimation
genRamLouF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,al) 1 -(1 +x) ^(-al)
  f <- function(x,lam,al) al /lam /(lam -1) *x ^(al -1) *(lam +x ^al /lam -2) *exp(-x ^al /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Rayleigh distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
genRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,ga) 1 -ga /2 /al *x ^2
  f <- function(x,al,be,ga) be *ga *x *z(x,al,ga) ^(al -1) *(1 -z(x,al,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Sichel distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
genSichelF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga_de
  f <- function(x,nu,lam,al,be,ga,de) 1 /besselK(2 *sqrt(be *ga),al) *(be /ga) ^(al /2) /2 /abs(de /lam) *((x -nu) /lam) ^(de *al -1) *exp(-be *((x -nu) /lam) ^de -ga *((x -nu) /lam) ^(-de))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted additive Weibull distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genTransAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -exp(-(ga +de *x ^et))
  f <- function(x,lam,al,be,ga,de,et) al *be *(ga +de *et *x ^(et -1)) *(1 -z(x,ga,de,et)) *z(x,ga,de,et) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga,de,et) ^al) *(1 +lam -lam *z(x,ga,de,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted Burr X distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/299123117_The_transmuted_geometric-G_family_of_distributions_Theory_and_applications
genTransBurr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga,de) 2 *al /lam *x /lam *(1 -z(x,lam)) *z(x,lam) ^(al *be -1) *(be *(1 +de) -de *(be +ga) *z(x,lam) ^(be *ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted exponential distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/290552012_Generalized_Transmuted_Family_of_Distributions_Properties_and_Applications
genTransExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al /lam *(1 -z(x,lam,al)) *z(x,lam,al) ^(al -1) *(1 +be -2 *be *z(x,lam,al) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted exponentiated additive Weibull distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genTransExpAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et_th
  z <- function(x,ga,de,et,th) 1 -exp(-(ga *x ^de +et *x ^th))
  f <- function(x,lam,al,be,ga,de,et,th) al *be *(ga *de *x ^(de -1) +et *th *x ^(th -1)) *(1 -z(x,ga,de,et,th)) *z(x,ga,de,et,th) ^(al *be -1) *(1 +lam -2 *lam *z(x,ga,de,et,th) ^al) *(1 +lam -lam *z(x,ga,de,et,th) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted exponentiated modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genTransExpModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x)
  f <- function(x,lam,al,be,ga) al *be *ga *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 +lam -2 *lam *z(x,ga) ^al) *(1 +lam -lam *z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted Lindley distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/285585413_The_Transmuted_Exponentiated_Generalized-G_Family_of_Distributions
genTransLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-(x /lam))
  f <- function(x,lam,al,be,ga) 1 /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al -1) *(al *(1 +ga) -(al +be) *ga *z(x,lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted log-logistic distribution == (2020-03-07) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
genTransLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -(1 +(x /lam) ^al) ^(-1)
  f <- function(x,lam,al,be,ga,de) al /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^al) ^(-2) *z(x,lam,al) ^(be -1) *(be *(1 +de) -(be +ga) *de *z(x,lam,al) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
genTransModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,be) 1 -exp(-be *x)
  f <- function(x,lam,al,be) al *be *(1 -z(x,be)) *z(x,be) ^(al -1) *(1 +lam -2 *lam *z(x,be)) *(1 +lam -lam *z(x,be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted normal distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/290552012_Generalized_Transmuted_Family_of_Distributions_Properties_and_Applications
genTransNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x-nu) /lam)
  f <- function(x,nu,lam,al,be) al /lam *stnorm((x-nu) /lam) *z(x,nu,lam) ^(al -1) *(1 +be -2 *be *z(x,nu,lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted Poisson Lindley distribution == (2020-03-23) ==
## https://www.researchgate.net/publication/329336709_The_Generalized_Transmuted_Poisson-G_Family_of_Distributions_Theory_Characterizations_and_Applications
genTransPoiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /lam) *exp(-x /lam)
  f <- function(x,lam,al,be) al /(exp(al) -1) /lam /(1 +lam) *(1 +x) *exp(-x /lam +al *z(x,lam)) *(1 +be -2 *be *(exp(al *z(x,lam)) -1) /(exp(al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted Poisson Weibull distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/329336709_The_Generalized_Transmuted_Poisson-G_Family_of_Distributions_Theory_Characterizations_and_Applications
genTransPoiWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) al /(exp(al) -1) *be /lam  *(x /lam) ^(be -1) *exp(-(x /lam) ^be +al *z(x,lam)) *(1 +ga -2 *ga *(exp(al *z(x,lam)) -1) /(exp(al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted Weibull distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
genTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga,de) al /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(be *(1 +de) -(be +ga) *de *z(x,lam,al) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized transmuted Weibull geometric distribution == (2020-06-10) ==
## https://www.researchgate.net/publication/282863150_The_Generalized_Transmuted-G_Family_of_Distributions
genTransWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga,de,et) al /lam ^al *(1 -de) *x ^(al -1) *z(x,lam,al) /(1 -de *z(x,lam,al)) ^2 *((1 -z(x,lam,al)) /(1 -de *z(x,lam,al))) ^(be -1) *(be *(1 +et) -(be +ga) *et *((1 -z(x,lam,al)) /(1 -de *z(x,lam,al))) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized truncated log-gamma distribution == (2020-06-18) ==
## https://www.researchgate.net/publication/256678672_Log-gamma_generated_families_of_distributions
genTruncLogGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) be ^al /gamma(al) *(log(x /lam)) ^(al -1) *x ^(-be -1) /lam
  lazy_call.(x,y,pLL,f,ext)
}


## Generalized Weibull distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
genWeiF. <- function(x, y = NULL, ext = F, ...) {  # Slightly different from generalized Fisher-Tippett; note abs behavior
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) be ^be /gamma(be) *al /abs(lam) *((x -nu) /lam) ^(be *al -1) *exp(-be *((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Geometric generalized linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
geoGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-ga *x -de /2 *x ^2)
  f <- function(x,al,be,ga,de) al *(1 -be) *(ga +de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -be *(1 -z(x,ga,de) ^al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Gompertz_distribution
gompertzF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *exp(al) *exp(x /lam) *exp(-al *exp(x /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz-binomial distribution == (2020-08-04) ==
## https://www.academia.edu/25856086/Gompertz_power_series_distributions?email_work_card=view-paper
gomBiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga /((1 +al) ^ga -1) *exp(x /lam) *z(x,lam,be) *(1 +al *z(x,lam,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz-geometric distribution == (2020-08-04) ==
## https://www.academia.edu/25856086/Gompertz_power_series_distributions?email_work_card=view-paper
gomGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be) (1 -al) *be *exp(x /lam) *z(x,lam,be) /(1 -al *z(x,lam,be)) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz inverse exponential distribution == (2020-05-21) ==
## https://www.researchgate.net/publication/338774866_On_A_Shape_Parameter_of_Gompertz_Inverse_Exponential_Distribution_Using_Classical_and_Non_Classical_Methods_of_Estimation
gomInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -exp(-al /x)
  f <- function(x,al,be,ga) al *be /x ^2 *(1 -z(x,al)) *z(x,al) ^(-ga -1) *exp(be /ga *(1 -z(x,al) ^(-ga)))
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz length biased exponential distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/331638210_The_Gompertz_Length_Biased_Exponential_Distribution_and_its_application_to_Uncensored_Data
gomLenBiasExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) (1 +x /lam) *exp(-x /lam)
  f <- function(x,lam,al,be) al /lam ^2 *x *exp(-x /lam) *z(x,lam) ^(-be -1) *exp(al /be *(1 -z(x,lam) ^(-be)))
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz-logarithmic distribution == (2020-08-04) ==
## https://www.academia.edu/25856086/Gompertz_power_series_distributions?email_work_card=view-paper
gomLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al *be /log(1 -al) *exp(x /lam) *z(x,lam,be) /(al *z(x,lam,be) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz Lomax distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/319120507_A_New_Generalization_of_the_Lomax_Distribution_with_Increasing_Decreasing_and_Constant_Failure_Rate
gomLomF. <- function(x, y = NULL, ext = F, ...) {  # very bad
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 +x /lam
  f <- function(x,lam,al,be,ga) al *be /lam *z(x,lam) ^(al *ga -1) *exp(be /ga *(1 -z(x,lam) ^(al *ga)))
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz-Makeham distribution == (2020-03-25) ==
## https://www.researchgate.net/publication/338143922_A_Weibull-Gompertz_Makeham_Distribution_with_Properties_and_Application_to_Cancer_Data
gomMakF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) (al +be *exp(ga *x)) *exp(-al *x -be /ga *(exp(ga *x) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz-Poisson distribution == (2020-08-04) ==
## https://www.academia.edu/25856086/Gompertz_power_series_distributions?email_work_card=view-paper
gomPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al *be /(exp(al) -1) *exp(x /lam) *z(x,lam,be) *exp(al *z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Gompertz-power series distribution == (2020-08-04) ==
## https://www.academia.edu/25856086/Gompertz_power_series_distributions?email_work_card=view-paper
gomPowSeriF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be) be /(1 +al ^19) *exp(x /lam) *z(x,lam,be) *(1 +20 *(al *z(x,lam,be)) ^19)
  lazy_call.(x,y,pLL,f,ext)
}


## Gumbel distribution == (2020-01-27) ==
## https://en.wikipedia.org/wiki/Gumbel_distribution
gumbelF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /abs(lam) *exp(- (x -nu) /lam -exp(- (x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}
gumbelQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'exp(-exp(-(x -nu) /lam))'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Gumbel-Lomax distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/280125764_The_Gumbel-Lomax_Distribution_Properties_and_Applications
gumLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (1 +x /lam) ^al -1
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) ^(-be -1) *exp(-ga *z(x,lam,al) ^(-be))
  lazy_call.(x,y,pLL,f,ext)
}


## Gumbel type 1 distribution == (2020-01-07) ==
## https://www.wikizero.com/en/Type-1_Gumbel_distribution
gumbel1F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al *be *exp(-al *(x -nu) /lam -be *exp(-al *(x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Gumbel type 2 distribution == (2020-01-07) ==
## https://www.wikizero.com/en/Type-2_Gumbel_distribution
gumbel2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al *be /lam *((x -nu) /lam) ^(-al -1) *exp(-be *((x -nu) /lam) ^(-al))
  lazy_call.(x,y,pLL,f,ext)
}
gumbel2Q. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'exp(-be *((x -nu) /lam) ^(-al))'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Half-Cauchy distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
halfCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 2 /pi /abs(lam) *(1 +((x -nu) /lam) ^2) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Half-exponential power distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
halfExpPowF. <- function(x, y = NULL, ext = F, ...) {  # mother of Hohlfeld
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(1 /al) *abs(al /lam) *exp(-((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Half generalized Pearson VII distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
halfGenPear7F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /beta(be -1 /al,1 /al) *al /abs(lam) *(1 +((x -nu) /lam) ^al) ^(-be)
  lazy_call.(x,y,pLL,f,ext)
}


## Half-logistic exponential distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/322259672_The_Half-Logistic_Generalized_Weibull_Distribution
halfLogisExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam
  f <- function(x,lam) 2 /lam *exp(-x /lam) *(1 +exp(-x /lam)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Half-logistic Nadarajah-Haghighi distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/322259672_The_Half-Logistic_Generalized_Weibull_Distribution
halfLogisNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam,al) exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al) 2 *al /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) *(1 +z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Half-logistic generalized Weibull distribution == (2020-12-04) ==
## https://www.researchgate.net/publication/322259672_The_Half-Logistic_Generalized_Weibull_Distribution
halfLogisGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al,be) exp(1 -(1 +x ^al /lam) ^be)
  f <- function(x,lam,al,be) 2 *al *be /lam *x ^(al -1) *(1 +x ^al /lam) ^(be -1) *z(x,lam,al,be) *(1 +z(x,lam,al,be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Half logistic Poisson distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
halfLogisPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *ga /(1 -exp(-al)) *(x -be) ^(-2) *exp(-al +ga *x /(x -be) +al *exp(ga *x /(x -be)))
  lazy_call.(x,y,pLL,f,ext)
}

## Half-logistic Weibull distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/322259672_The_Half-Logistic_Generalized_Weibull_Distribution
halfLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *al /lam *x ^(al -1) *exp(-x ^al /lam) *(1 +exp(-x ^al /lam)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Half-normal distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
halfNormF. <- function(x, y = NULL, ext = F, ...) {  # child of Half Exponential Power
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 2 /sqrt(2 *pi *lam ^2) *exp(-0.5 *((x -nu) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Half-Pearson VII distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
halfPear7F. <- function(x, y = NULL, ext = F, ... ) {  # m > 1/2; similar to Pearson VII (and half ~), Cauchy, RBW, and Student's t
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /beta(1 /2,al -1/2) *abs(2 /lam) *(1 +((x -nu) /lam) ^2) ^(-al)
  lazy_call.(x,y,pLL,f,ext)
}


## Halphen distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
halphenF. <- function(x, y = NULL, ext = F, ...) {  # brother of Generalized inverse gaussian, Halphen
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /besselK(2 *be,al) /2 /abs(lam) *((x -nu) /lam) ^(al -1) * exp(-be *((x -nu) /lam) -be *((x -nu) /lam) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Harris extended exponential distribution == (2020-03-17) ==
## https://www.researchgate.net/publication/334971340_Topp-Leone_odd_log-logistic_exponential_distribution_Its_improved_estimators_and_applications
harrisExtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al ^be /lam *exp(-x /lam) *(1 -(1 -al) *exp(-x /be /lam)) ^(be +1)
  lazy_call.(x,y,pLL,f,ext)
}


## Hohlfeld distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
hohlfeldF. <- function(x, y = NULL, ext = F, ...) {  # child of Half Exponential Power
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /gamma(2 /3) *abs(3 /2 /lam) *exp(-((x -nu) /lam) ^(3 /2))
  lazy_call.(x,y,pLL,f,ext)
}


## Hyperbola distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
hyperbolaF. <- function(x, y = NULL, ext = F, ...) {  # brother of Generalized inverse gaussian, Halphen, Hyperbola
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /besselK(2 *al,0) /2 /abs(lam) *((x -nu) /lam) ^(-1) *exp(-al *((x -nu) /lam) -al *((x -nu) /lam) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Hyperbolic secant distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
hyperSecantF. <- function(x, y = NULL, ext = F, ...) {  # brother of Beta-logistic, Central-logistic
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam,al) 1 /pi /abs(lam) *(exp((x -nu) /lam) +exp(-(x -nu) /lam)) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Hyperbolic sine distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
hyperSineF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_al  # 0 < al < 1
  f <- function(x,al) 2 ^al /beta((1 -al) /2,al) *sinh(x) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse chi distribution == (2020-01-25) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
invChiF. <- function(x, y = NULL, ext = F, ...) {  # (degrees of freedom) j > 0, x >= 0; interger n := al
  pLL <- pLL_al
  f <- function(x,al) 2 *sqrt(2) /gamma(al /2) *(1/sqrt(2) /x) ^(al +1) *exp(-1/2 /x ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse chi-square distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
invChiSqrF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...; interger n := al
  pLL <- pLL_al
  f <- function(x,al) 2 /gamma(al /2) *(1 /2 /x) ^(al /2 +1) *exp(-1 /2 /x)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse exponential distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
invExpF. <- function(x, y = NULL, ext = F, ...) {  # child of Half Exponential Power
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /abs(lam) *((x -nu) /lam) ^(-2) *exp(-((x -nu) /lam) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse exponential Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
invExpPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam /(exp(al) -1) *x ^(-2) *exp(-x ^(-1) /lam +al *exp(-x ^(-1) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse gamma distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Inverse-gamma_distribution
invGamF. <- function(x, y = NULL, ext = F, ...) {  # (shape) k > 0, (scale) lam > 0
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /gamma(al) /abs(lam) *(lam /x) ^(al +1) *exp(-lam /x)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Gaussian (Wald) distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Inverse_Gaussian_distribution
invGaussF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu > 0, (shape) k > 0;  aka Wald
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) sqrt(lam /2 /pi /x ^3) *exp(-lam *(x -nu)^2 /2 /nu^2 /x)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse half-normal distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
invHalfNormF. <- function(x, y = NULL, ext = F, ...) {  # child of Half Exponential Power
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) sqrt(2 *lam ^2) *((x -nu) ^(-1) /lam) ^2 *exp(-0.5 *((x -nu) ^(-1) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Lomax distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
invLomF. <- function(x, y = NULL, ext = F, ... ) {  # Not good prediction...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(x /lam) ^(al -1) *(1 +x /lam) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Maxwell distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
invMaxF. <- function(x, y = NULL, ext = F, ...) {  # child of Half Exponential Power; scale lam := al
  pLL <- pLL_al
  f <- function(x,al) al /sqrt(8 *pi) *(x ^(-1) /al) ^4 *exp(-0.5 *(x ^(-1) /al) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Nakagami distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
invNakaF. <- function(x, y = NULL, ext = F, ...) {  # child of Half Exponential Power
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 2 /gamma(al) /abs(lam) *((x -nu) /lam) ^(-2 *al -1) *exp(-((x -nu) /lam) ^(-2))
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse paralogistic distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
invParaLogisF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_al
  f <- function(x,al) al ^2 *x ^(al ^2 -1) *(1 +x ^al) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Rayleigh distribution == (2020-02-08) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
invRayF. <- function(x, y = NULL, ext = F, ...) {  # My modification, x --> x -nu
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 2 *sqrt(2 *lam ^2) * (1 /sqrt(2 *lam ^2) /(x -nu)) ^3 *exp(-1/2 /lam ^2 /(x -nu) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Rayleigh Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
invRayPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *al /lam /(exp(al) -1) *x ^(-3) *exp(-x ^(-2) /lam +al *exp(-x ^(-2) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Weibull distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/331882388_Alpha_power_inverse_Weibull_distribution_with_reliability_application
invWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *x ^(-al -1) *exp(-x ^(-al) /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverse Weibull Poisson distribution == (2020-07-28) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
invWeiPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) exp(-al *x ^(-be))
  f <- function(x,al,be,ga) al *be *ga /(exp(ga) -1) *x ^(-be -1) *z(x,al,be) *exp(ga *z(x,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Inverted beta distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/263311157_The_beta-Weibull_geometric_distribution
invtBetaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) 1 /beta(al,be) *x ^(al -1) *(1 +x) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Inverted exponential distribution == (2020-03-09) ==
## https://www.researchgate.net/publication/338198214_Theoretical_Analysis_of_the_Weibull_Alpha_Power_Inverted_Exponential_Distribution_Properties_and_Applications
invtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam
  f <- function(x,lam) (x /lam) ^(-1) *exp(-(x /lam) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Johnson's SB distribution == (2020-01-07) ==
## https://www.vosesoftware.com/riskwiki/JohnsonBdistribution.php
jsbF. <- function(x, y = NULL, ext = F, ...) {  # Note: ma and mi are NOT a gimmick because you want to aovid denominator --> Inf
  pLL <- pLL_al_be_ga_de
  f <- function (x,al,be,ga,de) be *(de -ga) /(x -ga) /(de -x) /sqrt(2 *pi) *exp(-1 /2 *(al +be *log((x -ga) /(de -x))) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Johnson's SU distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Johnson%27s_SU-distribution
## https://cran.r-project.org/web/packages/SuppDists/SuppDists.pdf
## http://www.ntrand.com/jp/johnson-su-distribution/
jsuF. <- function(x, y = NULL, ext = F, ...) {  # nu, lam, al, be > 0; S"U" denotes an "U"nbounded distribution
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) be *(1 +((x -nu) /lam) ^2) ^(-1/2) /sqrt(2 *pi *lam ^2) *exp(-1/2 *(al +be *asinh((x -nu) /lam)) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## K distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
kF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 2 /gamma(al) /gamma(be) /abs(lam) *(x /lam) ^((al +be) /2 -1) *besselK(2 *(x /lam) ^(1 /2), al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Kappa distribution == (2020-01-14) ==
## https://reader.elsevier.com/reader/sd/pii/S1018364718303902?token=214375597B5825A0690D935012A7B72C91463B28139BDA7D4B5F33E7FEB24C2145E5B51CE5921056E2ECD95C34C4533C
kappaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(be -1) *(al +(x /lam) ^(al *be)) ^(-(al +1) /al)
  lazy_call.(x,y,pLL,f,ext)
}


## Kies distribution == (2020-07-23) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
kiesF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,de,et,th) 1 -exp(-be *((x -et) /(th -x)) ^de)
  f <- function(x,al,be,ga,de) al *be *(ga -de) /(de -x) ^2 *((x -ga) /(de -x)) ^(be -1) *exp(-al *((x -ga) /(de -x)) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Burr type III distribution == (2020-01-25) ==
## https://www.researchgate.net/profile/Abeer_El-Helbawy/publication/292672612_The_Kumaraswamy-Burr_Type_III_Distribution_Properties_and_Estimation/links/5bf2cf1b299bf1124fde4ff0/The-Kumaraswamy-Burr-Type-III-Distribution-Properties-and-Estimation.pdf
kumaBurr3F. <- function(x, y = NULL, ext = F, ...) {  # = Exponentiated Burr XII
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *ga *x ^(-ga -1) *(1 +x ^(-ga)) ^(-al -1) *(1 -(1 +x ^(-ga)) ^(-al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Burr type X distribution == (2020-08-05) ==
## https://www.academia.edu/23043652/The_Kumaraswamy_Generalized_Power_Weibull_Distribution?email_work_card=view-paper
kumaBurr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be) al *be /lam *(x /lam) *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-chi-square distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaChiSqrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) incgamma((x /2) ^2, al /2, lower_upper_regular = 3)
  f <- function(x,al,be,ga) 1 /gamma(al /2) *be *ga *(x /2) ^(al -1) *exp(-(x /2) ^2) *z(x,al) ^(be -1) *(1 -z(x,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy complementary Weibull geometric distribution == (2020-02-21) ==
## https://www.researchgate.net/publication/303299501_A_New_Lifetime_Model_with_Variable_Shapes_for_the_Hazard_Rate
kumaCompWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) exp(-(x /lam) ^be)
  f <- function(x,lam,al,be,ga,de) al ^de *be * ga *de/lam *(x /lam) ^(be -1) *z(x,lam,be) *(1 -z(x,lam,be)) ^(de -1) *(al +(1 -al) *z(x,lam,be)) ^(-de -1) *(1 -(al *(1 -z(x,lam,be)) /(al +(1 -al) *z(x,lam,be))) ^de) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy compound Rayleigh distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/316846018_The_Kumaraswamy_compound_Rayleigh_distribution_properties_and_estimation
kumaCompoRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -(1 +x ^2 /lam) ^(-ga)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga *x /(lam +x ^2) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Dagum distribution == (2020-07-21) ==
## http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.925.7006&rep=rep1&type=pdf
kumaDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 +x ^(-ga) /lam
  f <- function(x,lam,al,be,ga) al *be *ga /lam *x ^(-ga -1) *z(x,lam,ga) ^(-al *be -1) *(1 -z(x,lam,ga) ^(-al *be)) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Erlang-truncated exponential distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/303806446_GENERALIZED_ERLANG-TRUNCATED_EXPONENTIAL_DISTRIBUTION
kumaErlTruncExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-(1 -exp(-ga)) *x /lam)
  f <- function(x,lam,al,be,ga) al *be *(1 -exp(-ga)) /lam *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponential distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
kumaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated additive Weibull distribution == (2020-05-07) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
kumaExpAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,ga,de,et,th) 1 -exp(-(ga *x ^de +et *x ^th))
  f <- function(x,al,be,ga,de,et,th) al *be *(ga *de *x ^(de -1) +et *th *x ^(th -1)) *(1 -z(x,ga,de,et,th)) *z(x,ga,de,et,th) ^(al -1) *(1 -z(x,ga,de,et,th) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponential Weibull distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
kumaExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 -exp(-x /lam -al *x ^be)
  f <- function(x,lam,al,be,ga,de) (1 /lam +al *be *x ^(be -1)) *ga *de *(1 -z(x,lam,al,be)) *z(x,lam,al,be) ^(ga -1) *(1 -z(x,lam,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated Burr XII distribution == (2020-01-25) ==
## https://www.researchgate.net/publication/283934615_On_five-parameter_Burr_XII_distribution_Properties_and_applications
kumaExpBurr12F. <- function(x, y = NULL, ext = F, ...) {  # The original has 5 parameters but its calculation failed, so I organized it to 4 paras...
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -(1 +x ^ga) ^(-de)
  f <- function(x,al,be,ga,de) al *be *ga *de *x ^(ga -1) /(1 +x ^ga) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated Chen distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/324818224_Kumaraswamy_Exponentiated_Chen_Distribution_for_Modelling_Lifetime_Data
kumaExpChenF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(ga *(1 -exp(x ^de)))
  f <- function(x,al,be,ga,de) al *be *ga *de *x ^(de -1) *exp(x ^de) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated exponential distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x)
  f <- function(x,al,be,ga) al *be *ga *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 -z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated Frechet distribution == (2020-08-13) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
kumaExpFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,ga,de) 1 -(1 -exp(-(x /lam) ^(-ga))) ^de
  f <- function(x,lam,al,be,ga,de) al *be *ga /lam *(x /lam) ^(-ga -1) *(exp(-(x /lam) ^(-ga)) -1) ^(-1) *(1 -z(x,lam,ga,de)) *z(x,lam,ga,de) ^(al -1) *(1 -z(x,lam,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated linear failure rate distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaExpLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-(ga *x +de *x ^2))
  f <- function(x,al,be,ga,de) al *be *(ga +2 *de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated inverse exponential distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
kumaExpInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -(1 -exp(-(x /lam) ^(-1))) ^ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-2) *(exp((x /lam) ^(-1)) -1) ^(-1) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated inverse Rayleigh distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
kumaExpInvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -(1 -exp(-(x /lam) ^(-2))) ^ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-3) *(exp((x /lam) ^(-2)) -1) ^(-1) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated modified Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaExpModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -exp(-(ga *x +de *x ^et))
  f <- function(x,al,be,ga,de,et) al *be *(ga +de *et *x ^(et -1)) *(1 -z(x,ga,de,et)) *z(x,ga,de,et) ^(al -1) *(1 -z(x,ga,de,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated Rayleigh distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaExpRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x ^2)
  f <- function(x,al,be,ga) 2 *al *be *ga *x *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 -z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated U-quadratic distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
kumaExpUQuadF. <- function(x, y = NULL, ext = F, ...) {  # = kumaUQuad due to my reduction of parameter
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be) (be /3) *((x -al) ^3 -(al -be) ^3)
  f <- function(x,al,be,ga,de) be *ga *de *(x -al) ^2 *z(x,al,be) ^(ga -1) *(1 -z(x,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy exponentiated Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaExpWei2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-ga *x ^de)
  f <- function(x,al,be,ga,de) al *be *ga *de *x ^(de -1) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy flexible Weibull extension distribution == (2020-08-15) ==
## https://www.researchgate.net/publication/311807683_The_Kumaraswamy_Flexible_Weibull_Extension
kumaFlexWeiExtF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be) 1 -exp(-exp(al *x -be /x))
  f <- function(x,al,be,ga,de) ga *de *(al +be /x ^2) *exp(al *x -be /x) *(1 -z(x,al,be)) *z(x,al,be) ^(ga -1) *(1 -z(x,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Fréchet distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/330169129_A_New_Statistical_Model_for_Extreme_Values_Properties_and_Applications
kumaFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^be *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Fréchet Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
kumaFrePoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 /(exp(ga) -1) *(exp(ga *exp(-x ^(-de))) -1)
  f <- function(x,al,be,ga,de) al *be *ga *de /(exp(ga) -1) *x ^(-de -1) *exp(-x ^(-de) +ga *exp(-x ^(-de))) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-gamma distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) incgamma(x /lam, al, lower_upper_regular = 3)
  f <- function(x,lam,al,be,ga) 1 /gamma(al) *be *ga /lam *(x /lam) ^(al -1) *exp(-x /lam) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized exponentiated exponential distribution == (2020-08-15) ==
## http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.686.2004&rep=rep1&type=pdf
kumaGenExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized exponentiated Gumbel type-2 distribution == (2020-08-15) ==
## https://www.ajol.info/index.php/afst/article/view/167113/156551
kumaGenExpGum2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,ga,de) 1 -(1 -exp(-x ^(-ga) /lam)) ^de
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *x ^(-ga -1) *(exp(x ^(-ga) /lam) -1) ^(-1) *(1 -z(x,lam,ga,de)) *z(x,lam,ga,de) ^(al -1) *(1 -z(x,lam,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized exponentiated Pareto distribution == (2020-08-15) ==
## http://www.idosi.org/ejas/5(3)13/5.pdf
kumaGenExpPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) (1 +x) ^(-ga)
  f <- function(x,al,be,ga) al *be *ga /(1 +x) *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 -z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-generalized gamma distribution == (2020-08-15) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaGenGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) incgamma((x /lam) ^be, al, lower_upper_regular = 3)
  f <- function(x,lam,al,be,ga,de) 1 /gamma(al) *be *ga *de /lam *(x /lam) ^(al *be -1) *exp(-(x /lam) ^be) *z(x,lam,al,be) ^(ga -1) *(1 -z(x,lam,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-generalized half-normal distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) incgamma(h(x,lam,al) ^(2 *al), 1 /2, lower_upper_regular = 3)
  h <- function(x,lam,al) x /lam /2 ^(1 /2 /al)
  f <- function(x,lam,al,be,ga) 2 /gamma(1 /2) *al *be *ga /x *h(x,lam,al) ^al *exp(-h(x,lam,al) ^(2 *al)) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumarasawamy generalized kappa distribution == (2020-01-24) ==
## https://reader.elsevier.com/reader/sd/pii/S1018364718303902?token=214375597B5825A0690D935012A7B72C91463B28139BDA7D4B5F33E7FEB24C2145E5B51CE5921056E2ECD95C34C4533C
kumaGenKappaF. <- function(x, y = NULL, ext = F, ...) {  # I found a mistake of the formula in the paper...
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 +al *(x /lam) ^(-al *be)
  f <- function(x,lam,al,be,ga,de) {  # Wrong: ^(-(ga -1) /al),  Right: ^(-(ga -al) /al)
    al *be *ga *de /lam *(x /lam) ^(be -1) *(al +(x /lam) ^(al *be)) ^(-(al +1) /al) *z(x,lam,al,be) ^(-(ga -al) /al) * (1 -z(x,lam,al,be) ^(-ga /al)) ^(de -1)
  }
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
kumaGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-ga *x -de /2 *x ^2)
  f <- function(x,al,be,ga,de) al *be *(ga +de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-generalized Lomax distribution == (2020-07-31) ==
## https://pdfs.semanticscholar.org/588d/9299f07fbd140b71eeb87d931493ab4fe910.pdf?_ga=2.196684330.702420109.1596162416-1809871880.1595456056
kumaGenLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) 1 -(1 +x) ^(-be)
  f <- function(x,al,be) al *be /(1 +x) *z(x,be) ^(al -1) *(1 -z(x,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized Pareto distribution == (2020-03-04) ==
## https://www.researchgate.net/publication/316242403_The_Gamma_Generalized_Pareto_Distribution_with_Applications_in_Survival_Analysis
kumaGenPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 +be *x /lam
  f <- function(x,lam,al,be,ga) al *ga /lam *(1 -z(x,lam,be) ^(-1 /be)) ^(al -1) *z(x,lam,be) ^(-1 /be -1) *(1 -(1 -z(x,lam,be) ^(-1 /be)) ^al) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized power exponential distribution == (2020-08-05) ==
## https://www.academia.edu/23043652/The_Kumaraswamy_Generalized_Power_Weibull_Distribution?email_work_card=view-paper
kumaGenPowExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy generalized power Weibull distribution == (2020-08-05) ==
## https://www.academia.edu/23043652/The_Kumaraswamy_Generalized_Power_Weibull_Distribution?email_work_card=view-paper
kumaGenPowWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 -exp(1 -(1 +(x /lam) ^al) ^be)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^al) ^(be -1) *(1 -z(x,lam,al,be)) *z(x,lam,al,be) ^(ga -1) *(1 -z(x,lam,al,be) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Gompertz distribution == (2020-08-16) ==
## https://www.researchgate.net/publication/278787377_New_defective_models_based_on_the_Kumaraswamy_family_of_distributions_with_application_to_cancer_data_sets
kumaGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-ga *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga *exp(x /lam) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Gompertz Makeham distribution == (2020-08-16) ==
## https://www.researchgate.net/publication/342097413_On_Kumaraswamy_Gompertz_Makeham_Distribution
kumaGomMakF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,ga,de) 1 -exp(-ga *x -de *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga,de) al *be *(ga +de *exp(x /lam)) *(1 -z(x,lam,ga,de)) *z(x,lam,ga,de) ^(al -1) *(1 -z(x,lam,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Gumbel distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/273061479_The_Exponentiated_Generalized_Gumbel_Distribution
kumaGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) exp(-exp(-(x -nu) /lam))
  f <- function(x,nu,lam,al,be) al *be *exp(-(x -nu) /lam) *z(x,nu,lam) ^al *(1 -z(x,nu,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Gumbel minimum distribution == (2020-08-16) ==
## https://www.researchgate.net/publication/299425135_on_The_Kumaraswamy-Gumbel_Minimum_Distribution
kumaGumMinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 -exp(-(exp((x -nu) /lam)))
  f <- function(x,nu,lam,al,be) al *be /lam *exp((x -nu) /lam) *(1 -z(x,nu,lam)) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Gumbel type-2 distribution == (2020-08-15) ==
## https://www.ajol.info/index.php/afst/article/view/167113/156551
kumaGum2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) exp(-x ^(-ga) /lam)
  f <- function(x,lam,al,be,ga) al *be *ga *de /lam *x ^(-ga -1) *exp(x ^(-ga) /lam) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy half-Cauchy distribution == (2020-05-01) ==
## https://www.researchgate.net/publication/326441057_The_Log-Odd_Normal_Generalized_Family_of_Distributions_with_Application
kumaHalfCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 2 /pi *atan(x /lam)
  f <- function(x,lam,al,be) 2 /pi *al *be /lam *(1 +(x /lam) ^2) ^(-1) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy half-logistic distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/321295370_Kumaraswamy_Half-Logistic_Distribution_Properties_and_Applications
kumaHalfLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be) 2 *al *be /lam *z(x,lam) /(1 +z(x,lam)) ^2 *((1 -z(x,lam)) /(1 +z(x,lam))) ^(al -1) *(1 -((1 -z(x,lam)) /(1 +z(x,lam))) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy half-normal distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) incgamma((x /lam) ^2 /2, 2, lower_upper_regular = 3)
  f <- function(x,lam,al,be) 1 /2 *al *be /lam *(x /lam) ^3 *exp(-(x /lam) ^2 /2) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse exponential distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/317065595_Application_of_Kumaraswamy_Inverse_Exponential_Distribution_to_Real_Lifetime_Data
kumaInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-lam /x)
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-2) *z(x,lam) ^al *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse exponential Poisson distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
kumaInvExpPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 /(exp(ga) -1) *(exp(ga *exp(-x ^(-1) /lam)) -1)
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(exp(ga) -1) *x ^(-2) *exp(-x ^(-1) /lam +ga *exp(-x ^(-1) /lam)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse Rayleigh distribution == (2020-08-13) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
kumaInvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-(x /lam) ^(-2))
  f <- function(x,lam,al,be) 2 *al *be /lam *(x /lam) ^(-3) *z(x,lam) ^al *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse Rayleigh Poisson distribution == (2020-08-17) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
kumaInvRayPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 /(exp(ga) -1) *(exp(ga *exp(-x ^(-2) /lam)) -1)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam /(exp(ga) -1) *x ^(-3) *exp(-x ^(-2) /lam +ga *exp(-x ^(-2) /lam)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse Weibull distribution == (2020-08-14) ==
## https://www.researchgate.net/publication/325934457_The_Kumaraswamy_Exponentiated_Frechet_Distribution
kumaInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) exp(-(x ^ga /lam) ^(-1))
  f <- function(x,lam,al,be,ga) al *be *ga *lam /x ^(ga +1) *z(x,lam,ga) ^al *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse Weibull Poisson distribution == (2020-08-16) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
kumaInvWeiPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,ga,de) 1 /(exp(ga) -1) *(exp(ga *exp(-x ^(-de) /lam)) -1)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam /(exp(ga) -1) *exp(-x ^(-de) /lam +ga *exp(-x ^(-de) /lam)) *z(x,lam,ga,de) ^(al -1) *(1 -z(x,lam,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Lindley distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/285585413_The_Transmuted_Exponentiated_Generalized-G_Family_of_Distributions
kumaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-(x /lam))
  f <- function(x,lam,al,be) al *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy linear failure rate distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-(ga *x +de *x ^2))
  f <- function(x,al,be,ga,de) al *be *(ga +2 *de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy log-logistic distribution == (2020-03-07) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
kumaLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (1 +(x /lam) ^al) ^(-1)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al *be -1) *z(x,lam,al) ^(be +1) *(1 -(1 -z(x,lam,al)) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Lomax distribution == (2020-03-07) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
kumaLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(1 +x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 +x /lam) ^(-al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Marshall-Olkin-exponential distribution == (2020-03-01) ==
## https://www.sciencedirect.com/science/article/pii/S1110256X14001321
kumaMaolExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be,ga) al *be *(1 -ga) /lam *z(x,lam) *(1 -z(x,lam)) ^(al -1) /(1 -ga *z(x,lam)) ^(al +1) *(1 -((1 -z(x,lam)) /(1 -ga *z(x,lam))) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Marshall-Olkin-Fréchet distribution == (2020-03-01) ==
## https://www.sciencedirect.com/science/article/pii/S1110256X14001321
kumaMaolFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^(-de))
  f <- function(x,lam,al,be,ga,de) al *be *(1 -ga) *de /lam *(x /lam) ^(-de -1) *(1 -z(x,lam,de)) *(1 -z(x,lam,de)) ^(al -1) /(1 -ga *z(x,lam,de)) ^(al +1) *(1 -((1 -z(x,lam,de)) /(1 -ga *z(x,lam,de))) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Marshall-Olkin log-logistic distribution == (2020-03-09) ==
## https://www.researchgate.net/publication/325122760_The_Kumaraswamy_Marshall-Olkin_Log-Logistic_Distribution_with_Application
kumaMaolLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 +al *(x /lam) ^(-be)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(-be -1) *z(x,lam,al,be) ^(-ga -1) *(1 -z(x,lam,al,be) ^(-ga)) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Marshall-Olkin-Lomax distribution == (2020-03-01) ==
## https://www.sciencedirect.com/science/article/pii/S1110256X14001321
kumaMaolLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) (1 +x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) al *be *(1 -ga) *de /lam *(1 +x /lam) ^(-de -1) *(1 -z(x,lam,de)) ^(al -1) /(1 -ga *z(x,lam,de)) ^(al +1) *(1 -((1 -z(x,lam,de)) /(1 -ga *z(x,lam,de))) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Marshall-Olkin-Rayleigh distribution == (2020-03-01) ==
## https://www.sciencedirect.com/science/article/pii/S1110256X14001321
kumaMaolRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(-x ^2 /lam)
  f <- function(x,lam,al,be,ga) 2 *al *be *(1 -ga) /lam *x *z(x,lam) *(1 -z(x,lam)) ^(al -1) /(1 -ga *z(x,lam)) ^(al +1) *(1 -((1 -z(x,lam)) /(1 -ga *z(x,lam))) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Marshall-Olkin-Weibull distribution == (2020-03-01) ==
## https://www.sciencedirect.com/science/article/pii/S1110256X14001321
kumaMaolWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(-x ^de /lam)
  f <- function(x,lam,al,be,ga,de) al *be *(1 -ga) *de /lam *x ^(de -1) *z(x,lam,de) *(1 -z(x,lam,de)) ^(al -1) /(1 -ga *z(x,lam,de)) ^(al +1) *(1 -((1 -z(x,lam,de)) /(1 -ga *z(x,lam,de))) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Maxwell distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaMaxF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) incgamma(x ^2 /lam, 3 /2, lower_upper_regular = 3)
  f <- function(x,lam,al,be) 2 /gamma(3 /2) *al *be /sqrt(lam) *(x ^2 /lam) *exp(-x ^2 /lam) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy modified Burr-III distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
kumaModBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,de) 1 +x ^(-de)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be *de *x ^(-de -1) *z(x,de) ^(-al *be -1) *(1 -z(x,de) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
kumaModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x)
  f <- function(x,al,be,ga) al *be *ga *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 -z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy modified Weibull distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/299123117_The_transmuted_geometric-G_family_of_distributions_Theory_and_applications
kumaModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -exp(-(ga *x ^de *exp(et *x)))
  f <- function(x,al,be,ga,de,et) al *be *ga *(de +et *x) *x ^(de -1) *exp(et *x -ga *x ^de *exp(et *x)) *z(x,ga,de,et) ^(al -1) *(1 -z(x,ga,de,et) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Nakagami distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaNakaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) incgamma(x ^2 /lam *al, al, lower_upper_regular = 3)
  f <- function(x,lam,al,be,ga) 2 /gamma(al) *be *ga /sqrt(lam /al) *(x /sqrt(lam /al)) ^(2 *al -1) *exp(-x ^2 /lam *al) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy normal distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/317527934_The_odd_log-logistic_logarithmic_generated_family_of_distributions_with_applications_in_different_areas
kumaNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al *be /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy odd log-logistic-Gumbel distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/269165990_A_new_family_of_distributions_the_Kumaraswamy_odd_log-logistic_properties_and_applications
kumaOddLogLogisGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) exp(-exp(-(x -nu)/lam))
  f <- function(x,nu,lam,al,be,ga) al *be *ga /lam *exp(-(x -nu) /lam -exp(-(x -nu) /lam)) *z(x,nu,lam) ^(al *be -1) *(1 -z(x,nu,lam)) ^(al -1) *(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al) ^(-be -1) *(1 -(z(x,nu,lam) ^al /(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al)) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy odd log-logistic-normal distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/269165990_A_new_family_of_distributions_the_Kumaraswamy_odd_log-logistic_properties_and_applications
kumaOddLogLogisNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) stcum((x -nu)/lam)
  f <- function(x,nu,lam,al,be,ga) al *be *ga /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al *be -1) *(1 -z(x,nu,lam)) ^(al -1) *(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al) ^(-be -1) *(1 -(z(x,nu,lam) ^al /(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al)) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy odd log-logistic-Weibull distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/269165990_A_new_family_of_distributions_the_Kumaraswamy_odd_log-logistic_properties_and_applications
kumaOddLogLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(de -1) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de)) ^(al -1) *(z(x,lam,de) ^al +(1 -z(x,lam,de)) ^al) ^(-be -1) *(1 -(z(x,lam,de) ^al /(z(x,lam,de) ^al +(1 -z(x,lam,de)) ^al)) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Pareto distribution == (2020-03-26) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
kumaPareF. <- function(x, y = NULL, ext = F, ...) {  # = KumaExpPare (due to equivalent parameter reduction)
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumraswamy Pareto IV distribution == (2020-04-23) ==
## https://www.academia.edu/12965162/The_Kumaraswamy_Pareto_IV_distribution?email_work_card=title
kumaPare4F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(-be -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1) *(1 -(1 -z(x,lam,al) ^(-be)) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy power distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
kumaPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(x /lam) ^al
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Rayleigh distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x ^2)
  f <- function(x,al,be,ga) 2 *al *be *ga *x *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 -z(x,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
kumaRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-be *(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-al -1) *z(x,lam,al,be) *(1 -z(x,lam,al,be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-scaled chi-square distribution == (2020-08-16) ==
## https://www.ime.usp.br/~abe/lista/pdf9jLuJlKvZh.pdf
kumaScaChiSqrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) incgamma(x /sqrt(2) /lam, al /2, lower_upper_regular = 3)
  f <- function(x,lam,al,be,ga) 1 /gamma(al /2) *be *ga /sqrt(2) /lam *(x /sqrt(2) /lam) ^(al /2 -1) *exp(-x /sqrt(2) /lam) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated additive Weibull distribution == (2020-05-07) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
kumaTransAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et_th
  z <- function(x,ga,de,et,th) 1 -exp(-(ga *x ^de +et *x ^th))
  f <- function(x,lam,al,be,ga,de,et,th) al *be *(ga *de *x ^(de -1) +et *th *x ^(th -1)) *(1 -z(x,ga,de,et,th)) *z(x,ga,de,et,th) ^(al -1) *(1 +lam -2 *lam *z(x,ga,de,et,th)) *(1 +lam -lam *z(x,ga,de,et,th)) ^(al -1) *(1 -z(x,ga,de,et,th) ^al *(1 +lam -lam *z(x,ga,de,et,th)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted Burr X distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/296691997_The_Kumaraswamy_Transmuted-G_Family_of_Distributions_Properties_and_Applications
kumaTransBurr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga,de) 2 *al *be *ga /lam *(x /lam) *(1 -z(x,lam)) *(1 +de -2 *de *z(x,lam) ^al) *z(x,lam) ^(al *be -1) *(1 +de -de *z(x,lam) ^al) ^(be -1) *(1 -(1 +de -de *z(x,lam) ^al) ^be *z(x,lam) ^(al *be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponential distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/296691997_The_Kumaraswamy_Transmuted-G_Family_of_Distributions_Properties_and_Applications
kumaTransExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) (1 -exp(-x /lam)) *(1 +ga *exp(-x /lam))
  f <- function(x,lam,al,be,ga) al *be /lam *exp(-x /lam) *(1 -ga +2 *ga *exp(-x /lam)) *z(x,lam,ga) ^(al -1) *(1 -z(x,lam,ga) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated additive Weibull distribution == (2020-02-22) ==
## https://www.researchgate.net/publication/295688313_Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
kumaTransExpAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_p_q_r
  z <- function(x,al,be,ga,de) 1 -exp(-(al *x ^be +ga *x ^de))
  f <- function(x,lam,al,be,ga,de,p,q,r) p *q *r *(al *be *x ^(be -1) +ga *de *x ^(de -1)) *(1 -z(x,al,be,ga,de)) *z(x,al,be,ga,de) ^(p *q -1) *(1 +lam -2 *lam *z(x,al,be,ga,de) ^p) *(1 +lam -lam *z(x,al,be,ga,de) ^p) ^(q -1) *(1 -z(x,al,be,ga,de) ^(p *q) *(1 +lam -lam *z(x,al,be,ga,de) ^p) ^q) ^(r -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated exponential distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,de) 1 -exp(-de *x)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de *(1 -z(x,de)) *z(x,de) ^(al *be -1) *(1 +lam -2 *lam *z(x,de) ^al) *(1 +lam -lam *z(x,de) ^al) ^(be -1) *(1 -z(x,de) ^(al *be) *(1 +lam -lam *z(x,de) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated linear failure rate distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransExpLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,de,et) 1 -exp(-(de *x +et *x ^2))
  f <- function(x,lam,al,be,ga,de,et) al *be *ga *(de +2 *et *x) *(1 -z(x,de,et)) *z(x,de,et) ^(al *be -1) *(1 +lam -2 *lam *z(x,de,et) ^al) *(1 +lam -lam *z(x,de,et) ^al) ^(be -1) *(1 -z(x,de,et) ^(al *be) *(1 +lam -lam *z(x,de,et) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
kumaTransExpModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,de) 1 -exp(-de *x)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de *(1 -z(x,de)) *z(x,de) ^(al *be -1) *(1 +lam -2 *lam *z(x,de) ^al) *(1 +lam -lam *z(x,de) ^al) ^(be -1) *(1 -z(x,de) ^(al *be) *(1 +lam -lam *z(x,de) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated modified Weibull distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
kumaTransExpModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et_th
  z <- function(x,de,et,th) 1 -exp(-(de *x +et *x ^th))
  f <- function(x,lam,al,be,ga,de,et,th) al *be *ga *(de +et *th *x ^(th -1)) *(1 -z(x,de,et,th)) *z(x,de,et,th) ^(al *be -1) *(1 +lam -2 *lam *z(x,de,et,th) ^al) *(1 +lam -lam *z(x,de,et,th) ^al) ^(be -1) *(1 -z(x,de,et,th) ^(al *be) *(1 +lam -lam *z(x,de,et,th) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated Rayleigh distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransExpRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,de) 1 -exp(-de *x ^2)
  f <- function(x,lam,al,be,ga,de) 2 *al *be *ga *de *x *(1 -z(x,de)) *z(x,de) ^(al *be -1) *(1 +lam -2 *lam *z(x,de) ^al) *(1 +lam -lam *z(x,de) ^al) ^(be -1) *(1 -z(x,de) ^(al *be) *(1 +lam -lam *z(x,de) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted exponentiated Weibull distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,de,et) 1 -exp(-de *x ^et)
  f <- function(x,lam,al,be,ga,de,et) al *be *ga *de *et *x ^(et -1) *(1 -z(x,de,et)) *z(x,de,et) ^(al *be -1) *(1 +lam -2 *lam *z(x,de,et) ^al) *(1 +lam -lam *z(x,de,et) ^al) ^(be -1) *(1 -z(x,de,et) ^(al *be) *(1 +lam -lam *z(x,de,et) ^al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted linear failure rate distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-(ga *x +de *x ^2))
  f <- function(x,lam,al,be,ga,de) al *be *(ga +2 *de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(al -1) *(1 +lam -2 *lam *z(x,ga,de)) *(1 +lam -lam *z(x,ga,de)) ^(al -1) *(1 -z(x,ga,de) ^al *(1 +lam -lam *z(x,ga,de)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted log-logistic distribution == (2020-03-07) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
kumaTransLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) (1 +(x /lam) ^al) ^(-1)
  f <- function(x,lam,al,be,ga,de) al *be *ga /lam *(x /lam) ^(al -1) *z(x,lam,al) ^2 *(1 -z(x,lam,al)) ^(be -1) *(1 -de +2 *de *z(x,lam,al)) *(1 +de *z(x,lam,al)) ^(be -1) *(1 -((1 +de *z(x,lam,al)) *(1 -z(x,lam,al))) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
kumaTransModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x)
  f <- function(x,lam,al,be,ga) al *be *ga *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 +lam -2 *lam *z(x,ga)) *(1 +lam -lam *z(x,ga)) ^(al -1) *(1 -z(x,ga) ^al *(1 +lam -lam *z(x,ga)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted modified Weibull distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,ga,de,et) 1 -exp(-(ga *x +de *x ^et))
  f <- function(x,lam,al,be,ga,de,et) al *be *(ga +de *et *x ^(et -1)) *(1 -z(x,ga,de,et)) *z(x,ga,de,et) ^(al -1) *(1 +lam -2 *lam *z(x,ga,de,et)) *(1 +lam -lam *z(x,ga,de,et)) ^(al -1) *(1 -z(x,ga,de,et) ^al *(1 +lam -lam *z(x,ga,de,et)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted power distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/296691997_The_Kumaraswamy_Transmuted-G_Family_of_Distributions_Properties_and_Applications
kumaTransPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,de) (x /lam) ^al *(1 +de -de *(x /lam) ^al)
  f <- function(x,lam,al,be,ga,de) al *be *ga /lam *(x /lam) ^(al -1) *(1 +de -2 *de *(x /lam) ^al) *z(x,lam,al,de) ^(be -1) *(1 -z(x,lam,al,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted Rayleigh distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
kumaTransRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,ga) 1 -exp(-ga *x ^2)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga *x *(1 -z(x,ga)) *z(x,ga) ^(al -1) *(1 +lam -2 *lam *z(x,ga)) *(1 +lam -lam *z(x,ga)) ^(al -1) *(1 -z(x,ga) ^al *(1 +lam -lam *z(x,ga)) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy transmuted-Weibull distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
kumaTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga,de) al *be *ga /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *(1 +de -2 *de *z(x,lam,al)) *(z(x,lam,al) *(1 +de -de *z(x,lam,al))) ^(be -1) *(1 -((1 +de) *z(x,lam,al) -de *z(x,lam,al) ^2) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Weibull distribution == (2020-01-12) ==
## https://pdfs.semanticscholar.org/8a57/7ecddbdb1ddc28c65a38916f87ab6e12583d.pdf
kumaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  f <- function(x,al,be,ga,de) al *be *ga *de *x ^(be -1) *exp(-al *x ^be) *(1 -exp(-al *x ^be)) ^(ga -1) *(1 - (1 -exp(-al *x ^be)) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Weibull Burr XII distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/303666539_Advances_and_Applications_in_Statistics_KUMARASWAMY_WEIBULL-GENERATED_FAMILY_OF_DISTRIBUTIONS_WITH_APPLICATIONS
kumaWeiBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et_th
  z <- function(x,lam,al,de,et,th) 1 -exp(-de *((1 +(x /lam) ^al) ^et -1) ^th)
  f <- function(x,lam,al,be,ga,de,et,th) al *be *ga *de *et *th /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^al) ^(et -1) *((1 +(x /lam) ^al) ^et -1) ^(th -1) *(1 -z(x,lam,al,de,et,th)) *z(x,lam,al,de,et,th) ^(be -1) *(1 -z(x,lam,al,de,et,th) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy-Weibull geometric distribution == (2020-03-09) ==
## https://www.researchgate.net/publication/323522762_The_Kumaraswamy_Weibull_Geometric_Distribution_with_Applications
kumaWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga,de) al ^2 *be *ga *(1 -de) /lam *(x /lam) ^(al -1) *z(x,lam,al) *(1 -de *z(x,lam,al)) ^(-2) *((1 -z(x,lam,al)) /(1 -de *z(x,lam,al))) ^(be -1) *(1 -((1 -z(x,lam,al)) /(1 -de *z(x,lam,al))) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Weibull quasi Lindley distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/303666539_Advances_and_Applications_in_Statistics_KUMARASWAMY_WEIBULL-GENERATED_FAMILY_OF_DISTRIBUTIONS_WITH_APPLICATIONS
kumaWeiQuaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,al,be,et) exp(-al *((1 +et) /(1 +et +x /lam) *exp(x /lam)) ^be)
  f <- function(x,lam,al,be,ga,de,et) al *be *ga *de /lam *(et +x /lam) /(1 +et +x /lam) *((1 +et) /(1 +et +x /lam) *exp(x /lam)) ^be *z(x,lam,al,be,et) *(1 -z(x,lam,al,be,et)) ^(ga -1) *(1 -(1 -z(x,lam,al,be,et)) ^ga) ^(de -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Weibull uniform distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/303666539_Advances_and_Applications_in_Statistics_KUMARASWAMY_WEIBULL-GENERATED_FAMILY_OF_DISTRIBUTIONS_WITH_APPLICATIONS
kumaWeiUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga) 1 -exp(-al *(x /(be -x)) ^ga)
  f <- function(x,al,be,ga,de,et) al *be *ga *de *et /x ^2 *(x /(be -x)) ^(ga +1) *(1 -z(x,al,be,ga)) *z(x,al,be,ga) ^(de -1) *(1 -z(x,al,be,ga) ^de) ^(et -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy Weibull Weibull distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/303666539_Advances_and_Applications_in_Statistics_KUMARASWAMY_WEIBULL-GENERATED_FAMILY_OF_DISTRIBUTIONS_WITH_APPLICATIONS
kumaWeiWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,al,be,ga) 1 -exp(-al *(exp(x ^ga /lam) -1) ^be)
  f <- function(x,lam,al,be,ga,de,et) al *be *ga *de *et /lam *x ^(ga -1) *exp(1 -be +be *x ^ga /lam) *(1 -z(x,lam,al,be,ga)) *z(x,lam,al,be,ga) ^(de -1) *(1 -z(x,lam,al,be,ga) ^de) ^(et -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Laha distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
lahaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) sqrt(2) /pi /abs(lam) *(1 +((x -nu) /lam) ^4) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Laplace distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Laplace_distribution
laplaceF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function (x,nu,lam) 1 /2 /lam *exp(-abs(x -nu) /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Length-biased Feller-Pareto distribution == (2020-04-15) ==
## https://pdfs.semanticscholar.org/0a77/0610e3f18cd9fb6bfeed6a9fcc7dcf19084f.pdf?_ga=2.83474067.465332696.1586924775-1525756084.1586924775
lenBiasFellPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /beta(1 +1/al, be -1/al) *al /lam *(x /lam) ^al *(1 +(x /lam) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Lévy distribution == (2020-02-08) ==
## https://en.wikipedia.org/wiki/Lévy_distribution
levyF. <- function(x, y = NULL, ext = F, ...) {  # Cliff-like on left side; (location) nu, (scale) lam > 0
  pLL <- pLL_nu_lam
  f <- function (x,nu,lam) sqrt(lam /2 /pi) /(x -nu) ^(3/2) *exp(-lam /2 /(x -nu))
  lazy_call.(x,y,pLL,f,ext)
}


## Libby-Novick distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
libNovF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) /abs(lam) *((x -nu) /lam) ^(al -1) *(1 -(x -nu) /lam) ^(ga -1) *(1 -(1 -be) *(x -nu) /lam) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Libby-Novick beta-normal distribution == (2020-01-07) ==
## https://www.researchgate.net/publication/265375898_A_New_Family_of_Distributions_Libby-Novick_Beta
libNovBetaNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *stnorm((x -nu) /lam) *stcum((x -nu) /lam) ^(al -1) *(1 -stcum((x -nu) /lam)) ^(ga -1) *(1 -(1 -be) *stcum((x -nu) /lam)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Libby-Novick beta Weibull distribution == (2020-03-25) ==
## https://www.researchgate.net/publication/279511677_The_beta_Marshall-Olkin_family_of_distributions
libNovBetaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) be ^al /beta(al,ga) *de /lam *(x /lam) ^(de -1) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de)) ^ga *(1 -(1 -be) *z(x,lam,de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Lifetime exponential distribution == (2020-01-07) ==
## https://www.vosesoftware.com/riskwiki/LifetimeExpdistribution.php
lifeExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function (x,al,be) exp(al +be *x +exp(al) /be *(1 -exp(be *x)))
  lazy_call.(x,y,pLL,f,ext)
}


## Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/318638596_A_new_generalized_Poisson_Lindley_distribution
lindleyF. <- function(x, y = NULL, ext = F, ...) {  # a mixture of exp(a) & gamma(2,a)
  pLL <- pLL_lam
  f <- function(x,lam) 1 /lam /(1 +lam) *(1 +x) *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Lindley geometric distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/338390107_The_Weibull_Marshall-Olkin_Lindley_Distribution_Properties_and_Estimation
linGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam,al) 1 -(1 -al) *(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al) al /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam,al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Lindley-Poisson distribution == (2020-03-23) ==
## https://www.researchgate.net/publication/329336709_The_Generalized_Transmuted_Poisson-G_Family_of_Distributions_Theory_Characterizations_and_Applications
linPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /(exp(al) -1) /lam /(1 +lam) *(1 +x) *exp(-x /lam) *exp(al *(1 +x /(1 +lam)) *exp(-x /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Lindley-Weibull distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
linWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al ^2 *be /lam /(1 +al) *((x /lam) ^(be -1) +(x /lam) ^(2 *be -1)) *exp(-al *(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Linear exponential distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/332971234_Modified_Beta_Linear_Exponential_Distribution_with_Hydrologic_Applications
lineExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be,ga) (al *x +be) *exp(-(al *x ^2 /2 +be *x))
  lazy_call.(x,y,pLL,f,ext)
}


## Linear failure rate distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/259087309_The_gamma-Lomax_Distribution
lineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) (al +2 *be *x) *exp(-(al *x +be *x ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Linear failure rate geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
lineFRGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) exp(-be *x -ga *x ^2 /2)
  f <- function(x,al,be,ga) (1 -al) *(be +ga *x) *z(x,be,ga) /(1 -al *z(x,be,ga)) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Linear failure rate logarithmic distribution == (2020-07-30) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
lineFRLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga,de) (al +be *x) /log(1 -ga) *(1 -(1 -ga *exp(-al *x -be /2 *x ^2)) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Linear log-Dagum distribution == (2020-01-24) ==
## https://hal.archives-ouvertes.fr/hal-01491483/document
lineLogDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) exp(-2 *x -sgn.(x) *be /2 *x ^2)
  f <- function(x,al,be) al *(2 +be *abs(x)) *z(x,be) *(1 +z(x,be)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Linear logistic distribution == (2020-01-24) ==
## https://hal.archives-ouvertes.fr/hal-01491483/document
lineLogisF. <- function(x, y = NULL, ext = F, ... ) {
  pLL <- pLL_al
  z <- function(x,al) exp(-2 *x -sgn.(x) *al /2 *x ^2)
  f <- function(x,al) (2 +al *abs(x)) *z(x,al) *(1 +z(x,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-Beta Burr III distribution == (2020-07-21) ==
## https://projecteuclid.org/download/pdfview_1/euclid.bjps/1378729985
logBetaBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) 1 +exp(-(x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *(z(x,nu,lam) -1) *z(x,nu,lam) ^(-al *be +1) *(1 -z(x,nu,lam) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-beta generalized half-normal distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logBetaGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 2 *stcum(exp(1 /sqrt(2) *(x -nu) /lam)) -1
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) *1 /sqrt(pi) /lam *exp(-1 /2 *exp(sqrt(2) *(x -nu) /lam) +1 /sqrt(2) *((x -nu) /lam)) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-beta generalized half-normal geometric distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logBetaGenHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) 2 *stcum(exp(1 /sqrt(2) *(x -nu) /lam)) -1
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *(1 -be) /sqrt(pi) /lam *exp(-1 /2 *exp(sqrt(2) *(x -nu) /lam) +1 /sqrt(2) *((x -nu) /lam)) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(ga -1) *(1 -be *(1 -pbeta(z(x,nu,lam), al, ga))) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-beta half-normal distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logBetaHalfNormF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_nu_al_be
  z <- function(x,nu) 2 *stcum(exp(x -nu)) -1
  f <- function(x,nu,al,be) sqrt(2 /pi) /beta(al,be) *exp(-1 /2 *exp(2 *(x -nu)) +x -nu) *z(x,nu) ^(al -1) *(1 -z(x,nu)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-beta half-normal geometric distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logBetaHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 2 *stcum(exp(2 *(x -lam))) -1
  f <- function(x,lam,al,be,ga) sqrt(2 /pi) *(1 -be) /beta(al,ga) *exp(-1 /2 *exp(2 *(x -lam)) +x -lam) *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^(ga -1) *(1 -be *(1 -pbeta(z(x,lam), al, ga))) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log beta generalized Weibull distribution == (2020-01-12) ==
## https://iopscience.iop.org/article/10.1088/1742-6596/1366/1/012121/pdf
logBetaGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) 1 -exp(-exp((x -nu) /lam))
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *exp((x -nu) /lam -exp((x -nu) /lam)) *z(x,nu,lam) ^(al *be -1) *(1 -z(x,nu,lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-Cauchy distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
logCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /pi *abs(al /lam) *((x -nu) /lam) ^(-1) *(1 +(al *log((x -nu) /lam)) ^2) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-Dagum distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/338823174_Topp-Leone_Dagum_Distribution_Properties_and_its_Applications
logDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *exp(-x /lam) *(1 +al *exp(-x /lam)) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-extended Weibull distribution == (2020-07-22) ==
## https://www.academia.edu/5786490/A_log-extended_Weibull_regression_model?email_work_card=title
logExtWeiF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) exp((x -nu) /lam)
  f <- function(x,nu,lam,al) al /lam *z(x,nu,lam) *exp(nu +z(x,nu,lam) +al *exp(nu) *(1 -exp(z(x,nu,lam))))
  lazy_call.(x,y,pLL,f,ext)
}


## Log-exponentiated generalized half-normal distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logExpGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) 2 *stcum(exp(1 /sqrt(2) *(x -nu) /lam)) -1
  f <- function(x,nu,lam,al) al /sqrt(pi) /lam *exp(-1 /2 *exp(sqrt(2) *(x -nu) /lam) +1 /sqrt(2) *((x -nu) /lam)) *z(x,nu,lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-exponentiated generalized half-normal geometric distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logExpGenHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 2 *stcum(exp(1 /sqrt(2) *(x -nu) /lam)) -1
  f <- function(x,nu,lam,al,be) al *(1 -be) /sqrt(pi) /lam *exp(-1 /2 *exp(sqrt(2) *(x -nu) /lam) +1 /sqrt(2) *((x -nu) /lam)) *z(x,nu,lam) ^(al -1) *(1 -be *(1 -z(x,nu,lam) ^al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-gamma distribution == (2020-02-09) ==
## https://link.springer.com/article/10.1007%2FBF02922944
## https://digitalscholarship.unlv.edu/cgi/viewcontent.cgi?article=3385&context=thesesdissertations
logGamF. <- function(x, y = NULL, ext = F, ...) {  # CAUTION !! It's diffrent from many web sites (confused with gamExp); heavy tail on the left
  pLL <- pLL_nu_al_be
  f <- function(x,nu,al,be) be ^al /gamma(al) *(x -nu) ^(-be -1) *(log(x -nu)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}
logGamQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'incgamma(be *log(x -nu), al, 1) /gamma(al)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Log-gamma Burr III distribution == (2020-01-14) ==
## https://www.researchgate.net/publication/320785080_A_useful_extension_of_the_Burr_III_distribution
logGamBurr3F. <- function(x, y = NULL, ext = F, ...) {  # Sister of gamma Burr3, log-gamma Burr3, Ristić-Balakrishnan Burr12, ZB Burr12
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) 1 +exp(-(x -nu) /lam)
  f <- function(x,nu,lam,al,be) 1 /gamma(al) *be /lam *(z(x,nu,lam) -1) *z(x,nu,lam) ^(-be -1) *(-log(1 -z(x,nu,lam) ^(-be))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-gamma-logistic distribution == (2020-06-16) ==
## https://download.atlantis-press.com/article/25887941.pdf
logGamLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) exp((x -nu) /lam)
  f <- function(x,nu,lam,al) 1 /gamma(al) /lam *z(x,nu,lam) *(1 +z(x,nu,lam)) ^(-2) *(log(1 +z(x,nu,lam))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-gamma-Pareto distribution == (2020-06-16) ==
## https://scholar.cu.edu.eg/sites/default/files/mmahmoudagwa/files/article.pdf
logGamPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) 1 /gamma(ga) *al *be ^ga /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^(be -1) *(-log(z(x,lam,al))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}
logGamPareQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  z <- 1 -(x /lam) ^(-al)
  Fx <- 'incgamma(-be *log(z), al, 2) /gamma(al)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Log-generalized half-normal distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logGenHalfNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /sqrt(pi) /lam *exp(-1 /2 *exp(sqrt(2) *(x -nu) /lam) +1 /sqrt(2) *((x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Log-generalized half-normal geometric distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logGenHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) (1 -al) /sqrt(pi) /lam *exp(-1 /2 *exp(sqrt(2) *(x -nu) /lam) +1 /sqrt(2) *((x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Log half-normal distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logHalfNormF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_al
  f <- function(x,al) sqrt(2 /pi) *exp(-1 /2 *exp(2 *(x -al)) +x -al)
  lazy_call.(x,y,pLL,f,ext)
}


## Log half-normal geometirc distribution == (2020-07-26) ==
## https://www.researchgate.net/publication/270531727_The_beta_generalized_half-normal_geometric_distribution
logHalfNormGeoF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_nu_al
  f <- function(x,nu,al) sqrt(2 /pi) *(1 -al) *exp(-1 /2 *exp(2 *(x -nu)) +x -nu)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-Laplace distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Log-Laplace_distribution
logLaplaceF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /2 /lam /x *exp(-abs(log(x) -nu) /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-logistic distribution == (2020-02-09) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
logLogisF. <- function(x, y = NULL, ext = F, ...) {  # aka Fisk distribution in economics
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) abs(al /lam) *((x -nu) /lam) ^(al -1) *(1 + ((x -nu) /lam) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-logistic Fréchet distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/337826448_A_New_Extended_Frechet_Distribution_Properties_and_Estimation
logLogisFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al) *z(x,lam,al) ^be /(1 -z(x,lam,al)) ^(be +1) *(1 +(z(x,lam,al) /(1 -z(x,lam,al))) ^be) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-logistic Weibull distribution == (2020-01-13) ==
## https://www.researchgate.net/publication/317026101_The_gamma_log-logistic_Weibull_distribution_Model_properties_and_application
logLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 1 /(1 +x ^ga) *exp(-al *x ^be) *(al *be *x ^(be -1) +1 /(1 +x ^ga) *ga *x ^(ga -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Log-McDonald-Burr XII distribution == (2020-01-26) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
logMcdoBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga_de
  z <- function(x,nu,lam)  1 +exp((x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga,de)  1 /beta(al,ga) *be *de /lam *(z(x,nu,lam) -1) *z(x,nu,lam) ^(-be -1) *(1 -z(x,nu,lam) ^(-be)) ^(al *de -1) *(1 -(1 -z(x,nu,lam) ^(-de))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-normal distribution == (2020-01-27) ==
## https://en.wikipedia.org/wiki/Log-normal_distribution
logNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /x /sqrt(2 *pi) /lam *exp(-1/2 * ((log(x) -nu) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-odd normal power Cauchy distribution == (2020-05-01) ==
## https://www.researchgate.net/publication/326441057_The_Log-Odd_Normal_Generalized_Family_of_Distributions_with_Application
logOddNormPowCauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 2 /pi *atan((x /lam) ^al)
  f <- function(x,lam,al,be) al *be /sqrt(2 *pi) /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^(2 *al)) ^(-1) *(atan((x /lam) ^(2 *al))) ^(-1) /(1 -z(x,lam,al)) *exp(-be ^2 /2 *(log(z(x,lam,al) /(1 -z(x,lam,al)))) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## log-Pearson III distribution == (2020-06-15) ==
## https://ir.lib.uwo.ca/cgi/viewcontent.cgi?article=1039&context=wrrr
logPear3F. <- function(x, y = NULL, ext = F, ...) {  # (left-heavy)
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) (x -nu) /lam
  f <- function(x,nu,lam,al) 1 /gamma(al) /lam *z(x,nu,lam) ^(al -1) *exp(-z(x,nu,lam))
  lazy_call.(x,y,pLL,f,ext)
}
logPear3Q. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'incgamma((x -nu) /lam, al) /gamma(al)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## log-Pearson III distribution == (2020-06-15) ==
## https://ir.lib.uwo.ca/cgi/viewcontent.cgi?article=1039&context=wrrr
logPear3F. <- function(x, y = NULL, ext = F, ...) {  # (left-heavy)
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) (x -nu) /lam
  f <- function(x,nu,lam,al) 1 /gamma(al) /lam *z(x,nu,lam) ^(al -1) *exp(-z(x,nu,lam))
  lazy_call.(x,y,pLL,f,ext)
}
logPear3Q. <- function(mdl, x, q = 0.999, ...) {
  if (is.null(mdl)) return (NULL)
  lazy_def.(mdl)
  if (is.data.frame(x) && ncol(x) == 2) x <- x[[1]]
  z <- (x -nu) /lam
  qua <- {incgamma(z, al) /gamma(al)} %>% whichNear.(vec = ., ref = q) %>% x[.]
  clean0.(qua)
}


## Log skew normal distribution == (2020-01-25) ==
## https://arxiv.org/pdf/1501.02344.pdf
logSkewNormF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu in R, (scale) lam > 0, (shape) al in R
  pLL <- pLL_nu_lam_al
  f <- function (x,nu,lam,al) 2 /lam /sqrt(2 *pi *lam^2) *exp(-1/2 *((x -nu) /lam) ^2) *stcum(al *(x -nu) /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Log-Weibull extended distribution == (2020-07-30) ==
## https://www.academia.edu/5786493/Log-Weibull_extended_regression_model_Estimation_sensitivity_and_residual_analysis?email_work_card=title
logWeiExtF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) exp((x -nu) /lam)
  f <- function(x,nu,lam,al) al /lam *z(x,nu,lam) *exp(nu +z(x,nu,lam) +exp(nu) /lam *(1 -exp(z(x,nu,lam))))
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic distribution == (2020-01-04) ==
## https://en.wikipedia.org/wiki/Logistic_distribution
logisticF. <- function(x, y = NULL, ext = F, ...) {  # aka Fisk; similar to Beta-logistic, Beta exponential, Central-logistic, Logistic, and Prenctice
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /abs(lam) *exp(-(x -nu) /lam) *(1 +exp(-(x -nu) /lam)) ^(-2)  # No use pracma::sech(x), RSS will get worse 
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic-Burr XII distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/267156351_The_Logistic-X_Family_of_Distributions_and_Its_Applications
logisBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,ga) ga *log(1 +(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^al) ^(-1) *z(x,lam,al,ga) ^(-be -1) *(1 +z(x,lam,al,ga) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic-Fréchet distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/267156351_The_Logistic-X_Family_of_Distributions_and_Its_Applications
logisFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) -log(1 -exp(-(x /lam) ^al))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *exp(z(x,lam,al)) *z(x,lam,al) ^(-be -1) *(1 +z(x,lam,al) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic-logistic distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/267156351_The_Logistic-X_Family_of_Distributions_and_Its_Applications
logisLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) x /lam +log(1 +exp(-x /lam))
  f <- function(x,lam,al) al /lam *(1 +exp(-x /lam)) ^(-1) *z(x,lam) ^(-al -1) *(1 +z(x,lam) ^(-al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic-Pareto distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/267156351_The_Logistic-X_Family_of_Distributions_and_Its_Applications
logisPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) al *log(x /lam)
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-1) *z(x,lam,al) ^(-be -1) *(1 +z(x,lam,al) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic-uniform distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/267156351_The_Logistic-X_Family_of_Distributions_and_Its_Applications
logisUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) -log(1 -x /lam)
  f <- function(x,lam,al) al /lam *exp(z(x,lam)) *z(x,lam) ^(-al -1) *(1 +z(x,lam) ^(-al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Logistic-Weibull distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/267156351_The_Logistic-X_Family_of_Distributions_and_Its_Applications
logisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al *be -1) *(1 +(x ^al /lam) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Lomax distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
lomaxF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(1 +x /lam) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Lomax Fréchet distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/337826448_A_New_Extended_Frechet_Distribution_Properties_and_Estimation
lomFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al) *z(x,lam,al) /(1 -z(x,lam,al)) ^2 *(1 /(1 -z(x,lam,al))) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Lomax log-logistic distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
lomLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (1 +(x /lam) ^al) ^(-1)
  f <- function(x,lam,al,be,ga) al *be ^ga *ga /lam *(x /lam) ^(al -1) *z(x,lam,al) *(be -log(z(x,lam,al))) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Lomax-Weibull distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
lomWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be ^ga *ga /lam *(x /lam) ^(al -1) *(be +(x /lam) ^al) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin additive Weibull distribution == (2020-02-25) ==
## https://www.semanticscholar.org/paper/The-Marshall-Olkin-additive-Weibull-distribution-Afify-Cordeiro/5b2a133454ff9d689292dd56c3b53d3f68c341b0
maolAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga,de) exp(-al *x ^be -ga *x ^de)
  f <- function(x,al,be,ga,de,et) et *(al *be *x ^(be -1) +ga *de *x ^(de -1)) *z(x,al,be,ga,de) *(1 -(1 -et) *z(x,al,be,ga,de)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin exponential Weibull distribution == (2020-05-27) ==
## https://www.academia.edu/10049389/THE_MARSHALL--OLKIN_EXPONENTIAL_WEIBULL_DISTRIBUTION?email_work_card=title
maolExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be,ga) exp(-al * x -be *x ^ga)
  f <- function(x,al,be,ga,de) de *(al +be *ga *x ^(ga -1)) *z(x,al,be,ga) *(1 -(1 -de) *z(x,al,be,ga)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin extended Burr type XII distribution == (2020-01-25) ==
## https://www.researchgate.net/publication/272804850_Marshall-Olkin_extended_Burr_Type_XII_distribution
maolExtBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *ga *x ^(ga -1) *(1 +x ^ga) ^(-be -1) *(1 -(1 -al) *(1 +x ^ga)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin extended Lomax distribution == (2020-07-31) ==
## https://pdfs.semanticscholar.org/588d/9299f07fbd140b71eeb87d931493ab4fe910.pdf?_ga=2.196684330.702420109.1596162416-1809871880.1595456056
maolExtLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al) 1 -(1 +x) ^(-al)
  f <- function(x,al,be) al *be /(1 +x) *(1 -z(x,al)) *(be +(1 -be) *z(x,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin extended uniform distribution == (2020-07-31) ==
## https://www.researchgate.net/publication/278018772_The_Beta_Marshall-Olkin_Extended_Uniform_Distribution
maolExtUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be *(al *be +(1 -al) *x) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin extended-Weibull distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
maolExtWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) *(1 -(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Fréchet distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/296691997_The_Kumaraswamy_Transmuted-G_Family_of_Distributions_Properties_and_Applications
maolFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) *(be +(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin generalized exponential distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/281437475_Marshall-Olkin_generalized_exponential_distribution
maolGenExpF. <- function(x, y = NULL, ext = F, ...) {  # q := be
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(be +(1 -be) *z(x,lam) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin generalized log-logistic distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/328860461_The_Marshall-Olkin_Generalized-G_Family_of_Distributions_with_Applications
maolGenLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be,ga) al *be /lam  *(x /lam) ^(al -1) *z(x,lam,al) ^(-be -1) *(1 -(1 -ga) *z(x,lam,al) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin generalized Lomax distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/328860461_The_Marshall-Olkin_Generalized-G_Family_of_Distributions_with_Applications
maolGenLomF. <- function(x, y = NULL, ext = F, ...) {  # Deleted an unnecessary paremater from the original formulae
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 +(x /lam)
  f <- function(x,lam,al,be) al *be /lam  *z(x,lam) ^(-al -1) *(1 -(1 -be) *z(x,lam) ^(-al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin generalized Weibull distribution == (2020-03-24) ==
## https://www.researchgate.net/publication/328860461_The_Marshall-Olkin_Generalized-G_Family_of_Distributions_with_Applications
maolGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-al *(x /lam) ^be)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(be -1) *z(x,lam,al,be) *(1 -(1 -ga) *z(x,lam,al,be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin kappa distribution == (2020-01-06) ==
## https://www.sciencedirect.com/science/article/pii/S101836471731323X
maolKappaF. <- function(x, y = NULL, ext = F, ...) {  # You may find no need of adding location nu ...
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(be -1) *(al +(x /lam) ^(al *be)) ^(-1 /al -1) *(ga +(1 -ga) *(1 +al *(x /lam) ^(-al *be)) ^(-1 /al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Kumraswamy-exponential distribution == (2020-04-21) ==
## https://www.academia.edu/39926025/The_Marshall-Olkin-Kumaraswamy-G_family_of_distributions?email_work_card=view-paper
maolKumaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(be -1) *(1 -(1 -ga) *(1 -z(x,lam) ^al) ^be) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Kumaraswamy Fréchet distribution == (2020-04-01) ==
## https://www.researchgate.net/publication/330169129_A_New_Statistical_Model_for_Extreme_Values_Properties_and_Applications
maolKumaFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 -exp(be *(-(x /lam) ^(-al)))
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(-al -1) *(1 -z(x,lam,al,be)) *z(x,lam,al,be) ^(ga -1) *(1 -(1 -de) *z(x,lam,al,be) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Kumraswamy-Lomax distribution == (2020-04-21) ==
## https://www.academia.edu/39926025/The_Marshall-Olkin-Kumaraswamy-G_family_of_distributions?email_work_card=view-paper
maolKumaLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -(1 +x /lam) ^(-al)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(1 +x /lam) ^(-al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1) *(1 -(1 -de) *(1 -z(x,lam,al) ^be) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Kumraswamy-Weibull distribution == (2020-04-21) ==
## https://www.academia.edu/39926025/The_Marshall-Olkin-Kumaraswamy-G_family_of_distributions?email_work_card=view-paper
maolKumaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -exp(-x ^al /lam)
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *x ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1) *(1 -(1 -de) *(1 -z(x,lam,al) ^be) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin log-logistic distribution == (2020-03-09) ==
## https://www.researchgate.net/publication/325122760_The_Kumaraswamy_Marshall-Olkin_Log-Logistic_Distribution_with_Application
maolLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-be -1) *(1 +al *(x /lam) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin logistic-exponential distribution == (2020-03-17) ==
## https://www.researchgate.net/publication/334971340_Topp-Leone_odd_log-logistic_exponential_distribution_Its_improved_estimators_and_applications
maolLogisExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(x /lam) -1
  f <- function(x,lam,al,be) al *be /lam *(1 +z(x,lam)) *z(x,lam) ^(-al -1) *(1 +be *z(x,lam) ^(-al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Nadarajah-Haghighi distribution == (2020-03-17) ==
## https://www.researchgate.net/publication/334971340_Topp-Leone_odd_log-logistic_exponential_distribution_Its_improved_estimators_and_applications
maolNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al,be) al *be /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) *(1 -(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin q-Weibull distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/281437682_Marshall-Olkin_q-Weibull_distribution_and_max-min_processes
maolQWeiF. <- function(x, y = NULL, ext = F, ...) {  # q := be
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) (2 -be) *al /lam *(x /lam) ^(al -1) *(1 +sgn.(be -1) *(be -1) *(x /lam) ^al) ^(-sgn.(be -1) /(be -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
maolRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) *(be +(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Marshall-Olkin Weibull distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/321434933_A_New_Extension_of_Weibull_Distribution_Properties_and_Different_Methods_of_Estimation
maolWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) *(1 -(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Maxwell distribution == (2020-07-31) ==
## https://mds.marshall.edu/cgi/viewcontent.cgi?article=1005&context=etd
maxwellF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam
  f <- function(x,lam) sqrt(2 /pi) *x ^2 /lam ^3 *exp(-1 /2 *(x /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Maxwell-Boltzmann distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
maxBoltzF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...; scale lam := al
  pLL <- pLL_al
  f <- function(x,al) 4 /sqrt(2 *pi *al ^2) *(x /sqrt(2 *al ^2)) ^2 *exp(-(x /sqrt(2 *al ^2)) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Maxwell-Jüttner distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Maxwell–Jüttner_distribution
maxJuttF. <- function(x, y = NULL, ext = F, ...) {  # I cannot realize to use this for particle distribution...; scale lam := al
  pLL <- pLL_al
  f <- function(x,al) 1 /besselK(1 /al,2) *sqrt(x ^4 -x ^2) *x /al *exp(-x /al)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald Burr-III distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
mcdoBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,de) 1 +x ^(-de)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be *de *x ^(-de -1) *z(x,de) ^(-al *be -1) *(1 -z(x,de) ^(-de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald-Burr XII distribution == (2020-01-26) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
mcdoBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,lam,et) 1 +(x /lam) ^et
  f <- function(x,lam,al,be,ga,de,et) 1 /beta(al,ga) *be *de *et /x *(z(x,lam,et) -1) *z(x,lam,et) ^(-be -1) *(1 -z(x,lam,et) ^(-be)) ^(al *de -1) *(1 -(1 -z(x,lam,et) ^(-de))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald-Dagum distribution == (2020-07-21) ==
## http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.925.7006&rep=rep1&type=pdf
mcdoDagF. <- function(x, y = NULL, ext = F, ...) {  # = Beta-Dagum, similar to Beta Burr III, Beta-Singh-Maddala
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 +x ^(-de) /lam
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *x ^(-de -1) *z(x,lam,de) ^(-al *be -1) *(1 -z(x,lam,de) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}
mcdoDagQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- 'pbeta((1+x ^(-de) /lam) ^(-be), al, ga)'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## McDonald exponentiated gamma distribution == (2020-01-13) ==
## https://www.researchgate.net/publication/270452835_The_McDonald_exponentiated_gamma_distribution_and_its_statistical_properties
mcdoExpGamF. <- function(x, y = NULL, ext = F, ...) {  # Note: the paper says it's 5-para, but I reshape it to 4-para
  pLL <- pLL_al_be_ga_de
  z <- function (x,de) 1 -(1 +de *x) *exp(-de *x)
  f <- function (x,al,be,ga,de) be /beta(al,ga) *de ^2 *x *exp(-de *x) *z(x,de) ^(al *be -1) *(1 -z(x,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald exponentiated Pareto distribution == (2020-08-10) ==
## https://www.academia.edu/12221818/A_Note_on_a_Generalization_of_the_Exponentiated_Pareto_Distribution?email_work_card=view-paper
mcdoExpPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(-de -1) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald Fréchet distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/335368890_The_Burr_X_Frechet_Model_for_Extreme_Values_Mathematical_Properties_Classical_Inference_and_Bayesian_Analysis
mcdoFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(-(x /lam) ^(-de))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(-de -1) *z(x,lam,de) ^(al *be) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald generalized linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
mcdoGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,de,et) 1 -exp(-de *x -et /2 *x ^2)
  f <- function(x,al,be,ga,de,et) be /beta(al,ga) *(de +et *x) *(1 -z(x,de,et)) *z(x,de,et) ^(al *be -1) *(1 -z(x,de,et) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald-Gompertz distribution == (2020-01-12) ==
## https://arxiv.org/pdf/1505.01351.pdf
mcdoGomF. <- function(x, y = NULL, ext = F, ...) {  # Reshaped
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be,de) 1 -exp((1 -exp (de /be *x)) /de *be /lam)
  f <- function(x,lam,al,be,ga,de) be /beta(al,ga) /lam *exp(de /be *x) *(1 -z(x,lam,be,de)) *z(x,lam,be,de) ^(al *be -1) *(1 -z(x,lam,be,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald inverse Weibull distribution == (2020-01-12) ==
## https://www.researchgate.net/publication/312429428_The_McDonald's_Inverse_Weibull_Distribution
mcdoInvWeiF. <- function(x, y = NULL, ext = F, ...) {  # Reshaped
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,al,be,ga) exp(-al *be /x ^ga)
  f <- function(x,lam,al,be,ga,de) be /beta(al,ga) *de /lam /x ^(de +1) *z(x,al,be,ga) ^(al *be) *(1 -z(x,al,be,ga) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald log-logistic distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
mcdoLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) 1 +(x /lam) ^be
  f <- function(x,lam,al,be,ga,de) 1 /beta(al /de,ga) *be *de /lam *(x /lam) ^(al *be -1) *z(x,lam,be) ^(-al -1) *(1 -(1 -z(x,lam,be) ^(-1)) ^de)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald-Lomax distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
mcdoLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1 +x /lam) ^(-de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al /be, ga) *be *de /lam *(1 +x /lam) ^(-de -1) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald modified Burr-III distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
mcdoModBurr3F. <- function(x, y = NULL, ext = F, ...) {  # all are shape parameters; a duplicated parameter in the fomula is deleted here
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) 1 +x ^(-be) /lam
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de *x ^(-be -1) *z(x,lam,be,de) ^(-lam *al *de -1) *(1 -z(x,lam,be) ^(-lam *de)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald modified Weibull distribution == (2020-01-08) ==
## https://arxiv.org/pdf/1309.2961.pdf
mcdoModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,de,et,th) 1 -exp(-de -et *x ^th)
  f <- function(x,al,be,ga,de,et,th) 1 /beta(al,ga) *be *(de +et *th *x ^(th -1)) *(1 -z(x,de,et,th)) *z(x,de,et,th) ^(al *be -1) *(1 -z(x,de,et,th) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald normal distribution == (2020-01-07) ==
## http://mail.pjsor.com/index.php/pjsor/article/view/510
mcdoNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,ga) *be /lam *stnorm((x -nu) /lam) *stcum((x -nu) /lam) ^(al *be -1) *(1 -stcum((x -nu) /lam) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald quasi-Lindley distribution == (2020-01-12) ==
## http://www.naturalspublishing.com/files/published/19j8v9p39an938.pdf
mcdoQuaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -(1 +de *x /(1 +lam)) *exp(-de *x)
  f <- function(x,lam,al,be,ga,de) be /beta(al,ga) *de *(de *x +lam)/(1 +lam) *exp(-de *x) *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
mcdoRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) exp(-(x /lam) ^(-de))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be *de /lam *(x /lam) ^(-de -1) *z(x,lam,de) ^(al *be) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## McDonald-Weibull distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
mcdoWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,be) 1 -exp(-(x /lam) ^be)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al /de,ga) *be *de /lam *(x /lam) ^(be -1) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1) *(1 -z(x,lam,be) ^de) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Meridian distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
meriF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /2 /abs(lam) *(1 +abs((x -nu) /lam)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta exponential distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
modBetaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be,ga) 1 /beta(al,ga) *be ^al /lam *z(x,lam) ^(al -1) *(1 -z(x,lam)) ^ga *(1 -(1 -be) *z(x,lam)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta generalized linear failure rate distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
modBetaGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,et,th) exp(-et *x -th /2 *x ^2)
  f <- function(x,al,be,ga,de,et,th) 1 /beta(al,ga) *be *de ^al *(et +th *x) *(1 -z(x,et,th)) *z(x,et,th) ^(al *be -1) *(1 -z(x,et,th) ^be) ^(ga -1) *(1 -(1 -de) *z(x,et,th) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta Gompertz distribution == (2020-06-05) ==
## https://www.researchgate.net/publication/329707106_The_Modified_Beta_Gompertz_Distribution_Theory_and_Applications
modBetaGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-1 /de /lam *(exp(de *x) -1))
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,be) *ga ^al /lam *exp(de *x) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de)) ^be *(1 -(1 -ga) *z(x,lam,de)) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta linear exponential distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/332971234_Modified_Beta_Linear_Exponential_Distribution_with_Hydrologic_Applications
modBetaLineExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,de,et) 1 -exp(-(de *x ^2 /2 +et *x))
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) *be ^al *(de *x +et) *exp(-ga *(de *x ^2 /2 +et *x)) *z(x,de,et) ^(al -1) *(1 -(1 -be) *z(x,de,et)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta linear failure rate distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
modBetaLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,de,et) exp(-de *x -et /2 *x ^2)
  f <- function(x,al,be,ga,de,et) 1 /beta(al,ga) *be ^al *(de +et *x) *z(x,de,et) ^(al -1) *(1 -z(x,de,et)) ^ga *(1 -(1 -be) *z(x,de,et)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta modified-Weibull distribution == (2020-05-21) ==
## https://www.academia.edu/36781084/Modified_beta_modified-Weibull_distribution?email_work_card=title
modBetaModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et_th
  z <- function(x,al,be,ga) 1 -exp(-al *x -be *x ^ga)
  f <- function(x,al,be,ga,de,et,th) th ^de /beta(de,et) *(al +be *ga *x ^(ga -1)) *z(x,al,be,ga) ^(de -1) *(1 -z(x,al,be,ga)) ^et *(1 -(1-th) *z(x,al,be,ga)) ^(-de -et)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta normal distribution == (2020-06-05) ==
## https://www.academia.edu/34441480/Modified_Beta_Distributions?email_work_card=title
modBetaNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be,ga) 1 /beta(al,be) *ga ^al /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(be -1) *(1 -(1 -ga) *z(x,nu,lam)) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta Rayleigh distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/337198437_MODIFIED_BETA_GENERALIZED_LINEAR_FAILURE_RATE_DISTRIBUTION_THEORY_AND_APPLICATIONS
modBetaRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,de) exp(-de /2 *x ^2)
  f <- function(x,al,be,ga,de) 1 /beta(al,ga) *be ^al *de *x *z(x,de) ^(al -1) *(1 -z(x,de)) ^ga *(1 -(1 -be) *z(x,de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified beta Weibull distribution == (2020-02-23) ==
## https://www.researchgate.net/publication/274138080_The_Modified_Beta_Weibull_distribution
modBetaWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-(x /lam) ^de)
  f <- function(x,lam,al,be,ga,de) 1 /beta(al,ga) *be ^al *de /lam *(x /lam) ^(de -1) *z(x,lam,de) ^(al -1) *(1 -z(x,lam,de)) ^ga *(1 -(1 -be) *z(x,lam,de)) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified Burr-III distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
modBurr3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *x ^(-al -1) *(1 +x ^(-al) /lam) ^(-be *ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified generalized linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
modGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga,de) 1 -exp(-be *x -ga *x ^de)
  f <- function(x,al,be,ga,de) al *(be +ga *de *x ^(de -1)) *(1 -z(x,be,ga,de)) *z(x,be,ga,de) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified log-logistic distribution == (2020-02-20) ==
## https://www.tandfonline.com/doi/full/10.1080/16583655.2018.1553501
modLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) be /beta(al,ga) *x ^(-be -1) *(1 /(1 +x ^(-be))) ^(al +1) *(1 -1 /(1 +x ^(-be))) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified PERT distribution == (2020-01-24) ==
## https://www.vosesoftware.com/riskwiki/ModifiedPERTdistribution.php
modPertF. <- function(x, y = NULL, ext = F, ...) {  # min, mode, max, ?
  pLL <- pLL_al_be_ga_de
  z1 <- function(al,be,ga,de) 1 +de *(be -al) /(ga -al)
  z2 <- function(al,be,ga,de) 1 +de *(ga -be) /(ga -al)
  f <- function(x,al,be,ga,de) (x -al) ^(z1(al,be,ga,de) -1) *(ga - x) ^(z2(al,be,ga,de) -1) /beta(z1(al,be,ga,de),z2(al,be,ga,de)) /(ga -al) ^(z1(al,be,ga,de) +z2(al,be,ga,de) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified Weibull distribution == (2020-02-25) ==
## https://www.researchgate.net/publication/305688898_The_Transmuted_Generalized_Modified_Weibull_Distribution
modWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *x ^(be -1) *(x /lam +be) *exp(x /lam -al *x ^be *exp(x /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Modified Weibull extension distribution == (2020-06-20) ==
## https://www.academia.edu/25773416/Exponentiated_modified_Weibull_extension_distribution?email_work_card=title
modWeiExtF. <- function(x, y = NULL, ext = F, ...) {  # left-decent-heavy
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp((x /lam) ^be)
  f <- function(x,lam,al,be) al *be *(x /lam) ^(be -1) *(1 -z(x,lam,be)) *exp(al *lam *z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}
modWeiExtQ. <- function(mdl, x, q = 0.999, qy = F, ...) {
  Fx <- '1 -exp(al *lam *(1 -exp((x /lam) ^be)))'
  lazy_quantile.(mdl,x,q,Fx,qy)
}


## Modified Weibull geometric distribution == (2020-12-04) ==
## https://www.researchgate.net/publication/271911655_The_modified_Weibull_geometric_distribution
modWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be,ga) exp(-al *x -be *x ^ga)
  f <- function(x,al,be,ga,de) (1 -de) *(al +be *ga *x ^(ga -1)) *z(x,al,be,ga) *(1 -de *z(x,al,be,ga)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Modified weighted Rayleigh distribution == (2020-02-26) ==
## https://www.researchgate.net/publication/320755650_The_Beta-Modified_Weighted_Rayleigh_Distribution_Application_to_Virulent_Tubercle_Disease
modWeightRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 2 *al *(be *ga ^2 +1) *x *exp(-al *(be *ga ^2 +1) *x ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Moffat distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
moffatF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *al /(lam ^2) *x *(1 +(x /lam) ^2) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Moyal distribution == (2019-12-29) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
moyalF. <- function(x, y = NULL, ext = F, ...) {  # similar to BHP, gammaEx, gGumbel, Gumbel, Moyal; (positive integer) n
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /sqrt(2 *pi) /abs(lam) *exp(-1 /2 *(x -nu) /lam -1 /2 *exp(-(x -nu) /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Mukherji-Islam distribution == (2020-07-23) ==
## https://www.ripublication.com/gjpam16/gjpamv12n1_82.pdf
mukIsF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(x /lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Murthy distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
murthyF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be *x ^(al -1) *exp(x ^al) *exp(-be *(exp(x ^al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Mustapha type-I distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
mustapha1F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) (1 +al) /lam *(al +x /lam) ^(-1) *(1 -x /(al *be +x))
  lazy_call.(x,y,pLL,f,ext)
}


## Nadarajah-Haghighi distribution == (2020-02-29) ==
## http://www.hjms.hacettepe.edu.tr/uploads/88b7c05c-9393-4f7a-9dc9-532a22747bf7.pdf
nadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *(1 +x /lam) ^(al -1) *exp(1 -(1 +x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Nadarajah-Haghighi Topp-Leone exponential distribution == (2020-03-16) ==
## https://www.researchgate.net/publication/337873394_The_Nadarajah_Haghighi_Topp_Leone-G_Family_of_Distributions_with_Mathematical_Properties_and_Applications
nadaHaghiTopLeoExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,ga) 1 +ga *(1 -exp(-2 *x /lam)) ^al
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *exp(-2 *x /lam) ^(1 -exp(-2 *x /lam)) ^(al -1) *z(x,lam,al,ga) ^(be -1) *exp(1 -z(x,lam,al,ga) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Nadarajah-Haghighi Topp-Leone Lomax distribution == (2020-03-16) ==
## https://www.researchgate.net/publication/337873394_The_Nadarajah_Haghighi_Topp_Leone-G_Family_of_Distributions_with_Mathematical_Properties_and_Applications
nadaHaghiTopLeoLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be,de) 1 +de *(1 -(1 +x /lam) ^(-2 *al)) ^be
  f <- function(x,lam,al,be,ga,de) 2 *al *be *ga *de /lam /(1 +x /lam) ^(-2 *al -1) *(1 -(1 +x /lam) ^(-2 *al)) ^(be -1) *z(x,lam,al,be,de) ^(ga -1) *exp(1 -z(x,lam,al,be,de) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Nadarajah-Kotz distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
nadaKotzF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /pi /abs(lam) *(exp((x -nu) /lam) -1) ^(-1 /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Nakagami distribution == (2020-01-25) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
nakagamiF. <- function(x, y = NULL, ext = F, ...) {  # Wiki's parameter m/Ω = λ^2; m := al
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 2 /gamma(al) /abs(lam) *((x -nu) /lam) ^(2 *al -1) *exp(-((x-nu) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## New exponentiated exponential distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
newExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) 1 -exp(-be *x)
  f <- function(x,al,be) al *be *(1 -z(x,be)) *z(x,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New exponentiated linear failure rate distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
newExpLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) 1 -exp(-(be *x +ga *x ^2))
  f <- function(x,al,be,ga) al *(be +2 *ga *x) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New exponentiated modified Weibull distribution == (2020-05-06) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
newExpModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga,de) 1 -exp(-(be *x +ga *x ^de))
  f <- function(x,al,be,ga,de) al *(be +ga *de *x ^(de -1)) *(1 -z(x,be,ga,de)) *z(x,be,ga,de) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New exponentiated Rayleigh distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
newExpRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) 1 -exp(-be *x ^2)
  f <- function(x,al,be) 2 *al *be *x *(1 -z(x,be)) *z(x,be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New exponentiated Weibull distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
newExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) 1 -exp(-be *x ^ga)
  f <- function(x,al,be,ga) al *be *ga *x ^(ga -1) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New lifetime distribution == (2020-12-03) ==
## https://pdfs.semanticscholar.org/67ce/ce53f8006f8a60bfa07c13ecdc735e002afe.pdf
newLifeF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be,ga) 1 /(exp(be) -1) *(exp(be *exp(-x ^(-ga) /lam)) -1)
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(exp(be) -1) *x ^(-ga -1) *exp(-x ^(-ga) /lam +be *exp(-x ^(-ga) /lam)) *(1 -z(x,lam,be,ga)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New Lindley exponential distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/311765227_Statistical_Properties_and_Applications_of_A_New_Lindley_Exponential_Distribution
newLinExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 +x /lam
  f <- function(x,lam,al) al ^2 /lam /(al +1) *(1 +x /lam) *exp(-al *x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## New modified Weibull distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
newModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  f <- function(x,al,be,ga,de,et) (al *be *x ^(be -1) *ga *(de +et *x) *x ^(de -1) *exp (et *x)) *exp (-(al *x ^be +ga *x ^de *exp(et *x)))
  lazy_call.(x,y,pLL,f,ext)
}


## New power Topp-Leone inverse Lomax distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/337636349_A_New_Power_Topp-Leone_Generated_Family_of_Distributions_with_Applications
newPowTopLeoInvLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) 1 -exp(be *(1 -(1 +1 /x) ^ga))
  f <- function(x,al,be,ga) 2 *al *be *ga /x ^2 *(1 +1 /x) ^(ga -1) *z(x,be,ga) *(1 -z(x,be,ga)) ^al *(1 +z(x,be,ga)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## New transmuted Lindley distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
newTransLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be,ga) (1 +x) /lam /(1 +lam) *exp(-x /lam) *(al *(1 +be) *z(x,lam) ^(al -1) -be *ga *z(x,lam) ^(ga -1))
  lazy_call.(x,y,pLL,f,ext)
}


## New weighted Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/318638596_A_new_generalized_Poisson_Lindley_distribution
newWeightLinF. <- function(x, y = NULL, ext = F, ...) {  # a mixture of exp(a) & gamma(2,a)
  pLL <- pLL_lam_al
  f <- function(x,lam,al) (1 +al) ^2 /lam /al /(1 +al +lam *(2 +al)) *(1 +x) *exp(-x /lam) *(1 -exp(-al *x /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Noncentral Chi distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
nonCentChiF. <- function(x, y = NULL, ext = F, ...) {  # Using modified Bessel function of the first kind with order ~
  pLL <- pLL_lam_al
  f <- function (x,lam,al) lam *(x /lam) ^(al /2) *exp(-(x ^2 +lam ^2) /2) *besselI(sqrt(lam *x),al /2 -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Noncentral Chi-Square distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
nonCentChiSqrF. <- function(x, y = NULL, ext = F, ...) {  # Using modified Bessel function of the first kind with order ~
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /2 *(x /lam) ^(al /4 -1 /2) *exp(-(x +lam) /2) *besselI(sqrt(lam *x), al /2 -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Normal distribution == (2020-01-25) ==
## https://en.wikipedia.org/wiki/Normal_distribution
normF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /sqrt(2 *pi) /lam *exp(-1/2 *((x -nu) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Nukiyama-Tanasawa distribution == (2020-02-09) ==
## https://www.ugr.es/~fcamacho/Originales/Trabajos%20Publicados/PT_2008.pdf
nukiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(al /be) *abs(be /lam) *(x /lam) ^(al -1) *exp(-(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Burr normal distribution == (2020-03-22) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddBurrNormF. <- function(x, y = NULL, ext = F, ...) {  # Wrong the power position in the original formula
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al *be /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(al *be -1) *(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd-exponential uniform distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
oddExpUniF. <- function(x, y = NULL, ext = F, ...) {  # Slightly different from kumaUQuad by z = 1 -... vs z = ...
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) be *ga /(exp(-al) -1) *(x -be) ^(-2) *exp(-al +ga *x /(x -be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd exponentiated half-logistic exponential distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/327916009_The_Extended_Exponential_Distribution_and_Its_Applications
oddExpHalfLogisExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *exp(x /lam) *(1 -exp(-x /lam)))
  f <- function(x,lam,al,be) 2 *al *be /lam *exp(-x /lam) *z(x,lam,be) *(1 -z(x,lam,be)) ^(al -1) *(1 +z(x,lam,be)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential-exponential distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/334275703_On_the_Properties_and_Applications_of_Transmuted_Odd_Generalized_Exponential-Exponential_Distribution
oddGenExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam *exp(x /lam) *exp(-al *(exp(x /lam) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential-Fréchet distribution == (2020-06-23) ==
## https://www.academia.edu/11621673/The_odd_generalized_exponential_family_of_distributions_with_applications
oddGenExpFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) 1 -exp(-al *(exp((x /lam) ^(-be)) -1))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-be -1) *exp(-(x /lam) ^(-be)) /(1 -exp(-(x /lam) ^(-be))) ^2 *(1 -z(x,lam,al,be)) *z(x,lam,al,be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential Gompertz distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/280329868_The_Odd_Generalized_Exponential_Gompertz
oddGenExpGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,ga) exp(-al *(exp(1 /lam /ga *(exp(ga *x) -1)) -1))
  f <- function(x,lam,al,be,ga) al *be /lam *exp(ga *x +1 /lam /ga *(exp(ga *x) -1)) *z(x,lam,al,ga) *(1 -z(x,lam,al,ga)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential Gumbel distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/331413858_On_Odd_Generalized_Exponential_Gumbel_Distribution_with_its_Applications_to_Survival_Data
oddGenExpGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) exp(-exp(-(x -nu) /lam))
  f <- function(x,nu,lam,al,be) al *be /lam *exp(-(x -nu) /lam) *z(x,nu,lam) *(1 -z(x,nu,lam)) ^(-2) *exp(-al *z(x,nu,lam) /(1 -z(x,nu,lam))) *(1 -exp(-al *z(x,nu,lam) /(1 -z(x,nu,lam)))) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential-inverse Lomax distribution == (2020-02-26) ==
## https://www.researchgate.net/publication/337941181_The_Weibull-Inverse_Lomax_WIL_distribution_with_Application_on_Bladder_Cancer
oddGenExpInvLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 +lam /x
  f <- function(x,lam,al,be,ga) al *be *ga *lam /x ^2 *z(x,lam) ^(al -1) *exp(be /(1 -z(x,lam) ^al)) *(1 -exp(be /(1 -z(x,lam) ^al))) /((1 -z(x,lam) ^al)) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential-normal distribution == (2020-06-23) ==
## https://www.academia.edu/11621673/The_odd_generalized_exponential_family_of_distributions_with_applications
oddGenExpNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam,al) 1 -exp(-al *((stcum((x -nu) /lam)) ^(-1) -1) ^(-1))
  f <- function(x,nu,lam,al,be) al *be /lam *stnorm((x -nu) /lam) /(1 -stcum((x -nu) /lam)) ^2 *(1 -z(x,nu,lam,al)) *z(x,nu,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized exponential Weibull distribution == (2020-05-22) ==
## https://www.academia.edu/37328945/The_Extended_Odd_Family_of_Probability_Distributions_with_Practice_to_a_Submodel?email_work_card=title
oddGenExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,ga) 1 -exp(-ga *(exp(x ^al /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *x ^(al -1) *exp(x ^al /lam) *(1 -z(x,lam,al,ga)) *z(x,lam,al,ga) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized Nadarajah-Haghighi exponential distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/339774773_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model_53_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model
oddGenNadaHaghiExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 +(exp(x /lam) -1) ^al
  f <- function(x,lam,al,be) al *be /lam *(1 -exp(-x /lam)) ^(-1) *(z(x,lam,al) -1) *z(x,lam,al) ^(be -1) *exp(1 -z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized Nadarajah-Haghighi Lomax distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/339774773_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model_53_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model
oddGenNadaHaghiLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) 1 +((1 +x /lam) ^al -1) ^be
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 -(1 +x /lam) ^(-al)) ^(-1) *(z(x,lam,al,be) -1) *z(x,lam,al,be) ^(ga -1) *exp(1 -z(x,lam,al,be) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized Nadarajah-Haghighi Rayleigh distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/339774773_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model_53_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model
oddGenNadaHaghiRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 +(exp(x ^2 /lam) -1) ^al
  f <- function(x,lam,al,be) 2 *al *be /lam *x *(1 -exp(-x ^2 /lam)) ^(-1) *(z(x,lam,al) -1) *z(x,lam,al) ^(be -1) *exp(1 -z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd generalized Nadarajah-Haghighi Uniform distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/339774773_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model_53_Odd_Generalized_N-H_Generated_Family_of_Distributions_with_Application_to_Exponential_Model
oddGenNadaHaghiUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) 1 +(x /(al -x)) ^be
  f <- function(x,al,be,ga) al *be *ga /x /(al -x) *(z(x,al,be) -1) *z(x,al,be) ^(ga -1) *exp(1 -z(x,al,be) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd inverse Pareto exponential distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/339781339_A_new_three-parameter_exponential_distribution_with_applications_in_reliability_and_engineering
oddInvPareExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *z(x,lam) *(1 -z(x,lam)) ^(al -1) *(1 -(1 -be) *z(x,lam)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lindley exponentiated Weibull distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329927775_A_New_Flexible_Lifetime_Model_with_Statistical_Properties_and_Applications
oddLinExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) 1 -exp(-x ^ga)
  f <- function(x,al,be,ga) al ^2 /(1 +al) *be *ga *x ^(ga -1) *(1 -z(x,ga)) *(1 -z(x,ga) ^be) ^(-3) *exp(-al *z(x,ga) ^be /(1 -z(x,ga) ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lindley Nadarajah-Haghighi distribution == (2020-03-02) ==
## https://www.researchgate.net/publication/319260283_The_Odd_Lindley_Nadarajah-Haghighi_Distribution
oddLinNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(1 -(1 +x /lam) ^al)
  f <- function(x,lam,al,be) al *be ^2 /lam /(1 +be) *(1 +x /lam) ^(al -1) *z(x,lam,al) ^(-2) *exp(-be *(1 -z(x,lam,al)) /z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lindley-gamma distribution == (2020-06-19) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddLinGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) incgamma(x /lam, al) /(gamma(al) -incgamma(x /lam, al))
  f <- function(x,lam,al,be) gamma(al) /incgamma(x /lam, al) *be ^2 /(1 +be) *exp(-x /lam) /lam ^al *z(x,lam,al) ^2 *(1 +z(x,lam,al)) *exp(-be *z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lindley-normal distribution == (2020-03-22) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddLinNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al ^2 /(1 +al) *stnorm((x -nu) /lam) *(1 -z(x,nu,lam)) ^(-3) *exp(-al *z(x,nu,lam) /(1 -z(x,nu,lam)))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lindley-Rayleigh distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/339384077_Odd_Lindley-Rayleigh_Distribution_Its_Properties_and_Applications_to_Simulated_and_Real_Life_Datasets
oddLinRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) exp(be /2 *x ^2) -1
  f <- function(x,al,be) al ^2 *be /(1 +al) *x *(1 +z(x,be)) ^2 *exp(-al *z(x,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lindley-Weibull distribution == (2020-03-22) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddLinWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp((x /lam) ^be) -1
  f <- function(x,lam,al,be) al ^2 /(1 +al) *be /lam *(x /lam) ^(be -1) *(1 +z(x,lam,be)) ^2 *exp(-al *z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic Dagum distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/323417460_The_Odd_Log-Logistic_Dagum_Distribution_Properties_and_Applications
oddLogLogisDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +(x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^(-be *ga -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1) *(z(x,lam,al) ^(-be *ga) +(1 -z(x,lam,al) ^(-be)) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic exponential distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/313651027_Odd_Log-Logistic_Modified_Weibull_Distribution
oddLogLogisExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) al /lam *z(x,lam) ^al *(1 -z(x,lam)) ^(al -1) /(z(x,lam) ^al +(1 -z(x,lam)) ^al) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic exponentiated reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
oddLogLogisExpRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-al *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-be -1) *z(x,lam,al,be) ^ga *(1 -z(x,lam,al,be)) ^(ga -1) *(z(x,lam,al,be) ^ga +(1 -z(x,lam,al,be)) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic exponentiated Weibull distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLogLogisExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be *ga -1) *(1 -z(x,lam,al) ^be) ^(ga -1) *(z(x,lam,al) ^(be *ga) +(1 -z(x,lam,al) ^be) ^ga) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic Gompertz distribution == (2020-05-18) ==
## https://www.academia.edu/40509544/THE_ODD_LOG-LOGISTIC_GOMPERTZ_LIFETIME_DISTRIBUTION_PROPERTIES_AND_APPLICATIONS?email_work_card=title
oddLogLogisGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al *be *exp(x /lam) *(1 -z(x,lam,be)) ^(al -1) *z(x,lam,be) ^al *((1 -z(x,lam,be)) ^al +z(x,lam,be) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic Lindley exponential distribution == (2020-03-16) ==
## https://www.researchgate.net/publication/336532743_The_Odd_Log-Logistic_Lindley-G_Family_of_Distributions_Properties_Bayesian_and_Non-Bayesian_Estimation_with_Applications
oddLogLogisLinExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) (1 +al /(1 +al) *(exp(x /lam) -1)) *exp(-al *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al ^2 *be /(1 +al) /lam *exp(-2 *x /lam -al *(exp(x /lam) -1)) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al)) ^(be -1) *(z(x,lam,al) ^be +(1 -z(x,lam,al)) ^be) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic linear failure rate distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/313651027_Odd_Log-Logistic_Modified_Weibull_Distribution
oddLogLogisLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *x -x ^2 /lam)
  f <- function(x,lam,al,be) al *(be +2 *x /lam) *z(x,lam,be) ^al *(1 -z(x,lam,be)) ^(al -1) /(z(x,lam,be) ^al +(1 -z(x,lam,be)) ^al) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic logarithmic normal distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/317527934_The_odd_log-logistic_logarithmic_generated_family_of_distributions_with_applications_in_different_areas
oddLogLogisLogNormF. <- function(x, y = NULL, ext = F, ...) {  # bi-modal
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) -al *be /log(1 -be) /lam *stnorm((x -nu) /lam) *(z(x,nu,lam) *(1 -z(x,nu,lam))) ^(al -1) /(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al) /((1 -be) *z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic logarithmic Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/317527934_The_odd_log-logistic_logarithmic_generated_family_of_distributions_with_applications_in_different_areas
oddLogLogisLogWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) -al *be *ga /log(1 -ga) /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^be *(1 -z(x,lam,al)) ^(be -1) *(z(x,lam,al) ^be +(1 -z(x,lam,al)) ^be) ^(-1) *(z(x,lam,al) ^be +(1 -ga) *(1 -z(x,lam,al)) ^be) ^(-1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic modified Weibull distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/313651027_Odd_Log-Logistic_Modified_Weibull_Distribution
oddLogLogisModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,be,ga,de) exp(-be *x -ga *x ^de)
  f <- function(x,al,be,ga,de) al *(be +ga *de *x ^(de -1)) *z(x,be,ga,de) ^al *(1 -z(x,be,ga,de)) ^(al -1) /(z(x,be,ga,de) ^al +(1 -z(x,be,ga,de)) ^al) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic normal distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/317527934_The_odd_log-logistic_logarithmic_generated_family_of_distributions_with_applications_in_different_areas
oddLogLogisNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al) al /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(al -1) *(1 -z(x,nu,lam)) ^(al -1) *(z(x,nu,lam) ^al +(1 -z(x,nu,lam)) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic Rayleigh distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/313651027_Odd_Log-Logistic_Modified_Weibull_Distribution
oddLogLogisRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x ^2 /lam)
  f <- function(x,lam,al) 2 *al *x /lam *z(x,lam) ^al *(1 -z(x,lam)) ^(al -1) /(z(x,lam) ^al +(1 -z(x,lam)) ^al) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Odd log-logistic Weibull distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/313651027_Odd_Log-Logistic_Modified_Weibull_Distribution
oddLogLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-x ^be /lam)
  f <- function(x,lam,al,be) al *be /lam *x ^(be -1) *z(x,lam,be) ^al *(1 -z(x,lam,be)) ^(al -1) /(z(x,lam,be) ^al +(1 -z(x,lam,be)) ^al) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lomax-exponential distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLomExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-(x /lam))
  f <- function(x,lam,al,be) al ^be *be /lam *(1 -z(x,lam)) ^(-1) *(al +z(x,lam) /(1 -z(x,lam))) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lomax-Lindley distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLomLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) al ^be *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) *(1 -z(x,lam)) ^(-2) *(al +z(x,lam) /(1 -z(x,lam))) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lomax-log-logistic distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLomLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(1 +(x /lam) ^al) ^(-1)
  f <- function(x,lam,al,be,ga) al *be ^ga *ga /lam *(x /lam) ^(al -1) *(be +z(x,lam,al) /(1 -z(x,lam,al))) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lomax-Lomax distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLomLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(1 +x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be ^ga *ga /lam *(1 +x /lam) ^(-al -1) *(1 -z(x,lam,al)) ^(-2) *(be +z(x,lam,al) /(1 -z(x,lam,al))) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lomax-Rayleigh distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLomRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *2 ^be *be /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) ^(-1) *(2 +z(x,lam,al) /(1 -z(x,lam,al))) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Lomax-Weibull distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
oddLomWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be ^ga *ga /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) ^(-1) *(be +z(x,lam,al) /(1 -z(x,lam,al))) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd moment exponential-exponential distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/325178674_THE_ODD_MOMENT_EXPONENTIAL_FAMILY_OF_DISTRIBUTIONS_ITS_PROPERTIES_AND_APPLICATIONS
oddMomExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-x /lam)
  f <- function(x,lam,al) al ^2 /lam *(1 -z(x,lam)) /z(x,lam) ^2 *exp(-al *(1 -z(x,lam)) /z(x,lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd moment exponential-Fréchet distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/325178674_THE_ODD_MOMENT_EXPONENTIAL_FAMILY_OF_DISTRIBUTIONS_ITS_PROPERTIES_AND_APPLICATIONS
oddMomExpFreF. <- function(x, y = NULL, ext = F, ...) {  # The original formula was partly wrong...
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be) al ^2 *be /lam *(x /lam) ^(-be -1) *(1 -z(x,lam,be)) ^2 /z(x,lam,be) ^3 *exp(-al *(1 -z(x,lam,be)) /z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd moment exponential-Weibull distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/325178674_THE_ODD_MOMENT_EXPONENTIAL_FAMILY_OF_DISTRIBUTIONS_ITS_PROPERTIES_AND_APPLICATIONS
oddMomExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-x ^be /lam)
  f <- function(x,lam,al,be) al ^2 *be /lam *x ^(be -1) *(1 -z(x,lam,be)) /z(x,lam,be) ^2 *exp(-al *(1 -z(x,lam,be)) /z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd moment exponential-Lomax distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/325178674_THE_ODD_MOMENT_EXPONENTIAL_FAMILY_OF_DISTRIBUTIONS_ITS_PROPERTIES_AND_APPLICATIONS
oddMomExpLomF. <- function(x, y = NULL, ext = F, ...) {  # The original formula was partly wrong...
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) (1 +x /lam) ^(-be)
  f <- function(x,lam,al,be) al ^2 *be /lam *(1 +x /lam) ^(2 *be -1) *(1 -z(x,lam,be)) *exp(-al *(1 -z(x,lam,be)) /z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Odd power Lindley-gamma distribution == (2020-06-19) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddPowLinGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) incgamma(x /lam, al) /(gamma(al) -incgamma(x /lam, al))
  f <- function(x,lam,al,be,ga) gamma(al) /incgamma(x /lam, al) *be *ga ^2 /(1 +ga) *exp(-x /lam) /lam ^al *z(x,lam,al) ^(be +1) *(1 +z(x,lam,al) ^be) *exp(-ga *z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd power Lindley-normal distribution == (2020-03-21) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddPowLinNormF. <- function(x, y = NULL, ext = F, ...) {  # bi-modal
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al ^2 *be /(1 +al) *stnorm((x -nu) /lam) *z(x,nu,lam) ^(be -1) /(1 -z(x,nu,lam)) ^(be +1) *(1 +(z(x,nu,lam) /(1 -z(x,nu,lam))) ^be) *exp(-al *(z(x,nu,lam) /(1 -z(x,nu,lam))) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd power Lindley-Weibull distribution == (2020-03-22) ==
## https://www.researchgate.net/publication/330652946_The_Odd_Power_Lindley_Generator_of_Probability_Distributions_Properties_Characterizations_and_Regression_Modeling
oddPowLinWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) exp((x /lam) ^be) -1
  f <- function(x,lam,al,be,ga) al ^2 /(1 +al) *be *ga /lam *(x /lam) ^(be -1) *(1 +z(x,lam,be)) *z(x,lam,be) ^(ga -1)*(1 +z(x,lam,be) ^ga) *exp(-al *z(x,lam,be) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Odd Weibull-Weibull distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329927775_A_New_Flexible_Lifetime_Model_with_Statistical_Properties_and_Applications
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwiPyKGcr5boAhXac94KHUaZBroQFjAAegQIARAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F429%2FJDS-1210.pdf&usg=AOvVaw2qxI-uyZ_M3tXAgK19K88g
oddWeiWeiF. <- function(x, y = NULL, ext = F, ...) {  # The original formula was wrong (it's CDF)
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(x ^al /lam) -1
  f <- function(x,lam,al,be,ga) al *be *ga /lam *x ^(al -1) *(1 +z(x,lam,al)) *z(x,lam,al) ^(ga -1) *exp(-be *z(x,lam,al) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Paralogistic distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
paraLogisF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_al
  f <- function(x,al) al ^2 *x ^(al -1) *(1 +x ^al) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Pareto distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
paretoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) abs(al /lam) *((x -nu) /lam) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Pareto-geometric distribution == (2020-08-01) ==
## https://www.researchgate.net/publication/257498255_A_new_generalization_of_the_Pareto-geometric_distribution
pareGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) (1 -al) *be /lam *(x /lam) ^(-be -1) *(1 -al *(x /lam) ^(-be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Pareto IV distribution == (2020-04-23) ==
## https://www.academia.edu/12965162/The_Kumaraswamy_Pareto_IV_distribution?email_work_card=title
pare4F. <- function(x, y = NULL, ext = F, ...) {  # =: Lehmann type II Pareto IV
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 +(x /lam) ^al
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(-be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Pearson II distribution == (2019-12-31) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
pear2F. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /2 /lam *gamma(2 *al) /gamma(al) *(1 -x ^2 /4 /lam ^2) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Pearson III distribution == (2020-02-09) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
pear3F. <- function(x, y = NULL, ext = F, ...) {  # (shape) k > 0, (scale) lam > 0, x -nu --> x becomes Gamma
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) *abs(1 /lam) *((x -nu) /lam) ^(al -1) *exp(-(x -nu) /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Pearson V distribution == (2020-02-09) ==
## https://www.vosesoftware.com/riskwiki/PearsonType5distribution.php
## https://www.math.kyoto-u.ac.jp/~ichiro/2016Kyushu_abstract.pdf
pear5F. <- function(x, y = NULL, ext = F, ...) {  # PearsonV(nu =0) = Inverse Gamma(•)
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /gamma(al) /abs(lam) *(lam /(x -nu)) ^(al +1) *exp(-lam /(x -nu))
  lazy_call.(x,y,pLL,f,ext)
}


## Pearson VI distribution == (2020-01-25) ==
## https://www.vosesoftware.com/riskwiki/PearsonType6distribution.php
pear6F. <- function(x, y = NULL, ext = F, ...) {  # PesonVI = Beta prime, F
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /beta(al,be) *abs(1 /lam) *(x /lam) ^(al -1) *(1 +x /lam) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Pearson VII distribution == (2020-01-25) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
pear7F. <- function(x, y = NULL, ext = F, ...) {  # m > 1/2; similar to Pearson VII (and half ~), Cauchy, RBW, and Student's t
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /beta(al,al -1/2) *abs(1 /lam) *(1 +((x -nu) /lam) ^2) ^(-al)
  lazy_call.(x,y,pLL,f,ext)
}


## Pearson XII distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
pear12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 1 /beta(al,-al +2) /abs(be -ga) *((x -ga) /(be -x)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## PERT (Program Evaluation and Review Technique) distribution == (2020-02-09) ==
## https://en.wikipedia.org/wiki/PERT_distribution
pertF. <- function(x, y = NULL, ext = F, ...) {  # al < be < gam; mu = (al + 4*be + ga) /6; It's a transformation of beta dist. as 4 parameters
  pLL <- pLL_al_be_ga
  z1 <- function(al,be,ga) 1 +4 *(be -al) /(ga -al)
  z2 <- function(al,be,ga) 1 +4 *(ga -be) /(ga -al)
  f <- function(x,al,be,ga) (x -al) ^(z1(al,be,ga) -1) *(ga -x) ^(z2(al,be,ga) -1) /beta(z1(al,be,ga),z2(al,be,ga)) /(ga -al) ^(z1(al,be,ga) +z2(al,be,ga) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Pham distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
phamF. <- function(x, y = NULL, ext = F, ...) {  # = log-log distribution
  pLL <- pLL_al_be
  f <- function(x,al,be) al *log(be) *x ^(al -1) *be ^(x ^al) *exp(1 -be ^(x ^al))
  lazy_call.(x,y,pLL,f,ext)
}


## Phani distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
phaniF. <- function(x, y = NULL, ext = F, ...) {  # No good
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga,de) (x -al) ^be /(ga -x) ^de
  f <- function(x,al,be,ga,de,et) et *(ga -x) /(x -al) *(de *(x -al) +be *(ga -x)) *z(x,al,be,ga,de) *exp(-et *z(x,al,be,ga,de))
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Burr X Fréchet distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/337819976_A_New_Compound_Frechet_Distribution_for_Modeling_Breaking_Stress_and_Strengths_Data
poiBurr10FreF. <- function(x, y = NULL, ext = F, ...) {  # Largely transformed from the original formula
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -exp(-(exp(x ^(-al)) -1) ^(-2))
  f <- function(x,al,be,ga) 2 *al *be *ga *(1 -exp(-ga)) *x ^(-al -1) *(exp(x ^(-al)) -1) ^(-3) *z(x,al) ^(be -1) *exp(x ^(-al) -(exp(x ^al) -1) ^(-2) -ga *z(x,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Burr X Pareto type II distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/337802063_Extended_Poisson-Pareto_Type_II_Distribution_Theoretical_and_Computational_Aspects
poiBurr10Pare2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -(1 +x) ^(-al)
  f <- function(x,al,be,ga) 2 *al *be *ga /(1 -exp(-ga)) *(1 +x) ^(2 *al -1) *z(x,al) *exp(-z(x,al) ^2) *(1 -exp(-z(x,al) ^2)) ^(be -1) *exp(-ga *(1 -exp(-z(x,al) ^2)) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson-generalized Gompertz distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
poiGenGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-ga *(exp(x /lam) -1))
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(1 -exp(-al)) *exp(x /lam) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(be -1) *exp(-al *z(x,lam,ga) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson generalized linear failure rate distribution == (2020-06-12) ==
## https://www.academia.edu/27304120/An_Extension_of_the_Generalized_Linear_Failure_Rate_Distribution?email_work_card=title
poiGenLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) 1 -exp(-ga *x -de /2 *x ^2)
  f <- function(x,al,be,ga,de) al *be /(1 -exp(-al)) *(ga +de *x) *(1 -z(x,ga,de)) *z(x,ga,de) ^(be -1) *exp(-al *z(x,ga,de) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson-Gompertz distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
poiGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-be *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al *be /lam /(1 -exp(-al)) *exp(x /lam) *(1 -z(x,lam,be)) *exp(-al *z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Lomax distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/273057627_The_Poisson-Lomax_Distribution
poiLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 +x /lam
  f <- function(x,lam,al,be) al *be /lam /(1 -exp(-al)) *z(x,lam) ^(-be -1) *exp(-al *x ^(-be))
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson-odd exponential-half logistic distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
poiOddExpHalfLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) 1 -exp(-be /2 *(exp(x) -1))
  f <- function(x,al,be) al *be /2 /(1 -exp(-al)) *(1 -z(x,be)) *exp(x -al *z(x,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson-odd exponential-uniform distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
poiOddExpUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(be *x /(x -lam))
  f <- function(x,lam,al,be) al *be /lam /(1 -exp(-al)) *(1 -x /lam) ^(-2) *(1 -z(x,lam,be)) *exp(-al *z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson-odd generalized exponential-half logistic distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
poiOddGenExpHalfLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) 1 -exp(-ga /2 *(exp(x) -1))
  f <- function(x,al,be,ga) al *be *ga /2 /(1 -exp(-al)) *(1 -z(x,ga)) *z(x,ga) ^(be -1) *exp(x -al *z(x,ga) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson-odd generalized exponential-uniform distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/311843379_Poisson-odd_generalized_exponential_family_of_distributions_Theory_and_Applications
poiOddGenExpUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(ga *x /(x -lam))
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(1 -exp(-al)) *(1 -x /lam) ^(-2) *(1 -z(x,lam,ga)) *z(x,lam,ga) ^(be -1) *exp(-al *z(x,lam,ga) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Topp-Leone inverse Weibull distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/331226343_Extended_Poisson_Inverse_Weibull_Distribution_Theoretical_and_Computational_Aspects
poiTopLeoInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be) 1 -exp(-al *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga,de) 2 *al *be *ga *de /(1 -exp(-de)) /lam *(x /lam) ^(-be -1) *z(x,lam,al,be) /(1 +z(x,lam,al,be)) *(1 -z(x,lam,al,be) ^2) ^ga *exp(-de *(1 -z(x,lam,al,be) ^2) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Topp-Leone Weibull distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329927775_A_New_Flexible_Lifetime_Model_with_Statistical_Properties_and_Applications
poiTopLeoWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,al) 1 -exp(-2 *x ^al)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(al -1) /(1 -exp(-be)) *(1 -z(x,al)) *z(x,al) ^(ga -1) *exp(-be *z(x,al) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Weibull-exponentiated-exponential distribution == (2020-03-26) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
poiWeiExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al,be) exp(-(-log(1 -(1 -exp(-x /lam)) ^al)) ^be)
  zz <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam /(1 -exp(-1)) *(1 -zz(x,lam) ^(-1)) /(1 -zz(x,lam) ^(-al)) *(-log(1 -zz(x,lam) ^al)) ^(be -1) *z(x,lam,al,be) *exp(z(x,lam,al,be) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Weibull-Gumbel distribution == (2020-03-26) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
poiWeiGumF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  z <- function(x,nu,lam,al) exp(-(-log(1 -exp(-exp((x -nu) /lam)))) ^al)
   zz <- function(x,nu,lam) exp(-exp((x -nu) /lam))
  f <- function(x,nu,lam,al) al /lam /(1 -exp(-1)) *exp((x -nu) /lam) *zz(x,nu,lam) /(1 -zz(x,nu,lam)) *(-log(1 -zz(x,nu,lam))) ^(al -1) *z(x,nu,lam,al) *exp(z(x,nu,lam,al) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Weibull-Lindley distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
poiWeiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  G <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  g <- function(x,lam) -(1 +x) /lam /(1 +lam) *exp(-x /lam)
  f <- function(x,lam,al) al /(1 -exp(-1)) *g(x,lam) *(-log(1 -G(x,lam))) ^(al -1) /(1 -G(x,lam)) *exp(-(-log(1 -G(x,lam))) ^al) *exp(exp(-(-log(1 -G(x,lam))) ^al) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Weibull-log-logistic distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
poiWeiLogLogisF. <- function(x, y = NULL, ext = F, ...) {  # The original had a lack of fuck minus
  pLL <- pLL_lam_al_be
  G <- function(x,lam,al) 1 -(1 +(x /lam) ^al) ^(-1)
  g <- function(x,lam,al) (1 +(x /lam) ^al) ^(-2) *al /lam *(x /lam) ^(al -1)
  f <- function(x,lam,al,be) be /(1 -exp(-1)) *g(x,lam,al) *(-log(1 -G(x,lam,al))) ^(be -1) /(1 -G(x,lam,al)) *exp(-(-log(1 -G(x,lam,al))) ^be) *exp(exp(-(-log(1 -G(x,lam,al))) ^be) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Poisson Weibull-Pareto distribution == (2020-03-26) ==
## https://www.researchgate.net/publication/339840566_The_Poisson_Weibull-X_family_of_distributions
poiWeiPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al,be) exp(-(al *log(x /lam)) ^be)
  f <- function(x,lam,al,be) al *be /(1 -exp(-1)) /x *(al *log(x /lam)) ^(be -1) *z(x,lam,al,be) *exp(z(x,lam,al,be) -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Porter-Thomas distribution == (2020-05-25) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
porThoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam
  f <- function(x,lam) 1 /2 /lam /gamma(1/2) *(x /2 /lam ^2) ^(-1 /2) *exp(-x /2 /lam ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Power Function distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
powFunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function (x,nu,lam,al) abs(al /lam) *((x -nu) /lam) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Power Gompertz distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/336672414_A_Power_Gompertz_Distribution_Model_Properties_and_Application_to_Bladder_Cancer_Data
powGomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *x ^(be -1) *exp(ga *x) *exp(-al /ga *(exp(ga *x) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Power Lindley distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
powLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al /lam /(1 +lam) *x ^(al -1) *(1 +x ^al) *exp(-x ^al /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Power log-Dagum distribution == (2020-01-24) ==
## https://hal.archives-ouvertes.fr/hal-01491483/document
powLogDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) exp(-al *x -sgn.(x) *be /al *abs(x) ^al)
  f <- function(x,al,be,ga) ga *(al +be *abs(x) ^(al -1)) *z(x,al,be) *(1 +z(x,al,be)) ^(-ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Power logistic distribution== (2020-01-24) ==
## https://hal.archives-ouvertes.fr/hal-01491483/document
powLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al,be) exp(-al *x -sgn.(x) *be /al *abs(x) ^al)
  f <- function(x,al,be) (al +be *abs(x) ^(al -1)) *z(x,al,be) *(1 +z(x,al,be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Power log-normal distribution == (2020-01-07) ==
## https://docs.scipy.org/doc/scipy/reference/tutorial/stats/continuous_powerlognorm.html
powLogNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /lam /x *stnorm((log(x) -nu) /lam) *(stcum(-(log(x) -nu) /lam)) ^(al -1)  # Note: /x --> keep /x
  lazy_call.(x,y,pLL,f,ext)
}


## Power normal distribution == (2020-01-07) ==
## https://docs.scipy.org/doc/scipy/reference/tutorial/stats/continuous_powernorm.html
powNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /lam *stnorm((x -nu) /lam) *(stcum(-(x -nu) /lam)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Power Topp-Leone distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/338336827_Type_II_Power_Topp-Leone_Generated_Family_of_Distributions_with_Statistical_Inference_and_Applications
powTopLeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) 2 *al *be *x ^(al *be -1) *(1 -x ^al) *(2 -x ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Prentice distribution == (2020-02-09) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
prenticeF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0, (shape) al, ga > 0; similar to Prentice, exBeta, and Logistic
  pLL <- pLL_nu_lam_al_be
  f <- function (x,nu,lam,al,be) 1 /beta(al,be) /abs(lam) *exp(-al *(x -nu) /lam) *(1 +exp(-(x -nu) /lam)) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Provost type gamma-Weibull distribution == (2020-05-02) ==
## https://www.academia.edu/18962752/Marshall_Olkin_gamma_Weibull_Distribution_with_Applications?email_work_card=title
proGamWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 2 /pi *atan(x /lam)
  f <- function(x,lam,al,be) 1 /gamma(1 +al /be) *be /lam *(x /lam) ^(al +be -1) *exp(-(x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Pseudo-Weibull distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
psuedoWeiF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /gamma(1 +1 /al) *al *abs(lam) *(x /lam) ^al *exp(-(x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Quadratic hazard rate distribution == (2020-08-01) ==
## https://www.researchgate.net/publication/281975001_The_Beta_Quadratic_Hazard_Rate_Distribution
quadHazRateF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) (al +be *x +ga *x ^2) *exp(-al *x -be /2 *x ^2 -ga /3 *x ^3)
  lazy_call.(x,y,pLL,f,ext)
}


## Quasi Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/318638596_A_new_generalized_Poisson_Lindley_distribution
quaLinF. <- function(x, y = NULL, ext = F, ...) {  # a mixture of exp(a) & gamma(2,a)
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /lam /(1 +al) *(al +x /lam) *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Quasi xgamma distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
quaXgamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be,ga) be /(1 +al) *(al +be ^2 *x ^2 /2) *exp(-be *x)
  lazy_call.(x,y,pLL,f,ext)
}


## Quasi xgamma-geometric Lomax distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
quaXgamGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) (1 -al) *be /(1 +ga) *(ga +be ^2 *x ^2 /2) *exp(-be *x) *(1 -(al *exp(-be *x) *(1 +ga +be *x +be ^2 *x ^2 /2)) /(1 +ga)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Quasi xgamma-Poisson distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/330675442_The_quasi_xgamma-Poisson_distribution_Properties_and_Application_Istatistik_Journal_of_the_Turkish_Statistical_Assocation
quaXgamPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) be /lam /(1 +al) /(exp(be) -1) *(al +(x /lam) ^2 /2) *exp(be /(1 +al) *exp(-x /lam) *(1 +al +x /lam +(x /lam) ^2 /2) -x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## R distribution == (2020-01-07) ==
## https://docs.scipy.org/doc/scipy/reference/tutorial/stats/continuous_rdist.html
rF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /beta(1 /2,al /2) *(1 -((x -nu) /lam) ^2) ^(al /2 -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Raised cosine distribution == (2020-01-07) ==
## https://www.wikizero.com/en/Raised_cosine_distribution
raisedCosF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /2 /lam *(1 +cos((x -nu) /lam *pi))
  lazy_call.(x,y,pLL,f,ext)
}


## Rayleigh distribution == (2020-02-09) ==
## (NOT) https://en.wikipedia.org/wiki/Rayleigh_distribution
## (BUT) https://github.com/cran/propagate/blob/master/R/distr-densities.R
rayleighF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) (x -nu) /lam ^2 *exp(-1/2 * ((x -nu) /lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Rayleigh geometric distribution == (2020-07-29) ==
## https://digitalcommons.georgiasouthern.edu/cgi/viewcontent.cgi?article=1654&context=math-sci-facpubs
rayGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,be) exp(-be *x ^2 /2)
  f <- function(x,al,be) (1 -al) *be *x *z(x,be) /(1 -al *z(x,be)) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Rayleigh logarithmic distribution == (2020-07-30) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjbx4mskvLqAhVXed4KHYx8AvEQFjAAegQIAxAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F676%2F10%2BNo.08%2B293%2BA%2BNEW%2BGENERALIZED%2BCLASS%2BOF%2BLINEAR%2BFAILURE%2BRATE%2BPOWER%2BSERIES%2BDISTRIBUTION%2BMODEL%252C%2BTHEORY%2BAND%2BAPPLICATION.pdf&usg=AOvVaw1-QbTojOnDcdg7fM6TNArQ
rayLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be,ga,de) al /log(1 -be) *x *(1 -(1 -be *exp(-al /2 *x ^2)) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Rayleigh Rayleigh distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/335526906_On_the_Exponentiated_Weibull_Rayleigh_Distribution
rayRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(x ^2 /lam) -1
  f <- function(x,lam,al) 4 *al /lam *x *(1 +z(x,lam)) *z(x,lam) ^3 *exp(-al *z(x,lam) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Reciprocal inverse Gaussian distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
recInvGaussF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam,al,m) sqrt(lam /2 /pi /x) *exp(-lam /2 /x *(x -1 /nu) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Reflected generalized beta inverse Weibull distribution == (2020-02-22) ==
## https://www.researchgate.net/publication/256981765_Reflected_Generalized_Beta_of_Generalized_Inverse_Weibull_Distribution_definition_and_properties
refGenBetaInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,de) 1 -exp(-x ^(-de) /lam)
  f <- function(x,lam,al,be,ga,de) be *de /beta(al,ga) *x ^(-de -1) /lam *z(x,lam,de) ^(al *be -1) *(1 -z(x,lam,de) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Relativeistic Breit-Wigner distribution == (2020-02-09) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
relBrWiF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam > 0; similar to Pearson VII, Cauchy, RBW, and Student's t
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 2 /pi /lam *(1 +((x -nu) /lam) ^2) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Reversed Burr type II distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
revBurr2F. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_al
  f <- function(x,al) al *exp(x) *(1 +exp(x)) ^(al +1)
  lazy_call.(x,y,pLL,f,ext)
}


## Rice distribution == (2020-02-09) ==
## https://en.wikipedia.org/wiki/Rice_distribution
riceF. <- function(x, y = NULL, ext = F, ...) {  # (location) nu, (scale) lam, using modified Bessel function of the first kind with order zero
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) x /lam ^2 *exp(-1/2 *(x ^2 +nu ^2) /lam ^2) *besselI(x *nu /lam ^2,0)
  lazy_call.(x,y,pLL,f,ext)
}


## Ristić-Balakrishnan Burr XII distribution == (2020-01-14) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=20&cad=rja&uact=8&ved=2ahUKEwj3u421yoLnAhXJP3AKHXkxBDUQFjATegQICRAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F624%2F142%25E5%25AE%258C%25E6%2588%25901001.pdf&usg=AOvVaw3sFiSsomR3CCZUTx_gzwPy
rbb12F. <- function(x, y = NULL, ext = F, ...) {  # Sister of gamma Burr3, log-gamma Burr3, Ristić-Balakrishnan Burr12, ZB Burr12
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 +(x /lam) ^ga
  f <- function(x,lam,al,be,ga) 1 /gamma(al) *be *ga /x *(z(x,lam,ga) -1) *z(x,lam,ga) ^(-be -1) *(-log(1 -z(x,lam,ga) ^(-be))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Rogin-Rammler distribution == (2020-02-09) ==
## https://www.ugr.es/~fcamacho/Originales/Trabajos%20Publicados/PT_2008.pdf
roginF. <- function(x, y = NULL, ext = F, ...) {  # equal to Weibull distribution
  pLL <- pLL_lam_al
  f <- function(x,lam,al) abs(al /lam) *(x /lam) ^(al -1) *exp(-(x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Sarhan-Zaindin modified Weibull distribution == (2020-05-18) ==
## https://www.academia.edu/9997742/The_Weibull-Power_Function_Distribution_With_Applications?email_work_card=title
sarZaiModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) (al +be *ga *x ^(ga -1)) *exp(-al *x -be *x ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Scaled chi distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
scaChiF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 /gamma(al /2) /sqrt(2 *lam ^2) *(x /sqrt(2 *lam ^2)) ^(al -1) *exp(-(x /sqrt(2 *lam ^2)) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Scaled chi-square distribution == (2019-12-29) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
scaChiSqrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /2 /lam ^2 /gamma(al /2) *(x /2 /lam ^2) ^(al /2 -1) *exp(- (x /2 /lam ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Scaled inverse chi distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
scaInvChiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *sqrt(2 *lam ^2) /gamma(al /2) *(1 /sqrt(2 *lam ^2) /x) ^(al +1) *exp(-(1 /sqrt(2 *lam ^2) /x) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## Scaled inverse chi-square distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
scaInvChiSqrF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 2 *lam ^2 /gamma(al /2) *(1 /2 /lam ^2 /x) ^(al /2 +1) *exp(-(1 /2 /lam ^2 /x))
  lazy_call.(x,y,pLL,f,ext)
}


## Shifted Gompertz distribution == (2020-01-25) ==
## https://en.wikipedia.org/wiki/Shifted_Gompertz_distribution
shGomF. <- function(x, y = NULL, ext = F, ...) {  # (scale) lam >= 0, (shape) al >= 0;  I add 'nu' to the formula
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /lam *exp(-(x -nu) /lam) *exp(-al *exp(-(x -nu) /lam)) *( 1 +al *(1 -exp(-(x -nu) /lam)))
  lazy_call.(x,y,pLL,f,ext)
}


## Shifted log-logistic distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Shifted_log-logistic_distribution
shLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 1 /lam *(1 +al *(x -nu) /lam) ^(-1 /al -1) *(1 +(1 +al *(x -nu) /lam) ^(-1 /al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Sichel distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
sichelF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga
  f <- function(x,nu,lam,al,be,ga) 1 /besselK(2 *sqrt(be *ga),al) *(be /ga) ^(al /2) /2 /abs(lam) *((x -nu) /lam) ^(al -1) *exp(-be *((x -nu) /lam) -ga *((x -nu) /lam) ^(-1))
  lazy_call.(x,y,pLL,f,ext)
}


## Singh-Maddala distribution == (2020-02-09) ==
## http://www.mathwave.com/articles/burr_singh_maddala_distribution.html
sinMadF. <- function(x, y = NULL, ext = F, ...) {  # = BurrXII if nu = 0; sinMad is similar to Dagum2. Its difference is ^(al-1), Dagum2 is ^(al*be-1)
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) abs(al *be /lam) *((x -nu) /lam) ^(al -1) *(1 + ((x -nu) /lam) ^al) ^(-be -1)  # abs() in contrast to Dagum2 
  lazy_call.(x,y,pLL,f,ext)
}


## Skew-curved-symmetric distribution == (2020-08-02) ==
## https://www.academia.edu/22783896/Properties_and_Inference_on_the_Skew-Curved-Symmetric_Family_of_Distributions
skewCurSymF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al
  f <- function(x,al,be) 2 *stnorm(x) *stcum(al *x /sqrt(1 +al ^2 *x ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Skew-generalized normal distribution == (2020-08-02) ==
## https://www.researchgate.net/publication/299519562_The_Beta_Skew-Generalized_Normal_Distribution
skewGenNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) 2 *stnorm(x) *stcum(al *x /sqrt(1 +be *x ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Skew normal distribution == (2020-01-25) ==
## https://en.wikipedia.org/wiki/Skew_normal_distribution
skewNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) 2 /lam *stnorm((x -nu) /lam) *stcum(al *(x -nu) /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Slymen-Lachenbruch distribution == (2020-07-24) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
slyLachF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be,ga) exp(ga +al /2 /be *(x ^be -x ^(-be)))
  f <- function(x,al,be,ga) al /2 /x *(x ^be +x ^(-be)) *z(x,al,be,ga) *exp(-z(x,al,be,ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Stacy distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
stacyF. <- function(x, y = NULL, ext = F, ...) {  # = Amoroso, Stacy
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(al) *abs(be /lam) *(x /lam) ^(al *be -1) *exp(-(x /lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Stretched exponential distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
strechedExpF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) al *abs(lam) *(x /lam) ^(al -1) *exp(-(x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Student's t distribution == (2020-01-25) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
studentTF. <- function(x, y = NULL, ext = F, ...) {  # (degrees of freedom) n, similar to Pearson VII, Cauchy, RBW, and Student's t; integer n := al
  pLL <- pLL_al
  f <- function(x,al) 1 /sqrt(al) /beta(1/2,al /2) *(1 +x ^2 /al) ^(-(al +1) /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Symmetric Prentice distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
symPrenticeF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) exp(-al *x /lam) *(1 +exp(-x /lam)) ^(-2 *al)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone Burr-XII distribution == (2020-01-27) ==
## http://www.ccsenet.org/journal/index.php/ijsp/article/view/51846
topLeoBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) 2 *al *be *ga *x ^(be -1) *(1 +x ^be) ^(-2 *al -1) *(1 -(1 +x ^be) ^(-2 *al)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone exponentiated exponential distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/340299011_On_the_Topp_Leone_Exponentiated-G_Family_of_Distributions_Properties_and_Applications
topLeoExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) 2 *al *be /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) *(1 -(1 -z(x,lam) ^al) ^2) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone exponentiated log-logistic distribution == (2020-04-07) ==
## https://www.researchgate.net/publication/340299011_On_the_Topp_Leone_Exponentiated-G_Family_of_Distributions_Properties_and_Applications
topLeoExpLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) x ^ga /(1 +x ^ga)
  f <- function(x,al,be,ga) 2 *al *be *ga /x *(1 -z(x,ga)) *z(x,ga) ^al *(1 -z(x,ga) ^al) *(1 -(1 -z(x,ga) ^al) ^2) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone generated Lindley distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/334950298_A_New_Extension_of_Lindley_Distribution_Modified_Validation_Test_Characterizations_and_Different_Methods_of_Estimation
topLeoGenLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) 2 *al *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^al) *(2 -z(x,lam) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone generated Weibull distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/311917802_The_Topp-Leone_Generated_Weibull_Distribution_Regression_Model_Characterizations_and_Applications
topLeoGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) 1 -exp(-(x /lam) ^be)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(be -1) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al *ga -1) *(1 -z(x,lam,be) ^ga) *(2 -z(x,lam,be) ^ga) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone inverse Weibull distribution == (2020-04-03) ==
## https://www.researchgate.net/publication/331226343_Extended_Poisson_Inverse_Weibull_Distribution_Theoretical_and_Computational_Aspects
topLeoInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) 1 -exp(-al *(x /lam) ^(-be))
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(-be -1) *z(x,lam,al,be) /(1 +z(x,lam,al,be)) *(1 -z(x,lam,al,be) ^2) ^ga
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone Lomax distribution == (2020-03-21) ==
## https://www.researchgate.net/publication/338177653_Validation_of_the_Topp-Leone-Lomax_Model_via_a_Modified_Nikulin-Rao-Robson_Goodness-of-Fit_Test_with_Different_Methods_of_Estimation
topLeoLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(1 +x /lam) ^(-2 *al -1) *(1 -(1 +x /lam) ^(-2 *al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone Nadarajah-Haghighi distribution == (2020-03-02) ==
## https://www.researchgate.net/publication/322385797_Topp-Leone_Nadarajah-Haghighi_distribution
topLeoNadaHaghiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(2 *(1 -(1 +x /lam) ^al))
  f <- function(x,lam,al,be) 2 *al *be /lam *(1 +x /lam) ^(al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone odd log-logistic exponential distribution == (2020-03-17) ==
## https://www.researchgate.net/publication/334971340_Topp-Leone_odd_log-logistic_exponential_distribution_Its_improved_estimators_and_applications
topLeoOddLogLogisExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) 2 *al *be /lam *(1 -z(x,lam)) ^2 *(1 -z(x,lam) +z(x,lam) ^al) ^(-3) *(1 -(1 -z(x,lam) ^al /(1 -z(x,lam) +z(x,lam) ^al)) ^2) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone Quasi Lindley distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/331890055_The_Exponentiated_Generalized_Topp_Leone-G_Family_of_Distributions_Properties_and_Applications
topLeoQuaLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) (1 +x /lam /(1 +al)) *exp(-2 *x /lam)
  f <- function(x,lam,al,be) 2 *be /lam *(al +x /lam) /(1 +al +x /lam) *z(x,lam,al) *(1 -z(x,lam,al)) ^(2 *be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Topp-Leone Weibull distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/320226600_The_Transmuted_Topp-Leone_G_Family_of_Distributions_Theory_Characterizations_and_Applications
topLeoWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) 1 -exp(-2 *(x /lam) ^al)
  f <- function(x,lam,al,be) 2 *al *be /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Transformed beta distribution == (2020-04-15) ==
## https://pdfs.semanticscholar.org/0a77/0610e3f18cd9fb6bfeed6a9fcc7dcf19084f.pdf?_ga=2.83474067.465332696.1586924775-1525756084.1586924775
transBetaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) 1 /beta(al, ga) *be /lam *(x /lam) ^(be *ga) *(1 +(x /lam) ^be) ^(-al -ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted additive Weibull distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
transAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga,de) exp(-(al *x ^be +ga *x ^de))
  f <- function(x,al,be,ga,de,et) (al *be *x ^(be -1) +ga *de *x ^(de -1)) *z(x,al,be,ga,de) *(1 -et +2 *et *z(x,al,be,ga,de))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted complementary Poisson distribution == (2020-02-28) ==
## https://www.researchgate.net/publication/311714502_The_Complementary_Generalized_Transmuted_Poisson-G_Family_of_Distributions
transCompPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) exp(al *(1 -exp(-be *x)))
  f <- function(x,al,be,ga) al *be *exp(-be *x) /(exp(al) -1) *z(x,al,be) *(1 -ga +2 *ga *(exp(al) -z(x,al,be)) /(exp(al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted complementary Weibull geometric distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
transCompWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,be) exp(-(x /lam) ^be)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(be -1) *z(x,lam,be) *(al *(1 -ga) -(al -al *ga -ga -1) *z(x,lam,be)) *(al +(1 -al) *z(x,lam,be)) ^(-3)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Dagum distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/273508970_Transmuted_Dagum_distribution_A_more_flexible_and_broad_shaped_hazard_function_model
transDagF. <- function(x, y = NULL, ext = F, ...) {  # Largely transformed from the original formula
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +(x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^(-be -1) *(1 +ga -2 *ga *z(x,lam,al) ^(-be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponential distribution == (2020-02-25) ==
## https://www.researchgate.net/publication/288056173_Performance_rating_of_the_transmuted_exponential_distribution_an_analytical_approach
transExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /lam *exp(-x /lam) *(1 -al +2 *al *exp(-x /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponential Lomax distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/322487714_On_the_inferences_and_applications_of_transmuted_exponential_Lomax_distribution
transExpLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-be *(1 +x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be /lam  *(1 +x /lam) ^(al -1) *z(x,lam,al,be) *(1 -ga +2 *ga *z(x,lam,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated additive Weibull distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
transExpAddWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de_et
  z <- function(x,be,ga,de,et) 1 -exp(-(be *x ^ga +de *x ^et))
  f <- function(x,lam,al,be,ga,de,et) al *(be *ga *x ^(ga -1) +de *et *x ^(et -1)) *(1 -z(x,be,ga,de,et)) *z(x,be,ga,de,et) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga,de,et) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated exponential distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
transExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,be) 1 -exp(-be *x)
  f <- function(x,lam,al,be) al *be *(1 -z(x,be)) *z(x,be) ^(al -1) *(1 +lam -2 *lam *z(x,be) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated generalized Pareto distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/285585413_The_Transmuted_Exponentiated_Generalized-G_Family_of_Distributions
transExpGenPareF. <- function(x, y = NULL, ext = F, ...) {  # Reduced one parameter from the original formula
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -(x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^(be -1) *(1 +ga -2 *ga *z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated generalized Fréchet distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/285585413_The_Transmuted_Exponentiated_Generalized-G_Family_of_Distributions
transExpGenFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al) 1 -exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga,de) al *be *ga /lam *(x /lam) ^(-al -1) *z(x,lam,al) ^(be -1) *(1 -z(x,lam,al) ^be) ^(ga -1) *(1 +de -2 *de *(1 -z(x,lam,al) ^be) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated generalized Weibull distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/321434933_A_New_Extension_of_Weibull_Distribution_Properties_and_Different_Methods_of_Estimation
transExpGenWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-x ^al /lam)
  f <- function(x,lam,al,be,ga) al *be /lam *x ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) *(1 +ga -2 *ga *z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated linear failure rate distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
transExpLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,be,ga) 1 -exp(-(be *x +ga *x ^2))
  f <- function(x,lam,al,be,ga) al *(be +2 *ga *x) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated modified Weibull distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
transExpModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,be,ga,de) 1 -exp(-(be *x +ga *x ^de))
  f <- function(x,lam,al,be,ga,de) al *(be +ga *x ^(de -1)) *z(x,be,ga,de) *(1 -z(x,be,ga,de)) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga,de) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated Pareto distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/340027510_New_methods_to_define_heavy-tailed_distributions_with_applications_to_insurance_data
transExpPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -(1 +x) ^(-al)
  f <- function(x,al,be,ga) al *be *(1 +x) ^(-al -1) *z(x,al) ^(be -1) *(1 +ga -2 *ga *z(x,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated Rayleigh distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
transExpRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,be) 1 -exp(-be *x ^2)
  f <- function(x,lam,al,be) 2 *al *be *x *(1 -z(x,be)) *z(x,be) ^(al -1) *(1 +lam -2 *lam *z(x,be) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted exponentiated Weibull distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
transExpWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,be,ga) 1 -exp(-be *x ^ga)
  f <- function(x,lam,al,be,ga) al *be *ga *x ^(ga -1) *(1 -z(x,be,ga)) *z(x,be,ga) ^(al -1) *(1 +lam -2 *lam *z(x,be,ga) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Fréchet distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/296691997_The_Kumaraswamy_Transmuted-G_Family_of_Distributions_Properties_and_Applications
transFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al /lam *(x /lam) ^(-al -1) *z(x,lam,al) *(1 +be -2 *be *z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted generalized exponential distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
transGenExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) al /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 +be -2 *be *z(x,lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted generalized gamma distribution == (2021-01-12) ==
## https://www.researchgate.net/publication/329467712_Some_New_Results_for_the_Transmuted_Generalized_Gamma_Distribution
transGenGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (x /lam) ^al
  f <- function(x,lam,al,be,ga) 1 /gamma(1 +be /al) ^2 *al /lam *z(x,lam,al) ^(be -1) *exp(-z(x,lam,al)) *(2 *ga *incgamma(z(x,lam,al), 1 +be /al, 2) +(1 -ga) *gamma(1 +be /al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted generalized inverse Weibull distribution == (2020-07-20) ==
## https://www.academia.edu/12221822/The_Transmuted_Generalized_Inverse_Weibull_Distribution
transGenInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) exp(-be *(x /lam) ^(-al))  # Unknown error (avoid it by al *be --> al *1)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al,be) *(1 +ga -2 *ga *z(x,lam,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted generalized modified Weibull distribution == (2020-02-25) ==
## https://www.researchgate.net/publication/305688898_The_Transmuted_Generalized_Modified_Weibull_Distribution
transGenModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,ga) exp(-al *x ^ga *exp(x /lam))
  f <- function(x,lam,al,be,ga,de) al *be *x ^(ga -1) *(ga +x /lam) *exp(x /lam) *z(x,lam,al,ga) *(1 -z(x,lam,al,ga)) ^(be -1) *(1 +de -2 *de *(1 -z(x,lam,al,ga) ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted geometric Burr X distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/299123117_The_transmuted_geometric-G_family_of_distributions_Theory_and_applications
transGeoBurr10F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al,be,ga) 2 *al *be /lam *x /lam *(1 -z(x,lam)) *z(x,lam) ^(al -1) *(1 +(be -1) *z(x,lam) ^al) ^(-2) *(1 +ga -2 *ga *be *z(x,lam) ^al /(1 +(be -1) *z(x,lam) ^al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted geometric Weibull distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/321434933_A_New_Extension_of_Weibull_Distribution_Properties_and_Different_Methods_of_Estimation
transGeoWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *(1 +ga -2 *be *ga *z(x,lam,al) /(1 -(1 -be) *z(x,lam,al))) *(1 -(1 -be) *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted inverse exponential distribution == (2020-07-20) ==
## https://www.academia.edu/12221822/The_Transmuted_Generalized_Inverse_Weibull_Distribution
transInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  z <- function(x,al) exp(-al /x)
  f <- function(x,al,be) al /x ^2 *z(x,al) *(1 +be -2 *be *z(x,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted inverse Rayleigh distribution == (2020-07-20) ==
## https://www.academia.edu/12221822/The_Transmuted_Generalized_Inverse_Weibull_Distribution
transInvRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) exp(-(x /lam) ^(-2))
  f <- function(x,lam,al) 2 /lam *(x /lam) ^(-3) *z(x,lam) *(1 +al -2 *al *z(x,lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted inverse Weibull distribution == (2020-07-20) ==
## https://www.academia.edu/12221822/The_Transmuted_Generalized_Inverse_Weibull_Distribution
transInvWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be) al /lam *(x /lam) ^(-al -1) *z(x,lam,al) *(1 +be -2 *be *z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Janardan distribution == (2020-12-07) ==
## https://www.researchgate.net/publication/318310040_Transmuted_Janardan_Distribution_A_Generalization_of_the_Janardan_Distribution
transJanF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) be ^2 /al /(al ^2 +be) ^2 *(1 +al *x) *exp(-2 *be /al *x) *(2 *ga *(al ^2 +be +al *be *x) -(ga -1) *(al ^2 +be) *exp(be /al *x))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Lindley distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
transLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al) (1 +x) /lam /(1 +lam) *exp(-x /lam) *(1 +al -2 *al *z(x,lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Lindley geometric distribution == (2020-08-02) ==
## https://www.academia.edu/12221819/Transmuted_Lindley-Geometric_Distribution_and_its_Applications?email_work_card=title
transLinGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) (1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) (1 -al) /lam /(1 +lam) *(1 +x) *exp(-x /lam) *(1 -al *z(x,lam)) ^(-2) *(1 +be -2 *be *(1 -z(x,lam) /(1 -al *z(lam,al))))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted linear exponential distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/332971234_Modified_Beta_Linear_Exponential_Distribution_with_Hydrologic_Applications
transLineExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) exp(-(al *x ^2 /2 +be *x))
  f <- function(x,al,be,ga) (al *x +be) *z(x,al,be) *(1 -ga +2 *ga *z(x,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted linear failure rate distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
transLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,al,be) 1 -exp(-(al *x +be *x ^2))
  f <- function(x,lam,al,be) (al +2 *be *x) *(1 -z(x,al,be)) *(1 +lam -2 *lam *z(x,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted log-logistic distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
transLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) (1 +(x /lam) ^al) ^(-1)
  f <- function(x,lam,al,be) al /lam *(x /lam) ^(al -1) *z(x,lam,al) ^2 *(1 -be +2 *be *z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Lomax distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
transLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al /lam *(1 +x /lam) ^(-al -1) *(1 -be +2 *be *(1 +x /lam) ^(-al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Marshall-Olkin Fréchet distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/296691997_The_Kumaraswamy_Transmuted-G_Family_of_Distributions_Properties_and_Applications
transMaolFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^(-al))
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(-al -1) *z(x,lam,al) /(ga +(1 -ga) *z(x,lam,al)) ^2 *(1 +be -2 *be *z(x,lam,al) /(ga +(1 -ga) *z(x,lam,al)))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted modified exponential distribution == (2020-05-08) ==
## https://www.academia.edu/22794076/Kumaraswamy_Transmuted_Exponentiated_Additive_Weibull_Distribution
transModExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,be) 1 -exp(-be *x)
  f <- function(x,lam,al,be) al *be *(1 -z(x,be)) *z(x,be) ^(al -1) *(1 +lam -2 *lam *z(x,be) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted modified-Weibull distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
transModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,al,be,ga) exp(-al *x -be *x ^ga)
  f <- function(x,al,be,ga,de) (al +be *ga *x ^(ga -1)) *z(x,al,be,ga) *(1 -de +2 *de *z(x,al,be,ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted odd generalized exponential-exponential distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/334275703_On_the_Properties_and_Applications_of_Transmuted_Odd_Generalized_Exponential-Exponential_Distribution
transOddGenExpExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-al *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al /lam *exp(x /lam) *z(x,lam,al) *(1 -be +2 *be *z(x,lam,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted power distribution == (2020-08-05) ==
## https://journal.stats.id/index.php/ijsa/article/view/204/121
transPowF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-be *lam *(exp(x /lam) -1))
  f <- function(x,lam,al,be) al /lam *(x /lam) ^(al -1) *(1 +be -2 *be *(x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Rayleigh distribution == (2020-05-07) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
transRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,al) 1 -exp(-al *x ^2)
  f <- function(x,lam,al) 2 *al *x *(1 -z(x,al)) *(1 +lam -2 *lam *z(x,al))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted reciprocal Weibull distribution == (2020-04-06) ==
## https://www.researchgate.net/publication/339788439_Extended_Reciprocal_Rayleigh_Distribution_Copula_Properties_and_Real_Data_Modeling
transRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be) al /lam *(x /lam) ^(-be -1) *z(x,lam,be) *(1 +al -2 *al *z(x,lam,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Topp-Leone Weibull distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/320226600_The_Transmuted_Topp-Leone_G_Family_of_Distributions_Theory_Characterizations_and_Applications
transTopLeoWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-2 *(x /lam) ^al)
  f <- function(x,lam,al,be,ga) 2 *al *be /lam *(x /lam) ^(al -1) *(1 -z(x,lam,al)) *z(x,lam,al) ^(be -1) *(1 +ga -2 *ga *z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted transmuted-exponential distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
transTransExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -exp(-x /lam)
  f <- function(x,lam,al,be) 1 /lam *(1 +al -2 *al *z(x,lam)) *(1 +be -2 *be *((1 +al) *z(x,lam) -al *z(x,lam) ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted transmuted-Lindley distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
transTransLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) (1 +x) /lam /(1 +lam) *exp(-x /lam) *(1 +al -2 *al *z(x,lam)) *(1 +be -2 *be *((1 +al) *z(x,lam) -al *z(x,lam) ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted transmuted-Rayleigh distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
transTransRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam) 1 -exp(-(x /lam) ^2)
  f <- function(x,lam,al) 2 /lam *(x /lam) *(1 -z(x,lam)) *(1 +al -2 *al *z(x,lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted transmuted-Weibull distribution == (2020-03-13) ==
## https://www.researchgate.net/publication/329034766_The_Transmuted_Transmuted-G_Family_Properties_and_Applications
transTransWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 -exp(-(x /lam) ^ga)
  f <- function(x,lam,al,be,ga) ga /lam *(x /lam) ^(ga -1) *(1 -z(x,lam,ga)) *(1 +al -2 *al *z(x,lam,ga)) *(1 +be -2 *be *((1 +al) *z(x,lam,ga) -al *z(x,lam,ga) ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted 2-parameter Lindley distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
trans2LinF. <- function(x, y = NULL, ext = F, ...) {  # Note: 3 parameters were actually used in the formula; ga -> trans, al, be -> Lin
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) be ^2 /(al +be) *(1 +al *x) *exp(-be *x) *(1 -ga +2 *ga *(al +be +al *be *x) /(al +be) *exp(-be *x))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted U-quadratic distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
transUQuadF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al,be) (be /3) *((x -al) ^3 -(al -be) ^3)
  f <- function(x,al,be,ga) be *(x -al) ^2 *(1 +ga -2 *ga *z(x,al,be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Weibull distribution == (2020-02-22) ==
## https://www.researchgate.net/publication/276474098_The_Beta_Transmuted_Weibull_Distribution
transWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *x ^(be -1) *exp(-al *x ^be) *(1 -ga +2 *ga *exp(-al *x ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Weibull geometric distribution == (2020-06-10) ==
## https://www.researchgate.net/publication/282863150_The_Generalized_Transmuted-G_Family_of_Distributions
transWeiGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al /lam ^al *x ^(al -1) *(1 -be) *z(x,lam,al) /(1 -be *z(x,lam,al)) ^2 *(1 +ga -2 *ga *(1 -z(x,lam,al)) /(1 -be *z(x,lam,al)))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Weibull-Lomax distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/306941849_The_beta_transmuted-H_family_for_lifetime_data
transWeiLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,be,ga) exp(-al *((x /lam) ^be -1) ^ga)
  f <- function(x,lam,al,be,ga,de) al *be *ga /lam *(1 +x /lam) ^(be *ga -1) *(1 +(x /lam) ^(-al)) ^(ga -1) *z(x,lam,al,be,ga) *(1 -de +2 *de *z(x,lam,al,be,ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Weibull Pareto distribution == (2020-04-14) ==
## https://www.researchgate.net/publication/303297526_The_Transmuted_Weibull-Pareto_Distribution
transWeiPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (x /lam) ^al -1
  f <- function(x,lam,al,be,ga) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(be -1) *exp(-z(x,lam,al) ^be) *(1 -ga +2 *ga *exp(-z(x,lam,al) ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Transmuted Weibull-Rayleigh distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/339269602_Properties_and_applications_of_a_transmuted_Weibull-Rayleigh_distribution
transWeiRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga) exp(ga *x ^2 /2) -1
  f <- function(x,al,be,ga,de) al *be *ga *x *(1 +z(x,ga)) *z(x,ga) ^(be -1) *exp(-al *z(x,ga) ^be) *(1 -de +2 *de *exp(-al *z(x,ga) ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Triweight distribution == (2020-01-04) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
triWeightF. <- function(x, y = NULL, ext = F, ...) {  # Used in non-parametirc kenel density estimation
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 35 /32 /abs(lam) *((1 -((x -nu) /lam) ^2)) ^3
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated inverted beta distribution == (2020-08-11) ==
## https://www.researchgate.net/publication/263311157_The_beta-Weibull_geometric_distribution
truncInvtBetaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) ga /beta(al,be) *x ^(al -1) *(1 +x) ^(-al -be)
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated inverted Kumaraswamy exponential distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/337077189_Truncated_Inverted_Kumaraswamy_Generated_Family_of_Distributions_with_Applications
truncInvtKumaExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 2 -exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *(1 -2 ^(-al)) ^(-be) *exp(-x /lam) *z(x,lam) ^(-al -1) *(1 -z(x,lam) ^(-al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated Lomax Fréchet distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/340050085_A_New_Family_of_Upper-Truncated_Distributions_Properties_and_Estimation
truncLomFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be) al /(1 -2 ^(-al)) *be /lam *(x /lam) ^(-be -1) *z(x,lam,be) *(1 +z(x,lam,be)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated Lomax linear failure rate distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/340050085_A_New_Family_of_Upper-Truncated_Distributions_Properties_and_Estimation
truncLomLineFRF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) exp(-be *x -ga /2 *x ^2)
  f <- function(x,al,be,ga) al /(1 -2 ^(-al)) *(be +ga *x) *z(x,be,ga) *(2 -z(x,be,ga)) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated Lomax power function distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/340050085_A_New_Family_of_Upper-Truncated_Distributions_Properties_and_Estimation
truncLomPowFunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al /(1 -2 ^(-al)) *be /lam *(x /lam) ^(be -1) *(1 +(x /lam) ^be) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated Lomax uniform distribution == (2020-04-13) ==
## https://www.researchgate.net/publication/340050085_A_New_Family_of_Upper-Truncated_Distributions_Properties_and_Estimation
truncLomUniF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /(1 -2 ^(-al)) *al /lam *(1 +x /lam) ^(-al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Truncated Pareto distribution == (2020-08-05) ==
## http://www.est.ufmg.br/portal/arquivos/mestrado/dissertacoes/rodolfo_parte2.pdf
truncPareF. <- function(x, y = NULL, ext = F, ...) {  # lam < x < de
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al /lam *(x /lam) ^(-al -1) /(1 -(be /lam) ^(-al))
  lazy_call.(x,y,pLL,f,ext)
}


## Type I half logistic Gompertz distribution == (2020-12-03) ==
## https://www.researchgate.net/publication/342097305_Performance_Rating_of_the_Type_1_Half_Logistic_Gompertz_Distribution_An_Analytical_Approach_2_Generalized_Half_Logistic_Distribution_GHLD
type1HalfLogisGomF. <- function(x, y = NULL, ext = F, ...) {  # Reduced an unnecessary parameter from the original formula
  pLL <- pLL_al_be
  z <- function(x,al,be) exp(-al /be *(exp(be *x) -1))
  f <- function(x,al,be) 2 *al *exp(be *x) *z(x,al,be) *(1 +z(x,al,be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Type II general exponential Lindley distribution == (2020-03-21) ==
## https://www.researchgate.net/publication/333602799_Type_II_General_Exponential_Class_of_Distributions
type2GenExpLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) (1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) *z(x,lam) ^(-al -1) *exp(be *(1 -z(x,lam) ^(-al)))
  lazy_call.(x,y,pLL,f,ext)
}


## Type II general exponential Lomax distribution == (2020-03-21) ==
## https://www.researchgate.net/publication/333602799_Type_II_General_Exponential_Class_of_Distributions
type2GenExpLomF. <- function(x, y = NULL, ext = F, ...) {  # Reduced an unnecessary parameter from the original formula
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(1 +x /lam) ^(al -1) *exp(be *(1 -(1 +x /lam) ^(al)))
  lazy_call.(x,y,pLL,f,ext)
}


## Type II half-logistic Weibull distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/321295370_Kumaraswamy_Half-Logistic_Distribution_Properties_and_Applications
type2HalfLogisWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-x ^be /lam)
  f <- function(x,lam,al,be) 2 *al *be /lam *x ^(be -1) *(1 -z(x,lam,be)) *z(x,lam,be) ^(al -1) *(1 +z(x,lam,be) ^al) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Type II power Topp-Leone inverse exponential distribution == (2020-03-28) ==
## https://www.researchgate.net/publication/338336827_Type_II_Power_Topp-Leone_Generated_Family_of_Distributions_with_Statistical_Inference_and_Applications
type2PowTopLeoInvExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be,ga) 1 -(1 -exp(-be /x)) ^ga
  f <- function(x,al,be,ga) 2 *al *be *ga /x ^2 *exp(-ga /x) *(1 -exp(-ga /x)) ^(al *be -1) *z(x,be,ga) *(1 +z(x,be,ga)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Uniform-prime distribution == (2020-01-02) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
uniPrimeF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /abs(lam) *(1 +(x -nu) /lam) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Unit Gamma distribution == (2019-12-29) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
unitGamF. <- function(x, y = NULL, ext = F, ...) {  # I cannot realize to use this for particle distribution...
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) 1 /gamma(al) *abs(be /lam) *((x -nu) /lam) ^(be -1) *(-be *log((x -nu) /lam)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Upper record of Lomax distribution == (2020-03-19) ==
## https://www.researchgate.net/publication/338478835_Some_statistical_inferences_on_the_upper_record_of_Lomax_distribution
upRecLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(be) *al ^be /lam *(1 +x /lam) ^(-al -1) *(log(1 +x /lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Upper record of Pareto distribution == (2020-03-19) ==
## https://www.researchgate.net/publication/338478835_Some_statistical_inferences_on_the_upper_record_of_Lomax_distribution
upRecPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(be) *al ^be /lam *(x /lam) ^(-al -1) *(log(1 +x /lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Upper record of Singh-Maddala distribution == (2020-03-19) ==
## https://www.researchgate.net/publication/338478835_Some_statistical_inferences_on_the_upper_record_of_Lomax_distribution
upRecSinMadF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *ga ^be /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^al) ^(-ga -1) *(log(1 +(x /lam) ^al)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Upper record of Weibull distribution == (2020-03-19) ==
## https://www.researchgate.net/publication/338478835_Some_statistical_inferences_on_the_upper_record_of_Lomax_distribution
upRecWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) 1 /gamma(be) *al /lam *(x /lam) ^(al *be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## U-quadratic distribution == (2020-08-12) ==
## https://www.researchgate.net/publication/326671139_The_Kumaraswamy_Exponentiated_U-Quadratic_Distribution_Properties_and_Application
uQuadF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al *(x -be) ^2
  lazy_call.(x,y,pLL,f,ext)
}


## Variance-Gamma distribution == (2020-01-05) ==
## https://en.wikipedia.org/wiki/Variance-gamma_distribution
varGamF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_al_be_ga
  f <- function(x,nu,al,be,ga) 1 /sqrt(pi) /gamma(al +1 /2) *(be ^2 -ga ^2) ^(al +1 /2) *besselK(be *abs(x -nu),al) *(abs((x -nu) /2 /be)) ^al *exp(ga *(x -nu))
  lazy_call.(x,y,pLL,f,ext)
}


## von Mises distribution == (2020-01-06) ==
## https://en.wikipedia.org/wiki/Von_Mises_distribution
vonF. <- function (x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_al
  f <- function(x,nu,al) 1 /2 /pi /besselI(al,0) *exp(cos(x -nu))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull distribution == (2020-02-09) ==
## https://en.wikipedia.org/wiki/Weibull_distribution
weibullF. <- function(x, y = NULL, ext = F, ...) {  # (scale) lam > 0, (shape) al > 0; equal to Rogin-Rammler distirbution
  pLL <- pLL_lam_al
  f <- function(x,lam,al) abs(al /lam) *(x /lam) ^(al -1) *exp(-(x /lam) ^al)  # Without abs(), the AIC will be worse
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull alpha power inverted exponential distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/338198214_Theoretical_Analysis_of_the_Weibull_Alpha_Power_Inverted_Exponential_Distribution_Properties_and_Applications
weiAlpPowInvtExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) exp(-(x /lam) ^(-1))
  f <- function(x,lam,al,be,ga) log(al) /(al -1) ^3 *be *ga /lam *(x /lam) ^(-2) *z(x,lam) *al ^z(x,lam) /(al -al ^z(x,lam)) ^2 *((al ^z(x,lam) -1) /(al -al ^z(x,lam))) ^(be -1) *exp(-ga *((al ^z(x,lam)) /(al -al ^z(x,lam))) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull binomial distribution == (2020-08-02) ==
## https://www.academia.edu/10128450/A_compound_class_of_Weibull_and_power_series_distributions?email_work_card=view-paper
weiBiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,ga) 1 +ga *exp(-(x /lam) ^al)
  f <- function(x,lam,al,be,ga) al *be /lam /((1 +ga) ^be -1) *(x /lam) ^(al -1) *(z(x,lam,al,ga) -1) *z(x,lam,al,ga) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Burr XII distribution == (2020-03-13) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwiPyKGcr5boAhXac94KHUaZBroQFjAAegQIARAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F429%2FJDS-1210.pdf&usg=AOvVaw2qxI-uyZ_M3tXAgK19K88g
weiBurr12F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga_de
  z <- function(x,lam,al,de) (1 +(x /lam) ^al) ^de -1
  f <- function(x,lam,al,be,ga,de) al *be *ga *de /lam *(x /lam) ^(al -1) *(1 +(x /lam) ^al) ^(-1) *z(x,lam,al,de) ^(ga -1) *exp(-be *z(x,lam,al,de) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Dagum distribution == (2020-02-24) ==
## https://www.researchgate.net/publication/267449577_The_Weibull-Dagum_Distribution_Properties_and_Applications
weiDagF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 +x ^(-de)/lam
  f <- function(x,lam,al,be,ga) al *be *ga /lam *x ^(ga -1) *z(x,lam,ga) ^(-al *be -1) *(1 -z(x,lam,ga) ^(-be)) ^(-al -1) *exp(-(z(x,lam,ga) ^be -1) ^(-al))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull exponential distribution == (2020-04-12) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
weiExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) exp(x /lam) -1
  f <- function(x,lam,al,be) al *be /lam *(1 +z(x,lam)) *z(x,lam) ^(be -1) *exp(-al *z(x,lam) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull exponentiated exponential Poisson distribution == (2020-03-19) ==
## https://www.researchgate.net/publication/339749792_The_Weibull-G_Poisson_Family_for_Analyzing_Lifetime_Data
weiExpExpPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-x /lam)
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(exp(ga) -1) *(1 -z(x,lam)) *z(x,lam) ^(al *be -1) *(1 -z(x,lam) ^al) ^(-be -1) *exp(-z(x,lam) ^(al *be) /(1 -z(x,lam) ^al) ^be +ga -ga *exp(-z(x,lam) ^(al *be) /(1 -z(x,lam) ^al) ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull extended distribution == (2020-07-30) ==
## https://www.academia.edu/5786493/Log-Weibull_extended_regression_model_Estimation_sensitivity_and_residual_analysis?email_work_card=title
weiExtF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be *(x /lam) ^(al -1) *exp((x /lam) ^al +be *lam *(1 -exp((x /lam) ^al)))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Fréchet distribution == (2020-02-26) ==
## https://www.researchgate.net/publication/290393083_The_Weibull_Frechet_Distribution_and_its_Applications
weiFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(-ga -1) *exp(-be *(x /lam) ^(-ga)) *(1 -exp(-(x /lam) ^(-ga))) ^(-be -1) *exp(-al *(exp((x /lam) ^(-ga)) -1) ^(-be))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull geometric distribution == (2020-05-05) ==
## https://www.academia.edu/38384566/The_Kumaraswamy-transmuted_exponentiated_modified_Weibull_distribution?email_work_card=title
weiGeoF. <- function(x, y = NULL, ext = F, ...) {  # extWei's be --> 1 -be
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp(-(x /lam) ^al)
  f <- function(x,lam,al,be) al *(1 -be) /lam *(x /lam) ^(al -1) *z(x,lam,al) *(1 -be *z(x,lam,al)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Gompertz Makeham distribution == (2020-03-25) ==
## https://www.researchgate.net/publication/338143922_A_Weibull-Gompertz_Makeham_Distribution_with_Properties_and_Application_to_Cancer_Data
weiGomMakF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,al,be,ga) exp(-al *x -be /ga *(exp(ga *x) -1))
  f <- function(x,al,be,ga,de,et) (al +be *exp(ga *x)) *de *et *z(x,al,be,ga) /(1 -z(x,al,be,ga)) *(-log(1 -z(x,al,be,ga))) ^(et -1) *exp(de *(-log(1 -z(x,al,be,ga))) ^et)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull inverse Lomax distribution == (2020-02-26) ==
## https://www.researchgate.net/publication/337941181_The_Weibull-Inverse_Lomax_WIL_distribution_with_Application_on_Bladder_Cancer
weiInvLomF. <- function(x, y = NULL, ext = F, ...) {  # Awfully wrong the original formula was... and I corrected it
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam) 1 +lam /x
  f <- function(x,lam,al,be,ga) al *be *ga *lam /x ^2 *z(x,lam) ^(al -1) *(1 -z(x,lam) ^al) ^(-ga -1) *exp(be *(1 -z(x,lam) ^al) ^(-ga))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/306347030_Weibull_Lindley_distribution
weiLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) ((1 +x /(1 +lam)) *(1 /lam +al ^be *be *x ^(be -1)) -1 /(1 +lam)) *exp(-x /lam -(al *x) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull log-logistic distribution == (2020-06-10) ==
## https://www.academia.edu/11503352/A_NEW_WEIBULL-G_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
weiLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) (1 -(1 +(x /lam) ^ga) ^(-1)) ^(-1)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(x /lam) ^(ga -1) *z(x,lam,ga) *(log(z(x,lam,ga))) ^(be -1) *exp(-al *(log(z(x,lam,ga))) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull log-logistic Poisson distribution == (2020-03-19) ==
## https://www.researchgate.net/publication/339749792_The_Weibull-G_Poisson_Family_for_Analyzing_Lifetime_Data
weiLogLogisPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam /(exp(ga) -1) *(x /lam) ^(al *be -1) *exp(ga -(x /lam) ^(al *be) -ga *exp(-(x /lam) ^(al *be)))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull logarithmic distribution == (2020-08-02) ==
## https://www.academia.edu/10128450/A_compound_class_of_Weibull_and_power_series_distributions?email_work_card=view-paper
weiLogF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) al *be *ga /lam /log(1 -ga) *(x /lam) ^(al -1) /(ga *exp(-x /lam) -1) *exp(-(x /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull logistic distribution == (2020-06-10) ==
## https://www.academia.edu/11503352/A_NEW_WEIBULL-G_FAMILY_OF_DISTRIBUTIONS?email_work_card=title
weiLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 +exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *(1 -1 /z(x,lam)) *(log(z(x,lam))) ^(be -1) *exp(-al *(log(z(x,lam))) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Lomax distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/327130546_The_odd_Lomax_generator_of_distributions_Properties_estimation_and_applications
weiLomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) (1 +x /lam) ^(-al)
  f <- function(x,lam,al,be,ga) al *be *ga /lam *(1 +x /lam) ^(al *be -1) *(1 -z(x,lam,al)) ^(be -1) *exp(-ga *(z(x,lam,al) ^(-1) -1) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull Marshall-Olkin Lindley distribution == (2020-03-14) ==
## https://www.researchgate.net/publication/338390107_The_Weibull_Marshall-Olkin_Lindley_Distribution_Properties_and_Estimation
weiMaolLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) 1 -(1 +x /(1 +lam)) *exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam /(1 +lam) *(1 +x) *exp(-x /lam) *(1 -z(x,lam))^(-2) *(al *z(x,lam) /(1 -z(x,lam)) +1) ^(-1) *(log(al *z(x,lam) /(1 -z(x,lam)) +1)) ^(be -1) *exp(-(log(al *z(x,lam) /(1 -z(x,lam)) +1)) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull Minimum Extreme Value distribution ==  https://docs.scipy.org/doc/scipy/reference/tutorial/stats/continuous_weibull_min.html
weiMinF. <- function(x, y = NULL, ext = F, ...) {  # == (2020-01-07) ==
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) al /lam *((x -nu) /lam) ^(al -1) *exp(-((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull moment exponential distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/329058286_The_Weibull-Moment_Exponential_Distribution_Properties_Characterization_and_Applications
weiMomExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam) (1 +x /lam) *exp(-x /lam)
  f <- function(x,lam,al,be) al *be /lam *x /lam *exp(-x /lam) *(1 -z(x,lam)) ^(be -1) /z(x,lam) ^(be +1) *exp(-al *((1 -z(x,lam)) /z(x,lam)) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-normal distribution == (2020-03-13) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwiPyKGcr5boAhXac94KHUaZBroQFjAAegQIARAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F429%2FJDS-1210.pdf&usg=AOvVaw2qxI-uyZ_M3tXAgK19K88g
## completely the same; https://www.academia.edu/38404907/The_Weimal_Distribution_Its_Properties_and_Applications.pdf?email_work_card=title
## which was published in 2017 and called 'Weimal dist', but the weiNorm was invented in 2014 early...
weiNormF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) stcum((x -nu) /lam)
  f <- function(x,nu,lam,al,be) al *be /lam *stnorm((x -nu) /lam) *z(x,nu,lam) ^(be -1) /(1 -z(x,nu,lam)) ^(be +1) *exp(-al *(z(x,nu,lam) /(1 -z(x,nu,lam))) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Pareto distribution == (2020-02-20) ==
## https://www.researchgate.net/publication/296259233_The_Exponentiated_Weibull-Pareto_Distribution_with_Application
weiPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) (x /lam) ^al -1
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(al -1) *z(x,lam,al) ^(be -1) *exp(-z(x,lam,al) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Poisson distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/318638596_A_new_generalized_Poisson_Lindley_distribution
weiPoiF. <- function(x, y = NULL, ext = F, ...) {  # a mixture of exp(a) & gamma(2,a)
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) al *be *ga *(exp(ga) -1) *x ^(be -1) *exp(-al *x ^be +ga *exp(-al *x ^be))
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull power function distribution == (2020-05-18) ==
## https://www.academia.edu/9997742/The_Weibull-Power_Function_Distribution_With_Applications?email_work_card=title
weiPowFunF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) x ^de /(ga ^de -x ^de)
  f <- function(x,al,be,ga,de) al *be *ga ^de *de *x ^(-de -1) *z(x,ga,de) ^(be +1) *exp(-al *z(x,ga,de) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Rayleigh distribution == (2020-03-27) ==
## https://www.researchgate.net/publication/339269602_Properties_and_applications_of_a_transmuted_Weibull-Rayleigh_distribution
weiRayF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,ga) exp(ga *x ^2 /2) -1
  f <- function(x,al,be,ga) al *be *ga *x *(1 +z(x,ga)) *z(x,ga) ^(be -1) *exp(-al *z(x,ga) ^be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull uniform distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
weiUniF. <- function(x, y = NULL, ext = F, ...) {  # aka Phani
  pLL <- pLL_al_be_ga
  z <- function(x,al) x /(al -x)
  f <- function(x,al,be,ga) al *be *ga /x ^2 *z(x,al) ^(ga +1) *exp(-be *z(x,al) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Weibull-Weibull distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
weiWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  f <- function(x,lam,al,be,ga) exp(-al *(-log(1 -exp(-x ^be /lam))) ^ga)
  lazy_call.(x,y,pLL,f,ext)
}


## Weighted exponential distribution == (2020-12-21) ==
## https://www.researchgate.net/publication/221667925_Parameter_Estimation_of_Type-II_Hybrid_Censored_Weighted_ExponentialDistribution
weightExpF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) (1 +1 /al) /lam *exp(-x /lam) *(1 -exp(-al *x /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Weighted Feller-Pareto distribution == (2020-04-15) ==
## https://pdfs.semanticscholar.org/0a77/0610e3f18cd9fb6bfeed6a9fcc7dcf19084f.pdf?_ga=2.83474067.465332696.1586924775-1525756084.1586924775
weightFellPareF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be_ga_de
  f <- function(x,nu,lam,al,be,ga,de) 1 /beta(al+be/ga, de -be/ga) *ga /lam *((x -nu) /lam) ^(al *ga +be -1) *(1 +((x -nu) /lam) ^ga) ^(-al -de)
  lazy_call.(x,y,pLL,f,ext)
}


## Weighted Lindley distribution == (2020-03-15) ==
## https://www.researchgate.net/publication/306347030_Weibull_Lindley_distribution
weightLinF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 1 /gamma(al) /lam /(1 +al *lam) *(x /lam) ^(al -1) *(1 +x) *exp(-x /lam)
  lazy_call.(x,y,pLL,f,ext)
}


## Weighted modified Weibull distribution == (2020-03-12) ==
## https://www.researchgate.net/publication/326368336_Weighted_Modified_Weibull_Distribution
weightModWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-x /lam -x ^be /lam)
  f <- function(x,lam,al,be) log(al) /lam /(al -1) *(1 +be *x ^(be -1)) *(1 -z(x,lam,be)) *al ^z(x,lam,be)
  lazy_call.(x,y,pLL,f,ext)
}


## Weighted Weibull distribution == (2020-02-23) ==
## https://www.researchgate.net/publication/315480980_LIFE_LENGTH_OF_COMPONENTS_ESTIMATES_WITH_BETA-WEIGHTED_WEIBULL_DISTRIBUTION
weightWeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) (al +1) /al *be /lam *x ^(be -1) *exp(-x ^be /lam) *(1 -exp(-al *x ^be /lam))
  lazy_call.(x,y,pLL,f,ext)
}


## Wilson-Hilferty distribution == (2020-01-01) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
wilHilF. <- function(x, y = NULL, ext = F, ...) {  # Not good prediction ...
  pLL <- pLL_lam_al
  f <- function(x,lam,al) 3 /gamma(al) /abs(al) *(x /lam) ^(3 *al -1) *exp(-(x /lam) ^3)
  lazy_call.(x,y,pLL,f,ext)
}


## Xgamma-geometric distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/335161460_The_quasi_xgamma-geometric_distribution_with_application_in_medicine
xgamGeoF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) (1 -al) *be ^2 /(1 +be) *(1 +be ^2 *x ^2 /2) *exp(-be *x) *(1 -(al *exp(-be *x) *(1 +be +be *x +be ^2 *x ^2 /2)) /(1 +be)) ^(-2)
  lazy_call.(x,y,pLL,f,ext)
}


## Xgamma-Poisson distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/330675442_The_quasi_xgamma-Poisson_distribution_Properties_and_Application_Istatistik_Journal_of_the_Turkish_Statistical_Assocation
xgamPoiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) al ^2 *be /(1 +al) /(exp(be) -1) *(1 +al *x ^2 /2) *exp(be /(1 +al) *exp(-al *x) *(1 +al +al *x +al ^2 *x ^2 /2) - al *x)
  lazy_call.(x,y,pLL,f,ext)
}


## XTG (Xie, Tang, and Goh) distribution == (2020-07-25) ==
## https://www.researchgate.net/publication/265878815_The_Beta_Extended_Weibull_Family
xtgF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,al) exp((x /lam) ^al)
  f <- function(x,lam,al,be) al *be *(x /lam) ^(al -1) *z(x,lam,al) *exp(-be *lam *(z(x,lam,al) -1))
  lazy_call.(x,y,pLL,f,ext)
}


## Zero truncated Poisson Burr X-Lomax distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
zeroTruncPoiBurr10LomF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-((1 +x /lam) ^al -1) ^2)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(1 +x /lam) ^(2 *al -1) /(1 -exp(-be)) *(1 -(1 +x /lam) ^(-al)) *exp(-be *z(x,lam,al) ^ga) *(1 -z(x,lam,al)) *z(x,lam,al) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Zero truncated Poisson Burr X-Weibull distribution == (2020-03-11) ==
## https://www.researchgate.net/publication/330207465_The_zero_truncated_Poisson_Burr_X_family_of_distributions_with_properties_characterizations_applications_and_validation_test
zeroTruncPoiBurr10WeiF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 -exp(-exp((x /lam) ^al) -1)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *(x /lam) ^(al -1) /(1 -exp(-be)) *exp((x /lam) ^al) ^2 *(1 -exp(-(x /lam) ^al)) *exp(-be *z(x,lam,al) ^ga) *(1 -z(x,lam,al)) *z(x,lam,al) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Zografos-Balakrishnan Burr XII distribution == (2020-01-14) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=20&cad=rja&uact=8&ved=2ahUKEwj3u421yoLnAhXJP3AKHXkxBDUQFjATegQICRAB&url=http%3A%2F%2Fwww.jds-online.com%2Ffile_download%2F624%2F142%25E5%25AE%258C%25E6%2588%25901001.pdf&usg=AOvVaw3sFiSsomR3CCZUTx_gzwPy
zbb12F. <- function(x, y = NULL, ext = F, ...) {  # Sister of gamma Burr3, log-gamma Burr3, Ristić-Balakrishnan Burr12, ZB Burr12
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,ga) 1 +(x /lam) ^ga
  f <- function(x,lam,al,be,ga) 1 /gamma(al) *ga *be ^al /x *(z(x,lam,ga) -1) *z(x,lam,ga) ^(-be -1) *(log(z(x,lam,ga))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Zografos-Balakrishnan-Fréchet distribution == (2020-03-08) ==
## https://www.researchgate.net/publication/330169129_A_New_Statistical_Model_for_Extreme_Values_Properties_and_Applications
zbFreF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 -exp(-(x /lam) ^(-be))
  f <- function(x,lam,al,be) 1 /gamma(al) *be /lam *(x /lam) ^(-be -1) *(1 -z(x,lam,be)) *(-log(z(x,lam,be))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Zografos-Balakrishnan log-logstic distribution == (2020-01-24) ==
## https://www.researchgate.net/publication/269872178_The_Zografos-Balakrishnan_Log-Logistic_Distribution_Properties_and_Applications
zbLogLogisF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  z <- function(x,lam,be) 1 +(x /lam) ^be
  f <- function(x,lam,al,be) 1 /gamma(al) *be /lam *(x /lam) ^(be -1) *z(x,lam,be) ^(-2) *(log(z(x,lam,be))) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 2-parameter Burr X Lomax distribution == (2020-03-05) ==
## https://www.researchgate.net/publication/336568244_A_New_Extension_of_the_Lomax_Distribution_with_Properties_and_Applications_to_Failure_Times_Data
burr10Lom2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al
  z <- function(x,lam,al) 1 -(1 +x /lam) ^(-al)
  f <- function(x,lam,al) 2 *al /lam *(1 +x /lam) ^(-al -1) *z(x,lam,al) *(1 -z(x,lam,al)) ^(-3) *exp(-(z(x,lam,al) /(1 -z(x,lam,al))) ^2)
  lazy_call.(x,y,pLL,f,ext)
}


## 2-parameter lifetime distribution == (2020-01-07) ==
## https://www.vosesoftware.com/riskwiki/Lifetime2distribution.php
life2F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be
  f <- function(x,al,be) (al +be *x) *exp(-(al *x +be /2 *x ^2))
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter beta Lindley distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/303208805_The_exponentiated_generalized_extended_exponential_distribution
betaLin3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,be) (1 +be +be *x) *exp(-be *x)
  f <- function(x,al,be,ga) 1 /beta(al,ga) *be ^2 /(1 +be)^(al +be -1) *(1 +x) /(1 +be +be *x) *z(x,be) ^ga *(1 +be -z(x,be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter kappa distribution == (2020-02-29) ==
## https://www.researchgate.net/publication/332971234_Modified_Beta_Linear_Exponential_Distribution_with_Hydrologic_Applications
kappa3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be
  f <- function(x,lam,al,be) al *be /lam *(x /lam) ^(be -1) *(al +(x /lam) ^(al *be)) ^(-(al +1) /al)
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter lifetime distribution == (2020-02-09) ==
## https://www.vosesoftware.com/riskwiki/Lifetime3distribution.php
life3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) (al +be *x +ga*x ^2) *exp(-(al *x + be *x ^2 /2 +ga *x ^3 /3))
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter log-hyperbolic distribution == (2020-01-27) ==
## https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwjc9NGnhOvgAhXLG6YKHeu5BfYQFjAAegQIBBAC&url=https%3A%2F%2Fwww.researchgate.net%2Fprofile%2FFranco_Concli%2Fpost%2FDoes_anybody_know_data_for_the_sauter_diameter_for_newtonian_drops_in_a_inelastic_power-law_fluid_Im_looking_for_data_in_a_stirred_vessel%2Fattachment%2F59d6274e79197b807798598b%2FAS%253A325311913840640%25401454571812030%2Fdownload%2FBabinsky2002-ModelingDropSizeDistributions.pdf&usg=AOvVaw0dpvUVX1DPMHSn4KxTkmRI
## NOTE: modified Bessel function of the second kind = the third kind (https://en.wikipedia.org/wiki/Bessel_function)
logHype3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_al_be
  p <- function(al,be) al /(al ^2 *cos(be) ^2 -sin(be) ^2)
  q <- function(al,be) (al ^2 +1) *sin(be) *cos(be) /(al ^2 *cos(be) ^2 -sin(be) ^2)
  r <- function(al,be) sqrt(al ^2 *cos(be) ^2 -sin(be) ^2)
  A <- function(al,be) 1 /2 /p(al,be) /r(al,be) *sqrt(p(al,be) ^2 -q(al,be) ^2) /besselK(1,r(al,be) *sqrt(p(al,be) ^2 -q(al,be) ^2))
  mu0 <- function(al,be) -q(al,be) *r(al,be) /sqrt(p(al,be) ^2 -q(al,be) ^2)
  f <- function(x,nu,al,be)  A(al,be) *exp(-p(al,be) *sqrt(r(al,be) ^2 +(x -nu +mu0(al,be)) ^2) -q(al,be) *(x -nu +mu0(al,be)))
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter student distribution == (2020-01-25) ==
## https://www.vosesoftware.com/riskwiki/Student3distribution.php
student3F. <- function(x, y = NULL, ext = F, ...) {  # integer n := al
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) gamma((al +1) /2) /gamma(al /2) /lam /sqrt(pi *(al -2)) *(1 +((x -nu) /lam) ^2 /(al -2)) ^(-(al +1) /2)
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter Weibull distribution == (2020-02-09) ==
## https://www.vosesoftware.com/riskwiki/Weibull3distribution.php
weibull3F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al
  f <- function(x,nu,lam,al) abs(al /lam) *((x -nu) /lam) ^(al -1) *exp(-((x -nu) /lam) ^al)
  lazy_call.(x,y,pLL,f,ext)
}


## 3-parameter Zografos-Balakrishnan Burr XII distribution == (2020-02-27) ==
## https://www.researchgate.net/publication/323587124_Zografos-Balakrishnan_Burr_XII_Distribution_Regression_Modeling_and_Applications
zbBurr123F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  f <- function(x,al,be,ga) be *ga /gamma(al) *x ^(be -1) *(1 +x ^be) ^(-ga -1) *(ga *log(1 +x ^be)) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter beta distribution == (2020-01-06) ==
## https://www.vosesoftware.com/riskwiki/Beta4distribution.php
beta4F. <- function(x, y = NULL, ext = F, ...) {  # I think the expression of 4 parameters is a gimmick or misleading...
  pLL <- pLL_al_be
  f <- function(x,al,be) 1 /beta(al,be) *(x -min(x)) ^(al -1) *(max(x) -x) ^(be -1) /(max(x) -min(x)) ^(al +be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter beta-Dagum distribution == (2020-08-02) ==
## https://www.sci-hub.tw/10.1007/s00477-016-1226-6
betaDag4F. <- function(x, y = NULL, ext = F, ...) {  # betaDag4: -al, betaSinMad4: +al
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +x ^(-al) /lam
  f <- function(x,lam,al,be,ga) al *be *ga /lam *x ^(-al -1) *z(x,lam,al) ^(-be -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter beta Gumbel distribution == (2020-03-03) ==
## https://www.researchgate.net/publication/273061479_The_Exponentiated_Generalized_Gumbel_Distribution
betaGum4F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_nu_lam_al_be
  z <- function(x,nu,lam) exp(-(x -nu) /lam)
  f <- function(x,nu,lam,al,be) 1 /beta(al,be) /lam *exp(-al *exp(-(x -nu) /lam)) *z(x,nu,lam) *(1 -z(x,nu,lam)) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter beta-Singh-Maddala distribution == (2020-08-02) ==
## https://www.sci-hub.tw/10.1007/s00477-016-1226-6
betaSinMad4F. <- function(x, y = NULL, ext = F, ...) {  # betaDag4: -al, betaSinMad4: +al
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al) 1 +x ^(+al) /lam
  f <- function(x,lam,al,be,ga) al *be *ga /lam *x ^(+al -1) *z(x,lam,al) ^(-be -1) *(1 -z(x,lam,al) ^(-be)) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter kappa distribution == (2020-03-01) ==
## https://www.researchgate.net/publication/332971234_Modified_Beta_Linear_Exponential_Distribution_with_Hydrologic_Applications
kappa4F. <- function(x, y = NULL, ext = F, ...) {  # Remake 3-parameter kappa to add location nu
  pLL <- pLL_nu_lam_al_be
  f <- function(x,nu,lam,al,be) al *be /lam *((x -nu) /lam) ^(be -1) *(al +((x -nu) /lam) ^(al *be)) ^(-(al +1) /al)
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter Kumaraswamy distribution == (2020-01-06) ==
## https://www.vosesoftware.com/riskwiki/Kumaraswamy4distribution.php
kuma4F. <- function(x, y = NULL, ext = F, ...) {  # I think the expression of 4 parameters is a gimmick or misleading...
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be *rescaling.(x) ^(al -1) *(1 -rescaling.(x) ^al) ^(be -1) /(max(x) -min(x))
  lazy_call.(x,y,pLL,f,ext)
}


## 4-parameter Topp-Leone Dagum distribution == (2020-03-20) ==
## https://www.researchgate.net/publication/338823174_Topp-Leone_Dagum_Distribution_Properties_and_its_Applications
topLeoDag4F. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_lam_al_be_ga
  z <- function(x,lam,al,be) 1 -(1 +x ^(-al) /lam) ^(-be)
  f <- function(x,lam,al,be,ga) 2 *al *be *ga /lam *x ^(-al -1) *(1 +x ^(-al) /lam) ^(-be -1) *z(x,lam,al,be) *(1 -z(x,lam,al,be) ^2) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Impossible fitting (0<x<1 fittting)
## Arcsine distribution == (2020-01-03) ==
## https://threeplusone.com/pubs/FieldGuide.pdf
arcsineF. <- function(x, y = NULL, ext = F, ...) {  # I cannot realize to use this for particle distribution...
  pLL <- pLL_nu_lam
  f <- function(x,nu,lam) 1 /pi /abs(lam) *(((x -nu) /lam) *(1 -(x -nu) /lam)) ^(-1 /2)
  lazy_call.(x,y,pLL,f,ext)
}


## Exponentiated Kumaraswamy distribution == (2020-03-10) ==
## https://www.researchgate.net/publication/320226600_The_Transmuted_Topp-Leone_G_Family_of_Distributions_Theory_Characterizations_and_Applications
expKumaF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga
  z <- function(x,al) 1 -x ^al
  f <- function(x,al,be,ga) al *be *ga *x ^(al -1) *z(x,al) ^(be -1) *(1 -z(x,al) ^be) ^(ga -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Extended Weibull-Kumaraswamy distribution == (2020-04-10) ==
## https://www.researchgate.net/publication/324138109_A_NEW_FAMILY_OF_THE_CONTINUOUS_DISTRIBUTIONS_THE_EXTENDED_WEIBULL-G_FAMILY
extWeiKumaF. <- function(x, y = NULL, ext = F, ...) {  # 0 < x < 1
  pLL <- pLL_al_be_ga_de_et
  z <- function(x,de,et) (1 -x ^de) ^(-et) -1
  h <- function(x,al,be,ga,de,et) exp(-al *z(x,de,et) ^be *exp(-ga /z(x,de,et)) -ga /z(x,de,et))
  f <- function(x,al,be,ga,de,et) al *de *et *x ^(de -1) *(1 -x ^de) ^{3 *et -1} *(be +ga /z(x,de,et)) *z(x,de,et) ^(be -1) *h(x,al,be,ga,de,et)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy distribution == (2020-01-02) ==
## https://pdfs.semanticscholar.org/cf53/f8c9dfa71bf17649feb86af5d7d8d294b06a.pdf
kumaF. <- function (x, y = NULL, ext = F, ...) {  # I cannot realize to use this for particle distribution...
  pLL <- pLL_al_be
  f <- function(x,al,be) al *be *x ^(be -1) *(1 -x ^be) ^(al -1)
  lazy_call.(x,y,pLL,f,ext)
}


## Kumaraswamy inverse Gaussian distribution == (2020-08-16) ==
## https://www.researchgate.net/publication/278787377_New_defective_models_based_on_the_Kumaraswamy_family_of_distributions_with_application_to_cancer_data_sets
kumaInvGauF. <- function(x, y = NULL, ext = F, ...) {
  pLL <- pLL_al_be_ga_de
  z <- function(x,ga,de) stcum((-1 +de *x) /sqrt(ga *x)) +exp(2 *de /ga) *stcum((-1 -de *x) /sqrt(ga *x))
  f <- function(x,al,be,ga,de) al *be /sqrt(2 *pi *ga *x ^3) *exp(-(1 -de *x) ^2 /2 /ga /x) *z(x,ga,de) ^(al -1) *(1 -z(x,ga,de) ^al) ^(be -1)
  lazy_call.(x,y,pLL,f,ext)
}


## END ##
