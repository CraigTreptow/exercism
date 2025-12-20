object SpaceAge {

  def onMercury(seconds: Double):Double = { round(onEarth(seconds) / 0.2408467) }

  def onVenus(seconds: Double):Double = { round(onEarth(seconds) / 0.61519726) }

  def onEarth(seconds: Double):Double = {
    val minutes = seconds / 60
    val hours   = minutes / 60
    val days    = hours / 24
    val years   = days / 365.25

    round(years)
  }

  def onMars(seconds: Double):Double = { round(onEarth(seconds) / 1.8808158 ) }

  def onJupiter(seconds: Double):Double = { round(onEarth(seconds) / 11.862615 ) }

  def onSaturn(seconds: Double):Double = { round(onEarth(seconds) / 29.447498) }

  def onUranus(seconds: Double):Double = { round(onEarth(seconds) / 84.016846) }

  def onNeptune(seconds: Double):Double = { round(onEarth(seconds) / 164.79132) }

  def round(years: Double) = { BigDecimal(years).setScale(2, BigDecimal.RoundingMode.HALF_UP).toDouble }

}

