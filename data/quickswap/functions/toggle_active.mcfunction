execute if data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run item modify entity @s weapon.mainhand quickswap:enchant
execute if data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run item modify entity @s weapon.mainhand quickswap:change_sprite_active

execute unless data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run item modify entity @s weapon.mainhand quickswap:disenchant
execute unless data entity @s SelectedItem.tag.Quickswap.StoredItems.StoredChestplate.id run item modify entity @s weapon.mainhand quickswap:change_sprite_inactive