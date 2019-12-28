menu_row <- tabItem(tabName = "row",
                    fluidRow(
                      column(width = 4,
                             box(
                               title = "选择文件", width = NULL, solidHeader = TRUE, status = "primary",
                               mdl_file(id = 'file_ques_like','选择FAQ规范文件')
                             ),
                             box(
                               title = "操作选项", width = NULL, solidHeader = TRUE, status = "primary",
                               actionButton('preview_res','预览结果'),
                               mdl_download_button('download_res','下载结果')
                             )
                      ),
                      
                      column(width = 8,
                             box(
                               title = "预览结果", width = NULL, solidHeader = TRUE, status = "primary",
                               mdl_dataTable('show_res','结果预览')
                             )
                      )
                    )
)