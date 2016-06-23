#' Read .csv from QDSS
#'
#'Wrapper for read.csv file setup to read .csv files downloaded from QDSS.  The function sets fileEncoding option to UCS-2LE which is commonly forgotten for QDSS data.
#'
#' @param x csv file downloaded from QDSS
#' @author Ryan Kuhn, CPA; \email{ryan.l.kuhn@questdiagnostics.com}
#' @export
#' @param cols character. A vector of classes to be assumed for the columns. Recycled as necessary
Read_QDSS<- function(x,cols="character"){
        read.csv(x,
                 header=T,
                 stringsAsFactors=F,
                 sep="\t",
                 fileEncoding="UCS-2LE",
                 colClasses=cols)
        }
