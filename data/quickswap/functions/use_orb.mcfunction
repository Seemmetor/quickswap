execute if entity @s[scores={qs.use_orb=1..}] if data entity @s SelectedItem.tag.Quickswap.StoredChestplate.id run function quickswap:quickswap_orb/swap

execute if entity @s[scores={qs.use_orb=1..}, nbt={Inventory:[{Slot:102b}]}] unless data entity @s SelectedItem.tag.Quickswap.StoredChestplate.id run function quickswap:quickswap_orb/set_chestplate

execute if data entity @s SelectedItem.tag.Quickswap run function quickswap:quickswap_orb/toggle_active

scoreboard players reset @s qs.use_orb