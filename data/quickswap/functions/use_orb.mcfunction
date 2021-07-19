# Swap if orb has stored chest armour
execute if entity @s[scores={qs.use_orb=1..}] if data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run function quickswap:swap

# Store chest armour is orb is empty
execute if entity @s[scores={qs.use_orb=1..}, nbt={Inventory:[{Slot:102b}]}] unless data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run function quickswap:set_chestplate

# Update sprite
function quickswap:toggle_active

scoreboard players reset @s qs.use_orb