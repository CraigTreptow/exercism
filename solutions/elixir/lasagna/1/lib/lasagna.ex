defmodule Lasagna do
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(minutes_in_oven_so_far) do
    expected_minutes_in_oven() - minutes_in_oven_so_far
  end

  def preparation_time_in_minutes(layer_count) do
    minutes_per_layer = 2

    layer_count * minutes_per_layer
  end

  def total_time_in_minutes(layer_count, minutes_in_oven_so_far) do
    preparation_time_in_minutes(layer_count) + minutes_in_oven_so_far
  end

  def alarm do
    "Ding!"
  end
end
