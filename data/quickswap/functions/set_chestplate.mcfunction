# Store new chest armour in orb
item modify entity @s weapon.mainhand quickswap:store_new_chestplate
item modify entity @s weapon.mainhand quickswap:fix_slot

item replace entity @s armor.chest with minecraft:air

playsound minecraft:block.end_portal_frame.fill player @s

scoreboard players reset @s qs.use_orb