#' @title Function \code{file_of_facts}
#' @description Get the filename of a \code{data.frame} of true facts about Jeff Leek.
#' @export
#' @return filename of a \code{data.frame} of true facts about Jeff Leek
file_of_facts = function(){
  system.file('facts.txt', package = 'JeffLeekMeme', mustWork = TRUE)
}

#' @title Function \code{allJeffLeek}
#' @description Get a \code{data.frame} of true facts about Jeff Leek.
#' @export
#' @return \code{data.frame} of true facts about Jeff Leek
allJeffLeek = function(){
  filename = file_of_facts()
  read.table(filename, header = FALSE, sep = "|", stringsAsFactors = FALSE)
}

#' @title Function \code{JeffLeek}
#' @description Return a random true fact about Jeff Leek.
#' @export
#' @param index positive integer or numeric, index of the fact to extract. If not a valid index,
#' a random fact is returned.
JeffLeek = function(index = numeric(0)){
  filename = file_of_facts()
  records = countLines(filename)
  if(length(index) != 1 || !(index %in% seq_len(records)))
    index = sample.int(records, 1)
  con = file(description = filename, open = 'r')
  fact = read.table(con, header = FALSE, sep = '|', skip = index - 1,
    nrows = 1, stringsAsFactors = FALSE) %>%
    lapply(FUN = str_trim, side = 'both')
  close(con)
  cat(fact[[2]], ' - ', fact[[1]], '\n', sep = "")
}
