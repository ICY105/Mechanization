
data modify entity @s HandItems[0] set from storage du:temp obj
execute if predicate mechanization:smash_upgrade run function mechanization:gadgets/upgrades/tools/smash_3
kill @s
