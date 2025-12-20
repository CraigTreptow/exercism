pub fn expected_minutes_in_oven() -> Int {
  40
}

pub fn remaining_minutes_in_oven(minutes_so_far: Int) -> Int {
  expected_minutes_in_oven() - minutes_so_far
}

pub fn preparation_time_in_minutes(minutes: Int) -> Int {
  minutes * 2
}

pub fn total_time_in_minutes(layers: Int, minutes: Int) -> Int {
  preparation_time_in_minutes(layers) + minutes
}

pub fn alarm() -> String {
  "Ding!"
}
