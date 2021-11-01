##Extraversion Score
wm.vol = wmparc.vol$CerebralWhiteMatterVol
fusiform.vol = wmparc.vol$wm.lh.fusiform 
inftemp.vol = wmparc.vol$wm.lh.inferiortemporal
suppar.vol = wmparc.vol$wm.lh.superiorparietal 
cuneus.vol = wmparc.vol$wm.lh.cuneus

##Male-Female Score
frontalp.lh.vol = aparc_stats.lh$lh_frontalpole_volume 
frontalp.rh.vol = aparc_stats$rh_frontalpole_volume 
wm.vol = wmparc.vol$CerebralWhiteMatterVole
locc.lh.vol = aparc_stats.lh$lh_lateraloccipital_thickness


##Mathematical Score
hipp.lh.gm = aseg.vol$Left.Hippocampus
hipp.rh.gm = aseg.vol$Right.Hippocampus
inffro.rh.gm = aparc.vol.rh$rh_parsorbitalis_volume
mtemp.rh.gm = aparc.vol.rh$rh_middletemporal_volume

####Scoring
extraversion.items <- cbind(wm.vol, fusiform.vol, inftemp.vol, suppar.vol, cuneus.vol)
scaleKey1 <- c(-1,-1,-1,-1,-1)
library(psych)
extraversion.results <- scoreItems(keys = scaleKey1, extraversion.items,
                                    totals = FALSE, missing=FALSE)
extraversion.results
extraversion.results$score

mf.items <- cbind(frontalp.lh.vol, frontalp.rh.vol, wm.vol, locc.lh.vol)
scaleKey2 <- c(1,1,-1,1)
mf.results <- scoreItems(keys = scaleKey2, mf.items, totals = FALSE, missing=FALSE)

mf.results
mf.results$scores

math.items <- cbind(hipp.lh.gm, hipp.rh.gm, inffro.rh.gm, mtemp.rh.gm)
scaleKey3 <- c(1,1,1,1)
math.results <- scoreItems(keys = scaleKey3, math.items, totals = F, missing = F)

math.results
math.results$scores
