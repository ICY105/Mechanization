tag @s[nbt=!{Trident:{tag:{ mech_modifiers:[{}] }}}] add mech_landed
execute if entity @s[nbt={DealtDamage:1b}] run function mechanization:gadgets/upgrades/trident/trident_aoe

particle minecraft:dust 0.0 1.0 1.0 1.0 ~ ~ ~ 0 0 0 0 1 force

