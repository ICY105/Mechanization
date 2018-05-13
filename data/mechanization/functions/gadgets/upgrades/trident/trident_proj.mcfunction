tag @s[nbt=!{Trident:{tag:{modified:2}}}] add mech_landed
execute if entity @s[nbt={DealtDamage:1b}] run function mechanization:gadgets/upgrades/trident/trident_aoe

particle minecraft:dust 0.0 1.0 1.0 1.0 ~ ~ ~ 0 0 0 0 1 force

