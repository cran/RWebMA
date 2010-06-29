yahooWebMA <-
function(appid, sentence, results="ma", response="surface,reading,pos", filter="", ma_response="", ma_filter="", uniq_response="", uniq_filter="", uniq_by_baseform=""){
  search.url <- "http://jlp.yahooapis.jp/MAService/V1/parse"
  request.url <- paste(search.url, "?appid=", appid, "&sentence=", URLencode(sentence),
                       "&results=", results, "&response", response, "&filter=", filter,
                       "&ma_response=", ma_response, "&ma_filter=", ma_filter, "&uniq_response=", uniq_response,
                       "&uniq_filter=", uniq_filter, "&uniq_by_baseform=", uniq_by_baseform, sep="")

  r <- try( xmlToList(xmlTreeParse(request.url)) , TRUE)
  r
}

