class AssemblyLine
  def initialize(speed)
    @speed = speed
    @base_cars_per_hour = 221
  end

  def production_rate_per_hour
    return (@base_cars_per_hour * @speed) * 1.0 if @speed <= 4
    return (@base_cars_per_hour * @speed) * 0.9 if @speed <= 8
    return (@base_cars_per_hour * @speed) * 0.8 if @speed == 9

    (@base_cars_per_hour * @speed) * 0.77
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
