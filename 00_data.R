# 设置app标题-----
# 进一步完善
# 2.6
app_title <-'FAQ泛化生成器V2.5';


# 设置3条消息框------
msg <- list(
  list(from = "人力资源部1",
       message= "7月工资表已完成计算"),
  list(from="数据部2",
       message = "HR功能已更新到V2",
       icon = "question",
       time = "13:45"
       ),
  list(from = "技术支持3",
       message = "新的HR数据中台已上线.",
       icon = "life-ring",
       time = "2019-08-26"
       )
)


# conn <- conn_rds('nsic')

# 处理品牌数据
getCarType <- function(){
  conn <- conn_rds('nsic')
  sql <- "select FBrandName,FCartypeName  from t_md_carType"
  mydata  <- sql_select(conn,sql)
  
  
  mydata_split <- split(mydata,mydata$FBrandName)
  
  mydata_res <- lapply(mydata_split,function(item){
    cartype <- item$FCartypeName
    res <- tsdo::vect_as_list(cartype)
    return(res)
  })
  return(mydata_res)
}


