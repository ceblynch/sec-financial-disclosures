get.hyperlinks <- function(html, use.parser = FALSE) {

  if(use.parser == TRUE){

    htmlParse(html) %>%
      getNodeSet("//td //a") %>%
      sapply(., function(x) xmlGetAttr(x, "href"))

    } else {
      html %>%
        html_nodes("td a") %>%
        html_attr("href")
    }
}
