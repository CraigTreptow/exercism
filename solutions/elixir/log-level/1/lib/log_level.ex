defmodule LogLevel do
  # | Log code              | Log label | Supported in legacy apps? |
  # |-----------------------| --------- | ------------------------- |
  # | 0                     | trace     | no                        |
  # | 1                     | debug     | yes                       |
  # | 2                     | info      | yes                       |
  # | 3                     | warning   | yes                       |
  # | 4                     | error     | yes                       |
  # | 5                     | fatal     | no                        |
  # | other / not supported | unknown   | -                         |

  def to_label(0 = _level, true = _legacy?), do: :unknown
  def to_label(5 = _level, true = _legacy?), do: :unknown

  def to_label(level, _legacy?) do
    cond do
      level == 0 -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    log_level = to_label(level, legacy?)

    cond do
      log_level == :error -> :ops
      log_level == :fatal -> :ops
      log_level == :unknown -> if legacy?, do: :dev1, else: :dev2
      true -> false
    end
  end
end
