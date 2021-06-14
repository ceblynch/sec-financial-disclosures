get.hyperlinks.text <- function(html) {
  html %>%
    html_nodes("td a") %>%
    html_text()
}
