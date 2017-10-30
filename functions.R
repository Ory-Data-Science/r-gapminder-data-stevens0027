my_sum <- function(a, b) {
  the_sum <- a + b
  return(the_sum)
}

fahr_to_kelvin <- function(temp) {
  stopifnot(is.numeric(temp))
  kelvin <- ((temp - 32) * 5 / 9) + 273.15
  return(kelvin)
}

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

# fence("***", "This is a sentence")
# 
# "*** This is a sentence ***"

fence <- function(input, wrapper) {
  text_tmp <- c(wrapper, input, wrapper)
  result <- paste(text_tmp, collapse = " ")
  return(result)
}

