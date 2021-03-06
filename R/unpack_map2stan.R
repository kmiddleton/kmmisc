#' Unpack map or map2stan fitted model
#'
#' @param fm Fitted model
#' @param ... Additional arguments passed on to `rethinking::extract.samples()`
#'
#' @return data.frame of fm
#' @export
#'
unpack_map2stan <- function(fm, ...) {
  post <- extract.samples(fm, ...)
  p <- precis(fm, depth = 2)@output
  param_est <- rownames(p)

  out <- list()
  counter <- 1
  for (i in 1:length(post)) {
    param <- post[[i]]
    if (is.matrix(param)) {
      for (j in 1:ncol(param)) {
        out[[counter]] <- param[, j]
        counter <- counter + 1
      }
    } else {
      out[[counter]] <- param
      counter <- counter + 1
    }
  }
  out_df <- as.data.frame(out)
  names(out_df) <- param_est
  out_df <- apply(out_df, 2, as.numeric)
  return(as.data.frame(out_df))
}
