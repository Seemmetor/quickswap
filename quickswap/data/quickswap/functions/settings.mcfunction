tellraw @s [{"text":"================","bold":"true","color":"dark_purple"}]
tellraw @s [{"text":"Quickswap ","bold":"true","color":"light_purple"}, {"text":"settings","bold":"true","color":"white"}]
tellraw @s [{"text":"================\n","bold":"true","color":"dark_purple"}]

execute if score #unbreakable qs.options matches 1 run tellraw @s [{"text":"[✔]","color":"green","clickEvent":{"action":"run_command","value":"/function quickswap:options/toggle_unbreakable"}}, {"text":" Unbreakable orbs\n", "color":"white"}]
execute if score #unbreakable qs.options matches 0 run tellraw @s [{"text":"[❌]","color":"red","clickEvent":{"action":"run_command","value":"/function quickswap:options/toggle_unbreakable"}}, {"text":" Unbreakable orbs\n", "color":"white"}]

gamerule sendCommandFeedback false
schedule function quickswap:options/reset_command_feedback 1t

tellraw @s [{"text":"================","bold":"true","color":"dark_purple"}]