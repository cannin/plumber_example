# plumber.R; Use R >= 4.4

#* Echo back the input
#* @param s String to echo
#* @get /echo
function(s="") {
  list(msg = paste0("MSG: '", s, "'")) # Makes JSON object
}

#* Return a PNG plot from evaluating the code
#* @param s String of R code to evaluate. Example: "rand <- rnorm(100); hist(rand)" 
#* @serializer png
#* @get /eval_to_plot
function(s) {
  eval(parse(text=s))
}

#* Return the result of evaluating the R code. Object must be serializable to JSON
#* @param s String of R code to evaluate. Example: "rnorm(10)" or "a <- rnorm(10); b <- rnorm(10); res <- t.test(a, b); tstat <- res$statistic"
#* @get /eval_to_text
function(s) {
  eval(parse(text=s))
}

