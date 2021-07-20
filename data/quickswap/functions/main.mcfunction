execute as @a[scores={qs.use_orb=1..}] at @s if entity @s[nbt={SelectedItem: {tag: {Quickswap: {Orb: 1b}}}}] run function quickswap:use_orb

execute as @a[scores={qs.drop_orb=1..}] at @s run function quickswap:drop_orb

execute as @e[type=item, tag=quickswap.dropped_orb] run function quickswap:quickswap_orb/check_shatter