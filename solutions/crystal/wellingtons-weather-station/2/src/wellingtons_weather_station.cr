class Temperature
  def to_kelvin(celsius)
    celsius + 273.15
  end

  def round(celsius)
    celsius.round(1)
  end

  def to_fahrenheit(celsius)
    # 0°C is 32°F, and 1 degree Celsius equals 1.8 degrees Fahrenheit.
    ((celsius * 1.8) + 32.0).to_i
  end

  def number_missing_sensors(number_of_sensors)
    (4 - number_of_sensors % 4) % 4
  end
end
