class Rules
  def bonus_points?(power_up_active, touching_bandit)
    return true if power_up_active && touching_bandit
    false
  end

  def score?(touching_power_up, touching_crystal)
    return true if touching_power_up || touching_crystal
    false
  end

  def lose?(power_up_active, touching_bandit)
    return true if touching_bandit && !power_up_active
    false
  end

  def win?(has_picked_up_all_crystals, power_up_active, touching_bandit)
    return true if has_picked_up_all_crystals && !lose?(power_up_active, touching_bandit)
    false
  end
end
