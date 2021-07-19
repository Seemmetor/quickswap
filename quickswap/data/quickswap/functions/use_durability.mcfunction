# Store current item & damage
data modify storage quickswap:damage SelectedItem set from entity @s SelectedItem
execute store result score #temp0 qs.temp run data get entity @s SelectedItem.tag.Damage

# Increment damage and store in stored item
scoreboard players add #temp0 qs.temp 1
execute store result storage quickswap:damage SelectedItem.tag.Damage int 1 run scoreboard players get #temp0 qs.temp

# Update durability
item modify entity @s weapon.mainhand quickswap:copy_nbt_tags_damage

# Break
execute if score #temp0 qs.temp matches 25.. run function quickswap:break