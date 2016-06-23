#' Format a number for printing
#'
#' This function takes a character or numeric value as input. The value is returned as a character value with the % appended
#'
#' @param x a numeric or character value
#' @param boolcash TRUE to prepend the return value with $
#' @param decimals the number of decimal places to round to
#' @author Ryan Kuhn, CPA; \email{ryan.l.kuhn@questdiagnostics.com}
#' @export
#'
Print_Thousands<-function(x,boolcash=T,decimals=-3){
  a<-format(round(x,decimals),big.mark=",")
  if (boolcash) {
    a<-paste("$",a,sep="")
    }
  return(a)
}