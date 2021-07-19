# Store current item & damage
data modify storage quickswap:damage Damage set from entity @s SelectedItem.tag.Damage
execute store result score #temp0 qs.temp run data get entity @s SelectedItem.tag.Damage

# Increment damage and store in stored item
scoreboard players add #temp0 qs.temp 1
execute store result storage quickswap:damage Damage int 1 run scoreboard players get #temp0 qs.temp

# Break
execute if score #temp0 qs.temp matches 25.. run function quickswap:break

# Update durability
execute unless score #temp0 qs.temp matches 25.. run item modify entity @s weapon.mainhand quickswap:copy_nbt_tags_damage