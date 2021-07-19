# Swap equipped chest armour and stored chest armour
setblock ~ 0 ~ minecraft:yellow_shulker_box{Items:[{Slot:0b, id:"minecraft:stone", Count:1b}]}

data modify block ~ 0 ~ Items[0] set from entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate

item modify entity @s weapon.mainhand quickswap:clear_stored_chestplate
item modify entity @s weapon.mainhand quickswap:store_new_chestplate
execute if data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run item modify entity @s weapon.mainhand quickswap:fix_slot

item replace entity @s armor.chest from block ~ 0 ~ container.0

setblock ~ 0 ~ minecraft:bedrock

playsound minecraft:item.armor.equip_generic player @s

# Update durability
execute unless score #unbreakable qs.options matches 1 run function quickswap:use_durability

scoreboard players reset @s qs.use_orb