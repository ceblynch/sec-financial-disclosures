get.html.table.nodes <- function(html){
  html %>%
    htmlParse() %>%
    getNodeSet("//table")
}
