

#shinyserver start point----
 shinyServer(function(input, output,session) {
    
    #处理相似问-----
   
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
   
   #处理车型-------
   
   var_sheetName <-var_ListChoose1('sheet_carType')
   var_newCarType <- var_ListChoose1('txt_newCarType')
   data_carType <- reactive({
      file <- input$file_carType$datapath
      print(file)
      sheet_name <- var_sheetName()
      newCarType <- var_newCarType()
      res <-  nsgen_cartype(file,sheet_name,newCarType)
      print(res)
      return(res)
   })
   
   #转型预览结果------
   observeEvent(input$preview_res_cartype,{
      run_dataTable2('show_res_cartype',data = data_carType())
      
   })
   
   #-----车型下载
   
   fileName <- paste('品牌车型泛化处理结果',as.character(Sys.Date()),'.xlsx',sep="");
   
   run_download_xlsx('download_res_cartype',data = data_carType(),filename = fileName)
})
