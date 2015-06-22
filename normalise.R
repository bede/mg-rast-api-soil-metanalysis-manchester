# setwd('/Users/Bede/Dropbox/Shared/Soil\ Metanalyses\ Manchester/data/MG-RAST/')

rousk <- read.csv(file='output/rousk_ph_gradient_otu.csv', row.names=1)
rousk_prop <- prop.table(as.matrix(rousk), 2)
rousk_prop[is.na(rousk_prop)] <- 0
write.csv(rousk_prop, file = 'output/rousk_ph_gradient_otu.csv')

lauber <- read.csv(file='output/lauber_88_soils_otu.csv', row.names=1)
lauber_prop <- prop.table(as.matrix(lauber), 2)
lauber_prop[is.na(lauber_prop)] <- 0
write.csv(lauber_prop, file = 'output/lauber_88_soils_otu.csv')

eilers <- read.csv(file='output/eilers_soils_otu.csv', row.names=1)
eilers_prop <- prop.table(as.matrix(eilers), 2)
eilers_prop[is.na(eilers_prop)] <- 0
write.csv(eilers_prop, file = 'output/eilers_soils_otu.csv')
