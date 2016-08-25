
library(data.table)
dt <- read.csv("data.csv", stringsAsFactors = FALSE, fileEncoding = "GBK")
setDT(dt)
setkey(dt, PL_Type)
dt[J("公允价值变动损益")]
unique(Encoding(dt$PL_Type))
dt[, PL_Type := enc2utf8(PL_Type)]
setkey(dt, PL_Type)
unique(Encoding(dt$PL_Type))
dt[J("公允价值变动损益")]
devtools::session_info()
