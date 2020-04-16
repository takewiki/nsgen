menu_column <- tabItem(tabName = "column",
                       fluidRow(
                         column(width = 4,
                                box(
                                  title = "选择文件", width = NULL, solidHeader = TRUE, status = "primary",
                                  fileInput('file_carType','请选择品牌车型泛化文件',placeholder = '请选择文件',buttonLabel = '浏览...'),
                                  mdl_ListChoose1('sheet_carType',label = '请选择页签',
                                                  choiceNames = list('固定内容','活动'),
                                                  choiceValues = list('固定内容','活动')),
                                  
                                  mdl_ListChoose1('txt_newCarType',label = '请选择车型',
                                                  choiceNames = list('极光揽胜','其他'),
                                                  choiceValues = list('极光揽胜','其他'))
                                ),
                                box(
                                  title = "操作选项", width = NULL, solidHeader = TRUE, status = "primary",
                                  actionButton('preview_res_cartype','预览结果'),
                                  mdl_download_button('download_res_cartype','下载结果')
                                )
                         ),
                         
                         column(width = 8,
                                box(
                                  title = "预览结果", width = NULL, solidHeader = TRUE, status = "primary",
                                  mdl_dataTable('show_res_cartype','结果预览')
                                )
                         )
                       )
)