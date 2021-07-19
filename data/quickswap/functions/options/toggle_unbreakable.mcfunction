execute store result score #cur_toggle qs.temp run scoreboard players get #unbreakable qs.options
execute if score #cur_toggle qs.temp matches 1 run scoreboard players set #unbreakable qs.options 0
execute if score #cur_toggle qs.temp matches 0 run scoreboard players set #unbreakable qs.options 1

function quickswap:settings