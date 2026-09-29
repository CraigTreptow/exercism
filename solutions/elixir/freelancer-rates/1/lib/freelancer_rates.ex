defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    discount_amount = before_discount * (discount * 0.01)
    before_discount - discount_amount
  end

  def monthly_rate(hourly_rate, discount) do
    (22 * daily_rate(hourly_rate))
    |> apply_discount(discount)
    |> Float.ceil()
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget / (daily_rate(hourly_rate) |> apply_discount(discount)))
    |> Float.floor(1)
  end
end
