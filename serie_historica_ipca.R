rm(list=ls())
library(readxl)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201201Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201201Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201201Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201201Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201201 <- rbind(mensal,acum,acum12,peso)
ipca201201$referencia <- 201201
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201202Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201202Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201202Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201202Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201202 <- rbind(mensal,acum,acum12,peso)
ipca201202$referencia <- 201202
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201203Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201203Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201203Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201203Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201203 <- rbind(mensal,acum,acum12,peso)
ipca201203$referencia <- 201203
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201204Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201204Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201204Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201204Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201204 <- rbind(mensal,acum,acum12,peso)
ipca201204$referencia <- 201204
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201205Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201205Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201205Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201205Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201205 <- rbind(mensal,acum,acum12,peso)
ipca201205$referencia <- 201205
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201206Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201206Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201206Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201206Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201206 <- rbind(mensal,acum,acum12,peso)
ipca201206$referencia <- 201206
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201207Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201207Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201207Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201207Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201207 <- rbind(mensal,acum,acum12,peso)
ipca201207$referencia <- 201207
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201208Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201208Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201208Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201208Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201208 <- rbind(mensal,acum,acum12,peso)
ipca201208$referencia <- 201208
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201209Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201209Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201209Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201209Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201209 <- rbind(mensal,acum,acum12,peso)
ipca201209$referencia <- 201209
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201210Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201210Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201210Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201210Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201210 <- rbind(mensal,acum,acum12,peso)
ipca201210$referencia <- 201210
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201211Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201211Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201211Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201211Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201211 <- rbind(mensal,acum,acum12,peso)
ipca201211$referencia <- 201211
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201212Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201212Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201212Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2012/ipca_201212Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201212 <- rbind(mensal,acum,acum12,peso)
ipca201212$referencia <- 201212
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201301Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201301Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201301Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201301Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201301 <- rbind(mensal,acum,acum12,peso)
ipca201301$referencia <- 201301
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201302Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201302Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201302Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201302Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201302 <- rbind(mensal,acum,acum12,peso)
ipca201302$referencia <- 201302
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201303Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201303Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201303Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201303Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201303 <- rbind(mensal,acum,acum12,peso)
ipca201303$referencia <- 201303
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201304Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201304Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201304Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201304Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201304 <- rbind(mensal,acum,acum12,peso)
ipca201304$referencia <- 201304
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201305Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201305Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201305Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201305Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201305 <- rbind(mensal,acum,acum12,peso)
ipca201305$referencia <- 201305
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201306Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201306Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201306Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201306Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201306 <- rbind(mensal,acum,acum12,peso)
ipca201306$referencia <- 201306
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201307Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201307Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201307Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201307Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201307 <- rbind(mensal,acum,acum12,peso)
ipca201307$referencia <- 201307
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201308Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201308Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201308Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201308Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201308 <- rbind(mensal,acum,acum12,peso)
ipca201308$referencia <- 201308
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201309Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201309Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201309Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201309Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201309 <- rbind(mensal,acum,acum12,peso)
ipca201309$referencia <- 201309
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201310Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201310Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201310Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201310Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201310 <- rbind(mensal,acum,acum12,peso)
ipca201310$referencia <- 201310
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201311Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201311Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201311Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201311Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201311 <- rbind(mensal,acum,acum12,peso)
ipca201311$referencia <- 201311
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201312Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     na = "null", skip = 6)
mensal <- head(mensal,n = 446)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
mensal$id <- seq(from=1,to=446)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201312Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
acum <- head(acum,n = 446)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
acum$id <- seq(from=1,to=446)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201312Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     na = "null", skip = 6)
acum12 <- head(acum12,n = 446)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","brasil")
acum12$id <- seq(from=1,to=446)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2013/ipca_201312Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   na = "null", skip = 6)
peso <- head(peso,n = 446)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","brasil")
peso$id <- seq(from=1,to=446)
peso$tp_dado <- "4_peso"
ipca201312 <- rbind(mensal,acum,acum12,peso)
ipca201312$referencia <- 201312
rm(mensal,acum,acum12,peso)
ipca2012 <- rbind(ipca201201,ipca201202,ipca201203,ipca201204,ipca201205,ipca201206,ipca201207,ipca201208,ipca201209,ipca201210,ipca201211,ipca201212)
write.table(ipca2012, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca2012.csv", row.names = FALSE)
ipca2013 <- rbind(ipca201301,ipca201302,ipca201303,ipca201304,ipca201305,ipca201306,ipca201307,ipca201308,ipca201309,ipca201310,ipca201311,ipca201312)
write.table(ipca2013, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca2013.csv", row.names = FALSE)
library(readxl)
rm(list=ls())
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201401Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201401Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201401Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201401Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201401 <- rbind(mensal,acum,acum12,peso)
ipca201401$referencia <- 201401
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201402Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201402Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201402Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201402Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201402 <- rbind(mensal,acum,acum12,peso)
ipca201402$referencia <- 201402
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201403Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201403Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201403Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201403Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201403 <- rbind(mensal,acum,acum12,peso)
ipca201403$referencia <- 201403
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201404Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201404Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201404Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201404Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201404 <- rbind(mensal,acum,acum12,peso)
ipca201404$referencia <- 201404
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201405Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201405Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201405Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201405Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201405 <- rbind(mensal,acum,acum12,peso)
ipca201405$referencia <- 201405
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201406Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201406Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201406Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201406Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201406 <- rbind(mensal,acum,acum12,peso)
ipca201406$referencia <- 201406
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201407Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201407Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201407Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201407Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201407 <- rbind(mensal,acum,acum12,peso)
ipca201407$referencia <- 201407
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201408Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201408Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201408Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201408Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201408 <- rbind(mensal,acum,acum12,peso)
ipca201408$referencia <- 201408
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201409Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201409Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201409Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201409Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201409 <- rbind(mensal,acum,acum12,peso)
ipca201409$referencia <- 201409
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201410Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201410Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201410Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201410Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201410 <- rbind(mensal,acum,acum12,peso)
ipca201410$referencia <- 201410
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201411Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201411Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201411Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201411Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201411 <- rbind(mensal,acum,acum12,peso)
ipca201411$referencia <- 201411
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201412Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201412Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201412Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2014/ipca_201412Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201412 <- rbind(mensal,acum,acum12,peso)
ipca201412$referencia <- 201412
rm(mensal,acum,acum12,peso)
ipca2014 <- rbind(ipca201401,ipca201402,ipca201403,ipca201404,ipca201405,ipca201406,ipca201407,ipca201408,ipca201409,ipca201410,ipca201411,ipca201412)
write.table(ipca2014, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca2014.csv", row.names = FALSE)
library(readxl)
rm(list=ls())
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201501Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201501Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201501Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201501Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201501 <- rbind(mensal,acum,acum12,peso)
ipca201501$referencia <- 201501
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201502Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201502Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201502Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201502Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201502 <- rbind(mensal,acum,acum12,peso)
ipca201502$referencia <- 201502
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201503Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201503Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201503Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201503Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201503 <- rbind(mensal,acum,acum12,peso)
ipca201503$referencia <- 201503
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201504Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201504Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201504Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201504Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201504 <- rbind(mensal,acum,acum12,peso)
ipca201504$referencia <- 201504
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201505Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201505Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201505Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201505Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201505 <- rbind(mensal,acum,acum12,peso)
ipca201505$referencia <- 201505
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201506Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201506Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201506Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201506Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201506 <- rbind(mensal,acum,acum12,peso)
ipca201506$referencia <- 201506
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201507Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201507Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201507Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201507Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201507 <- rbind(mensal,acum,acum12,peso)
ipca201507$referencia <- 201507
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201508Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201508Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201508Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201508Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201508 <- rbind(mensal,acum,acum12,peso)
ipca201508$referencia <- 201508
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201509Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201509Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201509Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201509Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201509 <- rbind(mensal,acum,acum12,peso)
ipca201509$referencia <- 201509
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201510Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201510Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201510Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201510Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201510 <- rbind(mensal,acum,acum12,peso)
ipca201510$referencia <- 201510
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201511Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201511Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201511Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201511Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201511 <- rbind(mensal,acum,acum12,peso)
ipca201511$referencia <- 201511
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201512Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201512Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201512Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2015/ipca_201512Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201512 <- rbind(mensal,acum,acum12,peso)
ipca201512$referencia <- 201512
rm(mensal,acum,acum12,peso)
ipca2015 <- rbind(ipca201501,ipca201502,ipca201503,ipca201504,ipca201505,ipca201506,ipca201507,ipca201508,ipca201509,ipca201510,ipca201511,ipca201512)
write.table(ipca2015, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca2015.csv", row.names = FALSE)
library(readxl)
rm(list=ls())
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201601Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201601Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201601Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201601Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201601 <- rbind(mensal,acum,acum12,peso)
ipca201601$referencia <- 201601
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201602Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201602Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201602Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201602Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201602 <- rbind(mensal,acum,acum12,peso)
ipca201602$referencia <- 201602
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201603Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201603Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201603Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201603Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201603 <- rbind(mensal,acum,acum12,peso)
ipca201603$referencia <- 201603
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201604Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201604Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201604Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201604Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201604 <- rbind(mensal,acum,acum12,peso)
ipca201604$referencia <- 201604
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201605Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201605Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201605Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201605Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201605 <- rbind(mensal,acum,acum12,peso)
ipca201605$referencia <- 201605
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201606Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201606Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201606Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201606Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201606 <- rbind(mensal,acum,acum12,peso)
ipca201606$referencia <- 201606
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201607Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201607Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201607Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201607Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201607 <- rbind(mensal,acum,acum12,peso)
ipca201607$referencia <- 201607
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201608Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201608Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201608Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201608Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201608 <- rbind(mensal,acum,acum12,peso)
ipca201608$referencia <- 201608
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201609Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201609Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201609Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201609Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201609 <- rbind(mensal,acum,acum12,peso)
ipca201609$referencia <- 201609
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201610Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201610Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201610Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201610Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201610 <- rbind(mensal,acum,acum12,peso)
ipca201610$referencia <- 201610
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201611Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201611Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201611Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201611Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201611 <- rbind(mensal,acum,acum12,peso)
ipca201611$referencia <- 201611
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201612Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201612Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201612Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2016/ipca_201612Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201612 <- rbind(mensal,acum,acum12,peso)
ipca201612$referencia <- 201612
rm(mensal,acum,acum12,peso)
ipca2016 <- rbind(ipca201601,ipca201602,ipca201603,ipca201604,ipca201605,ipca201606,ipca201607,ipca201608,ipca201609,ipca201610,ipca201611,ipca201612)
write.table(ipca2016, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca2016.csv", row.names = FALSE)
library(readxl)
rm(list=ls())
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201701Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201701Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201701Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201701Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201701 <- rbind(mensal,acum,acum12,peso)
ipca201701$referencia <- 201701
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201702Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201702Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201702Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201702Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201702 <- rbind(mensal,acum,acum12,peso)
ipca201702$referencia <- 201702
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201703Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201703Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201703Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201703Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201703 <- rbind(mensal,acum,acum12,peso)
ipca201703$referencia <- 201703
rm(mensal,acum,acum12,peso)
mensal <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201704Subitem.xls", 
                     sheet = "MENSAL SUBITEM IPCA(TSO)", col_names = FALSE, 
                     skip = 6)
mensal <- head(mensal,n = 454)
names(mensal) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
mensal$id <- seq(from=1,to=454)
mensal$tp_dado <- "1_mensal"
acum <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201704Subitem.xls", 
                   sheet = "ACUM SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
acum <- head(acum,n = 454)
names(acum) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
acum$id <- seq(from=1,to=454)
acum$tp_dado <- "2_ac_ano"
acum12 <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201704Subitem.xls", 
                     sheet = "ACUM 12 M SUBITEM IPCA(FÓRM)", col_names = FALSE, 
                     skip = 6)
acum12 <- head(acum12,n = 454)
names(acum12) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                   "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                   "curitiba","goiania","grandevitoria","campogrande","brasil")
acum12$id <- seq(from=1,to=454)
acum12$tp_dado <- "3_ac_12m"
peso <- read_excel("~/codeplan/ipca_e_inpc/2017/ipca_201704Subitem.xls", 
                   sheet = "PESOS SUBITEM IPCA(TSO)", col_names = FALSE, 
                   skip = 6)
peso <- head(peso,n = 454)
names(peso) <- c("desc_orig","riodejaneiro","portoalegra","belohorizonte",
                 "recife","saopaulo","brasilia","belem","fortaleza","salvador",
                 "curitiba","goiania","grandevitoria","campogrande","brasil")
peso$id <- seq(from=1,to=454)
peso$tp_dado <- "4_peso"
ipca201704 <- rbind(mensal,acum,acum12,peso)
ipca201704$referencia <- 201704
rm(mensal,acum,acum12,peso)
ipca2017 <- rbind(ipca201701,ipca201702,ipca201703,ipca201704)
write.table(ipca2017, "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca2017.csv", row.names = FALSE)
rm(list=ls())
library(readr)
ipca2017 <- read_delim("~/codeplan/ipca_e_inpc/ipca2017.csv", 
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
ipca2016 <- read_delim("~/codeplan/ipca_e_inpc/ipca2016.csv", 
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
ipca2015 <- read_delim("~/codeplan/ipca_e_inpc/ipca2015.csv", 
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
ipca2014 <- read_delim("~/codeplan/ipca_e_inpc/ipca2014.csv", 
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
ipca2013 <- read_delim("~/codeplan/ipca_e_inpc/ipca2013.csv", 
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
ipca2012 <- read_delim("~/codeplan/ipca_e_inpc/ipca2012.csv", 
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
ipca <- rbind.fill(list(ipca2017,ipca2016,ipca2015,ipca2014,ipca2013,ipca2012))
rm(list=c("ipca2017","ipca2016","ipca2015","ipca2014","ipca2013","ipca2012"))
library(readr)
cd <- read_delim("~/codeplan/ipca_e_inpc/cd_ipca_2012_2017_utf8.txt",
                 "\t", escape_double = FALSE, trim_ws = TRUE)
ipca <- merge(ipca,cd,by = c("referencia","id"))
ipca <- ipca[,c(2,1,18,19,20,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17)]
attach(ipca)
ipca <- ipca[order(referencia,tp_dado,id),]

write.table(ipca, 
            "C:/Users/kidlulu/Documents/codeplan/ipca_e_inpc/ipca.csv", 
            row.names = FALSE, 
            dec = ",", 
            sep = "|", 
            na = "")