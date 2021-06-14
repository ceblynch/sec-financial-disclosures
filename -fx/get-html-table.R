get.html.table <- function(html, use.parser = FALSE) {

  if(use.parser == TRUE){
    out <- html %>%
      htmlParse() %>%
      getNodeSet("//table")

    out$result[[1]] %>%
      readHTMLTable()

    } else {

      html %>%
        html_nodes(css = "table") %>%
        html_table() %>%
        as.data.frame()
    }
}
