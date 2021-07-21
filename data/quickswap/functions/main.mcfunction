execute as @a[scores={qs.use_orb=1..}] at @s if entity @s[nbt={SelectedItem: {tag: {Quickswap: {Orb: 1b}}}}] run function quickswap:use_orb

execute as @e[type=item, nbt={Fire: 300s, Item: {tag: {Quickswap: {Orb: 1b}}}}] at @s run function quickswap:quickswap_orb/shatter