
data modify entity @s HandItems[0] set from storage du:temp obj
execute if predicate mechanization:smash_upgrade as @p[tag=mech_upgrade_smash] run function mechanization:gadgets/upgrades/tools/smash_3
kill @s
