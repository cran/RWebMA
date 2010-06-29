\name{yahooWebMA}
\alias{yahooWebMA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  yahooWebMA
}
\description{
This package is an interface for R of WebMA of Yahoo! Japan. http://developer.yahoo.co.jp/webapi/jlp/ma/v1/parse.html
}
\usage{
yahooWebMA(appid, sentence, results = "ma", response = "surface,reading,pos", filter = "", ma_response = "", ma_filter = "", uniq_response = "", uniq_filter = "", uniq_by_baseform = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{appid}{
%%     ~~Describe \code{appid} here~~
}
  \item{sentence}{
%%     ~~Describe \code{sentence} here~~
}
  \item{results}{
%%     ~~Describe \code{results} here~~
}
  \item{response}{
%%     ~~Describe \code{response} here~~
}
  \item{filter}{
%%     ~~Describe \code{filter} here~~
}
  \item{ma_response}{
%%     ~~Describe \code{ma_response} here~~
}
  \item{ma_filter}{
%%     ~~Describe \code{ma_filter} here~~
}
  \item{uniq_response}{
%%     ~~Describe \code{uniq_response} here~~
}
  \item{uniq_filter}{
%%     ~~Describe \code{uniq_filter} here~~
}
  \item{uniq_by_baseform}{
%%     ~~Describe \code{uniq_by_baseform} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(appid, sentence, results="ma", response="surface,reading,pos", filter="", ma_response="", ma_filter="", uniq_response="", uniq_filter="", uniq_by_baseform=""){
  search.url <- "http://jlp.yahooapis.jp/MAService/V1/parse"
  request.url <- paste(search.url, "?appid=", appid, "&sentence=", URLencode(sentence),
                       "&results=", results, "&response", response, "&filter=", filter,
                       "&ma_response=", ma_response, "&ma_filter=", ma_filter, "&uniq_response=", uniq_response,
                       "&uniq_filter=", uniq_filter, "&uniq_by_baseform=", uniq_by_baseform, sep="")

  r <- try( xmlToList(xmlTreeParse(request.url)) , TRUE)
  r
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
