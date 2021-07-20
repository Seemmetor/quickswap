execute if entity @s[nbt={Item: {tag: {Quickswap: {StoredChestplate: {id: "minecraft:netherite_chestplate"}}}}}] run summon minecraft:item ~ ~ ~ {Item: {id:"minecraft:stone", Count:1b}, Tags: ["quickswap.orb_stored_item"]}

execute if entity @s[nbt={Item: {tag: {Quickswap: {StoredChestplate: {id: "minecraft:netherite_chestplate"}}}}}] run data modify entity @e[type=item, tag=quickswap.orb_stored_item, limit=1] Item set from entity @s Item.tag.Quickswap.StoredChestplate

kill @e[type=item, tag=quickswap.dropped_orb]

playsound minecraft:block.glass.break ambient @a ~ ~ ~