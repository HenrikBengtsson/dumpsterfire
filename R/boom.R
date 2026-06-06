boom <- function() {
  msg <- sprintf("[%s %s]: Boom", packageName(), packageVersion(), "extra")
  message(msg)
}
