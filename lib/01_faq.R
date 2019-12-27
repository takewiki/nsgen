#加载处理库------
library(readxl)
library(stringr)
library(stringi)
faq <- read_excel("data-raw/JBLH_upload_V1.8.xlsx", 
                               sheet = "FAQ问题示例", skip = 1)
View(faq)
#提取标准问题------
ques <- faq$标准问
ques_count <- length(ques);
#提取模板------
busi_Obj <- faq$`业务对象(近义词）`;
oper_Node <- faq$`操作节点（近义词）`;
#提取泛化内容
busi_Obj_gen<- faq$`业务对象(同义词）`;
oper_Node_gen <- faq$`操作节点（同义词）`;
#数据处理--------
str_split('abcd','c',simplify = F);

