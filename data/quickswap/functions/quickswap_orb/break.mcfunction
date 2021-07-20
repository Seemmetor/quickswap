setblock ~ 0 ~ minecraft:yellow_shulker_box{Items:[{Slot:0b, id:"minecraft:stone", Count:1b}]}

data modify block ~ 0 ~ Items[0] set from entity @s SelectedItem.tag.Quickswap.StoredChestplate

item replace entity @s weapon.mainhand from block ~ 0 ~ container.0

setblock ~ 0 ~ minecraft:bedrock

playsound minecraft:block.glass.break player @s