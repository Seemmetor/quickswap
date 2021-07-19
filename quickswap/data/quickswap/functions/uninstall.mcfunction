scoreboard objectives remove qs.use_orb
scoreboard objectives remove qs.temp
scoreboard objectives remove qs.settings

data remove storage quickswap:damage
data remove storage quickswap:damage

tellraw @s [{"text":"Successfully uninstalled most "}, {"text":"Quickswap", "color":"light_purple"}, {"text":" features.", "color":"white"}]