defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    xf = x/1
    yf = y/1

    cond do
      xf >= -1.0 && xf <= 1.0 && yf >= -1.0 && yf <= 1.0 -> 10
      xf >= -4.0 && xf < 1.0 && yf >= -4.0 && yf < 1.0 -> 5
      xf >= -9.0 && xf < 4.0 && yf >= -9.0 && yf < 4.0 -> 1
      true -> 0
    end
  end
end
