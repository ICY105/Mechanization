tag @s add mech_active

loot replace entity @s weapon.mainhand loot mechanization:base/plutonium_ingot
execute store result entity @s HandItems[0].Count int 4 if entity @s
