player_actions = [{
  "lure" => "stun",
  "stun" => "trap",
  "trap" => "lure",
}, {
  "epee"  => "ishi",
  "ishi"  => "bache",
  "bache" => "epee",
}, {
  "bite" => "heal",
  "heal" => "spot",
  "spot" => "bite",
}, {
  "active"  => "caution",
  "caution" => "stop",
  "stop"    => "active",
}]

# Influences indirect battle mechanics
stealth_actions  = player_actions[0]

# Influences direct combat mechanics
battle_mechanics = player_actions[1]

# Influences pet behaviours
pet_mechanics = player_actions[2]

# Influences whether you can intercept enemy actions
turn_order       = player_actions[3]
