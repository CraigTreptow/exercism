import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]: " <> rest -> string.trim(rest)
    "[WARNING]: " <> rest -> string.trim(rest)
    "[ERROR]: " <> rest -> string.trim(rest)
    _ -> "WAT"
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]" <> rest -> "info"
    "[WARNING]" <> rest -> "warning"
    "[ERROR]" <> rest -> "error"
    _ -> "WAT"
  }
}

pub fn reformat(log_line: String) -> String {
  case log_line {
    "[INFO]: " <> rest -> string.trim(rest) <> " (info)"
    "[WARNING]: " <> rest -> string.trim(rest) <> " (warning)"
    "[ERROR]: " <> rest -> string.trim(rest) <> " (error)"
    _ -> "WAT"
  }
}
