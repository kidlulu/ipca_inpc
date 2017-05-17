rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201201Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201201Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201201Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201201Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201201 <- rbind(mensal,acum,acum12,peso)
inpc201201$referencia <- 201201
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201202Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201202Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201202Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201202Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201202 <- rbind(mensal,acum,acum12,peso)
inpc201202$referencia <- 201202
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201203Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201203Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201203Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201203Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201203 <- rbind(mensal,acum,acum12,peso)
inpc201203$referencia <- 201203
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201204Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201204Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201204Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201204Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201204 <- rbind(mensal,acum,acum12,peso)
inpc201204$referencia <- 201204
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201205Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201205Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201205Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201205Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201205 <- rbind(mensal,acum,acum12,peso)
inpc201205$referencia <- 201205
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201206Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201206Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201206Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201206Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201206 <- rbind(mensal,acum,acum12,peso)
inpc201206$referencia <- 201206
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201207Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201207Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201207Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201207Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201207 <- rbind(mensal,acum,acum12,peso)
inpc201207$referencia <- 201207
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201208Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201208Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201208Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201208Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201208 <- rbind(mensal,acum,acum12,peso)
inpc201208$referencia <- 201208
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201209Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201209Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201209Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201209Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201209 <- rbind(mensal,acum,acum12,peso)
inpc201209$referencia <- 201209
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201210Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201210Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201210Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201210Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201210 <- rbind(mensal,acum,acum12,peso)
inpc201210$referencia <- 201210
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201211Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201211Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201211Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201211Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201211 <- rbind(mensal,acum,acum12,peso)
inpc201211$referencia <- 201211
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201212Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201212Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201212Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/inpc_201212Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201212 <- rbind(mensal,acum,acum12,peso)
inpc201212$referencia <- 201212
rm(mensal,acum,acum12,peso)
inpc2012 <- rbind(inpc201201,inpc201202,inpc201203,inpc201204,inpc201205,inpc201206,inpc201207,inpc201208,inpc201209,inpc201210,inpc201211,inpc201212)
write.table(inpc2012, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc2012.csv", row.names = FALSE)
rm(list=ls())
rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201301Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201301Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201301Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201301Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201301 <- rbind(mensal,acum,acum12,peso)
inpc201301$referencia <- 201301
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201302Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201302Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201302Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201302Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201302 <- rbind(mensal,acum,acum12,peso)
inpc201302$referencia <- 201302
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201303Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201303Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201303Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201303Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201303 <- rbind(mensal,acum,acum12,peso)
inpc201303$referencia <- 201303
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201304Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201304Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201304Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201304Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201304 <- rbind(mensal,acum,acum12,peso)
inpc201304$referencia <- 201304
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201305Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201305Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201305Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201305Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201305 <- rbind(mensal,acum,acum12,peso)
inpc201305$referencia <- 201305
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201306Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201306Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201306Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201306Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201306 <- rbind(mensal,acum,acum12,peso)
inpc201306$referencia <- 201306
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201307Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201307Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201307Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201307Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201307 <- rbind(mensal,acum,acum12,peso)
inpc201307$referencia <- 201307
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201308Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201308Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201308Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201308Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201308 <- rbind(mensal,acum,acum12,peso)
inpc201308$referencia <- 201308
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201309Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201309Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201309Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201309Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201309 <- rbind(mensal,acum,acum12,peso)
inpc201309$referencia <- 201309
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201310Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201310Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201310Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201310Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201310 <- rbind(mensal,acum,acum12,peso)
inpc201310$referencia <- 201310
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201311Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201311Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201311Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201311Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201311 <- rbind(mensal,acum,acum12,peso)
inpc201311$referencia <- 201311
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201312Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 440)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=440)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201312Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 440)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=440)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201312Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 440)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=440)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/inpc_201312Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 440)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=440)
peso$tp_dado <- "4_peso"
inpc201312 <- rbind(mensal,acum,acum12,peso)
inpc201312$referencia <- 201312
rm(mensal,acum,acum12,peso)
inpc2013 <- rbind(inpc201301,inpc201302,inpc201303,inpc201304,inpc201305,inpc201306,inpc201307,inpc201308,inpc201309,inpc201310,inpc201311,inpc201312)
write.table(inpc2013, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc2013.csv", row.names = FALSE)
rm(list=ls())
rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201401Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201401Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201401Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201401Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201401 <- rbind(mensal,acum,acum12,peso)
inpc201401$referencia <- 201401
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201402Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201402Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201402Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201402Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201402 <- rbind(mensal,acum,acum12,peso)
inpc201402$referencia <- 201402
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201403Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201403Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201403Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201403Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201403 <- rbind(mensal,acum,acum12,peso)
inpc201403$referencia <- 201403
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201404Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201404Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201404Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201404Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201404 <- rbind(mensal,acum,acum12,peso)
inpc201404$referencia <- 201404
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201405Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201405Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201405Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201405Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201405 <- rbind(mensal,acum,acum12,peso)
inpc201405$referencia <- 201405
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201406Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201406Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201406Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201406Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201406 <- rbind(mensal,acum,acum12,peso)
inpc201406$referencia <- 201406
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201407Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201407Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201407Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201407Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201407 <- rbind(mensal,acum,acum12,peso)
inpc201407$referencia <- 201407
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201408Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201408Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201408Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201408Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201408 <- rbind(mensal,acum,acum12,peso)
inpc201408$referencia <- 201408
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201409Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201409Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201409Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201409Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201409 <- rbind(mensal,acum,acum12,peso)
inpc201409$referencia <- 201409
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201410Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201410Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201410Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201410Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201410 <- rbind(mensal,acum,acum12,peso)
inpc201410$referencia <- 201410
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201411Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201411Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201411Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201411Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201411 <- rbind(mensal,acum,acum12,peso)
inpc201411$referencia <- 201411
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201412Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201412Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201412Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/inpc_201412Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201412 <- rbind(mensal,acum,acum12,peso)
inpc201412$referencia <- 201412
rm(mensal,acum,acum12,peso)
inpc2014 <- rbind(inpc201401,inpc201402,inpc201403,inpc201404,inpc201405,inpc201406,inpc201407,inpc201408,inpc201409,inpc201410,inpc201411,inpc201412)
write.table(inpc2014, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc2014.csv", row.names = FALSE)
rm(list=ls())
rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201501Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201501Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201501Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201501Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201501 <- rbind(mensal,acum,acum12,peso)
inpc201501$referencia <- 201501
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201502Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201502Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201502Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201502Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201502 <- rbind(mensal,acum,acum12,peso)
inpc201502$referencia <- 201502
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201503Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201503Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201503Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201503Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201503 <- rbind(mensal,acum,acum12,peso)
inpc201503$referencia <- 201503
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201504Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201504Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201504Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201504Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201504 <- rbind(mensal,acum,acum12,peso)
inpc201504$referencia <- 201504
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201505Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201505Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201505Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201505Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201505 <- rbind(mensal,acum,acum12,peso)
inpc201505$referencia <- 201505
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201506Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201506Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201506Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201506Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201506 <- rbind(mensal,acum,acum12,peso)
inpc201506$referencia <- 201506
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201507Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201507Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201507Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201507Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201507 <- rbind(mensal,acum,acum12,peso)
inpc201507$referencia <- 201507
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201508Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201508Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201508Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201508Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201508 <- rbind(mensal,acum,acum12,peso)
inpc201508$referencia <- 201508
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201509Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201509Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201509Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201509Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201509 <- rbind(mensal,acum,acum12,peso)
inpc201509$referencia <- 201509
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201510Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201510Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201510Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201510Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201510 <- rbind(mensal,acum,acum12,peso)
inpc201510$referencia <- 201510
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201511Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201511Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201511Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201511Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201511 <- rbind(mensal,acum,acum12,peso)
inpc201511$referencia <- 201511
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201512Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201512Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201512Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/inpc_201512Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201512 <- rbind(mensal,acum,acum12,peso)
inpc201512$referencia <- 201512
rm(mensal,acum,acum12,peso)
inpc2015 <- rbind(inpc201501,inpc201502,inpc201503,inpc201504,inpc201505,inpc201506,inpc201507,inpc201508,inpc201509,inpc201510,inpc201511,inpc201512)
write.table(inpc2015, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc2015.csv", row.names = FALSE)
rm(list=ls())
rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201601Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201601Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201601Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201601Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201601 <- rbind(mensal,acum,acum12,peso)
inpc201601$referencia <- 201601
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201602Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201602Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201602Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201602Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201602 <- rbind(mensal,acum,acum12,peso)
inpc201602$referencia <- 201602
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201603Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201603Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201603Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201603Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201603 <- rbind(mensal,acum,acum12,peso)
inpc201603$referencia <- 201603
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201604Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201604Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201604Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201604Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201604 <- rbind(mensal,acum,acum12,peso)
inpc201604$referencia <- 201604
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201605Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201605Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201605Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201605Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201605 <- rbind(mensal,acum,acum12,peso)
inpc201605$referencia <- 201605
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201606Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201606Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201606Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201606Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201606 <- rbind(mensal,acum,acum12,peso)
inpc201606$referencia <- 201606
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201607Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201607Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201607Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201607Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201607 <- rbind(mensal,acum,acum12,peso)
inpc201607$referencia <- 201607
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201608Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201608Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201608Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201608Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201608 <- rbind(mensal,acum,acum12,peso)
inpc201608$referencia <- 201608
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201609Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201609Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201609Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201609Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201609 <- rbind(mensal,acum,acum12,peso)
inpc201609$referencia <- 201609
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201610Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201610Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201610Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201610Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201610 <- rbind(mensal,acum,acum12,peso)
inpc201610$referencia <- 201610
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201611Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201611Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201611Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201611Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201611 <- rbind(mensal,acum,acum12,peso)
inpc201611$referencia <- 201611
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201612Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201612Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201612Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/inpc_201612Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201612 <- rbind(mensal,acum,acum12,peso)
inpc201612$referencia <- 201612
rm(mensal,acum,acum12,peso)
inpc2016 <- rbind(inpc201601,inpc201602,inpc201603,inpc201604,inpc201605,inpc201606,inpc201607,inpc201608,inpc201609,inpc201610,inpc201611,inpc201612)
write.table(inpc2016, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc2016.csv", row.names = FALSE)
rm(list=ls())
rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201701Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201701Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201701Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201701Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201701 <- rbind(mensal,acum,acum12,peso)
inpc201701$referencia <- 201701
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201702Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201702Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201702Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201702Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201702 <- rbind(mensal,acum,acum12,peso)
inpc201702$referencia <- 201702
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201703Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201703Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201703Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201703Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201703 <- rbind(mensal,acum,acum12,peso)
inpc201703$referencia <- 201703
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201704Subitem.xls", 
                     sheet = "MENSAL SUBITEM INPC(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 446)
mensal <- mensal[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201704Subitem.xls", 
                   sheet = "ACUM SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 446)
acum <- acum[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201704Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM INPC(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 446)
acum12 <- acum12[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/inpc_201704Subitem.xls", 
                   sheet = "PESOS SUBITEM INPC(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 446)
peso <- peso[,c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)]
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
inpc201704 <- rbind(mensal,acum,acum12,peso)
inpc201704$referencia <- 201704
rm(mensal,acum,acum12,peso)
inpc2017 <- rbind(inpc201701,inpc201702,inpc201703,inpc201704)
write.table(inpc2017, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc2017.csv", row.names = FALSE)
rm(list=ls())
rm(list=ls())
library(readr)
inpc2017 <- read_delim("~/codeplan/ipca_e_inpc/inpc2017.csv", 
                       " ", escape_double = FALSE,
                       col_types = cols(riodejaneiro = col_double(), 
                                        portoalegra = col_double(),
                                        belohorizonte = col_double(), 
                                        recife = col_double(),
                                        saopaulo = col_double(), 
                                        brasilia = col_double(),
                                        belem = col_double(),
                                        fortaleza = col_double(),
                                        salvador = col_double(), 
                                        curitiba = col_double(),
                                        goiania = col_double(), 
                                        grandevitoria = col_double(), 
                                        campogrande = col_double(), 
                                        brasil = col_double(), 
                                        id = col_integer(), 
                                        referencia = col_integer()),
                       trim_ws = TRUE)
inpc2016 <- read_delim("~/codeplan/ipca_e_inpc/inpc2016.csv", 
                       " ", escape_double = FALSE,
                       col_types = cols(riodejaneiro = col_double(), 
                                        portoalegra = col_double(),
                                        belohorizonte = col_double(), 
                                        recife = col_double(),
                                        saopaulo = col_double(), 
                                        brasilia = col_double(),
                                        belem = col_double(),
                                        fortaleza = col_double(),
                                        salvador = col_double(), 
                                        curitiba = col_double(),
                                        goiania = col_double(), 
                                        grandevitoria = col_double(), 
                                        campogrande = col_double(), 
                                        brasil = col_double(), 
                                        id = col_integer(), 
                                        referencia = col_integer()),
                       trim_ws = TRUE)
inpc2015 <- read_delim("~/codeplan/ipca_e_inpc/inpc2015.csv", 
                       " ", escape_double = FALSE,
                       col_types = cols(riodejaneiro = col_double(), 
                                        portoalegra = col_double(),
                                        belohorizonte = col_double(), 
                                        recife = col_double(),
                                        saopaulo = col_double(), 
                                        brasilia = col_double(),
                                        belem = col_double(),
                                        fortaleza = col_double(),
                                        salvador = col_double(), 
                                        curitiba = col_double(),
                                        goiania = col_double(), 
                                        grandevitoria = col_double(), 
                                        campogrande = col_double(), 
                                        brasil = col_double(), 
                                        id = col_integer(), 
                                        referencia = col_integer()),
                       trim_ws = TRUE)
inpc2014 <- read_delim("~/codeplan/ipca_e_inpc/inpc2014.csv", 
                       " ", escape_double = FALSE,
                       col_types = cols(riodejaneiro = col_double(), 
                                        portoalegra = col_double(),
                                        belohorizonte = col_double(), 
                                        recife = col_double(),
                                        saopaulo = col_double(), 
                                        brasilia = col_double(),
                                        belem = col_double(),
                                        fortaleza = col_double(),
                                        salvador = col_double(), 
                                        curitiba = col_double(),
                                        goiania = col_double(), 
                                        grandevitoria = col_double(), 
                                        campogrande = col_double(), 
                                        brasil = col_double(), 
                                        id = col_integer(), 
                                        referencia = col_integer()),
                       trim_ws = TRUE)
inpc2013 <- read_delim("~/codeplan/ipca_e_inpc/inpc2013.csv", 
                       " ", escape_double = FALSE,
                       col_types = cols(riodejaneiro = col_double(), 
                                        portoalegra = col_double(),
                                        belohorizonte = col_double(), 
                                        recife = col_double(),
                                        saopaulo = col_double(), 
                                        brasilia = col_double(),
                                        belem = col_double(),
                                        fortaleza = col_double(),
                                        salvador = col_double(), 
                                        curitiba = col_double(),
                                        goiania = col_double(), 
                                        brasil = col_double(), 
                                        id = col_integer(), 
                                        referencia = col_integer()),
                       trim_ws = TRUE)
inpc2012 <- read_delim("~/codeplan/ipca_e_inpc/inpc2012.csv", 
                       " ", escape_double = FALSE,
                       col_types = cols(riodejaneiro = col_double(), 
                                        portoalegra = col_double(),
                                        belohorizonte = col_double(), 
                                        recife = col_double(),
                                        saopaulo = col_double(), 
                                        brasilia = col_double(),
                                        belem = col_double(),
                                        fortaleza = col_double(),
                                        salvador = col_double(), 
                                        curitiba = col_double(),
                                        goiania = col_double(), 
                                        brasil = col_double(), 
                                        id = col_integer(), 
                                        referencia = col_integer()),
                       trim_ws = TRUE)
library(plyr)
inpc <- rbind.fill(list(inpc2017,inpc2016,inpc2015,inpc2014,inpc2013,inpc2012))
rm(list=c("inpc2017","inpc2016","inpc2015","inpc2014","inpc2013","inpc2012"))
library(readr)
cd <- read_delim("~/codeplan/ipca_e_inpc/cd_inpc_2012_2017_utf8.txt",
                 "\t", escape_double = FALSE, trim_ws = TRUE)
inpc <- merge(inpc,cd,by = c("referencia","id"))
inpc <- inpc[,c(2,1,18,19,20,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17)]
attach(inpc)
inpc <- inpc[order(referencia,tp_dado,id),]
write.table(inpc, 
            "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/inpc.csv", 
            row.names = FALSE, 
            dec = ",", 
            sep = "|", 
            na = "")