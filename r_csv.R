install.packages("rvest")
library(rvest)

url <- "https://en.wikipedia.org/wiki/Comma-separated_values"

page <- read_html(url)

table <- page %>% html_node("table")

data <- table %>% html_table(fill = TRUE)

file_path <- "r_csv"
write.csv(data, file=file_path, row.names = FALSE)