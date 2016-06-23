#' Detect Internet Explorer
#'
#' Use in a markdown file. Older version of IE will not render some of the charts or tables in knitr documents. The function inserts a html snippet which shows a warning message if the user is using Internet Explorer. The snippet uses VBScript code which only IE can interpret.  The html snippet will have no effect in Chrome as the browser will not interpret VBScript.
#'
#' @param NULL no inputs are required
#' @return none, called for side effect
#' @author Ryan Kuhn, CPA; \email{ryan.l.kuhn@questdiagnostics.com}
#' @examples
#' ```{r, echo=FALSE, results='asis'}
#' DetectIE()
#' ```
#'
#' @export
DetectIE<- function(){
    cat("<script type=\"text/vbscript\"> \n")
    cat("Sub Window_Onload \n")
    cat("IETrue.innerHTML=\"<br><b>You are using Internet Explorer.  Please use Chrome for a better experience.</b><br>\"\n")
    cat("End sub \n")
    cat("</script> \n")
    cat("<span style=\"color:red\" id=\"IETrue\" />\n")
    }