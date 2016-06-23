#' Format a number as a percentage for printing
#'
#' This function takes a character or numeric value as input. The value is returned as a character value with the percent sign appended
#' @author Ryan Kuhn, CPA; \email{ryan.l.kuhn@questdiagnostics.com}
#' @param x a numeric or character value
#' @param decimals the number of decimal places to round to
#' @export

Print_Percent<- function(x,decimals=0){
    a<-round(as.numeric(x)*100,decimals)
    a<-paste(a,"%",sep="")
    return(a)
    }