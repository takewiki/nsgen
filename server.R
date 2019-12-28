

#shinyserver start point----
 shinyServer(function(input, output,session) {
   
   var_file <- var_file('file_ques_like');
   
   
   data_res <- reactive({
     file <- var_file();
     res <- nsgen(file,1);
     return(res)
   })
   observeEvent(input$preview_res,{
     
     run_dataTable2('show_res',data = data_res())
     
     
   })
   
   fileName <- paste('FAQ相似问处理结果',as.character(Sys.Date()),'.xlsx',sep="");
   
   run_download_xlsx('download_res',data = data_res(),filename = fileName)
  
})
