
#### Tin Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data 0
scoreboard players set $world.in_1 du_data 48
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.cf.tin_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.cf.tin_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 4
scoreboard players set $world.in_5 du_data 6
execute if score $base.cf.ore_compatibility mech_data matches 1 run scoreboard players set $world.in_4 du_data 1
execute if score $base.cf.ore_compatibility mech_data matches 1 run scoreboard players set $world.in_5 du_data 1
# ignore placement restrictions
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
data merge storage du:temp {object:{dimension:"minecraft:overworld"}}
execute if score $base.cf.tin_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.tin_ore mech_data = $world.out_0 du_data

#### Titanium Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data -64
scoreboard players set $world.in_1 du_data -48
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.cf.titanium_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.cf.titanium_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 1
scoreboard players set $world.in_5 du_data 4
execute if score $base.cf.ore_compatibility mech_data matches 1 run scoreboard players set $world.in_4 du_data 1
execute if score $base.cf.ore_compatibility mech_data matches 1 run scoreboard players set $world.in_5 du_data 1
# ignore placement restrictions
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
data merge storage du:temp {object:{dimension:"minecraft:overworld"}}
execute if score $base.cf.titanium_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.titanium_ore mech_data = $world.out_0 du_data

#### Uranium Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data -48
scoreboard players set $world.in_1 du_data -24
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.cf.uranium_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.cf.uranium_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 2
scoreboard players set $world.in_5 du_data 4
execute if score $base.cf.ore_compatibility mech_data matches 1 run scoreboard players set $world.in_4 du_data 1
execute if score $base.cf.ore_compatibility mech_data matches 1 run scoreboard players set $world.in_5 du_data 1
# ignore placement restrictions
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
data merge storage du:temp {object:{dimension:"minecraft:overworld"}}
execute if score $base.cf.uranium_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.uranium_ore mech_data = $world.out_0 du_data

#### Emerald Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data -64
scoreboard players set $world.in_1 du_data 0
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.cf.emerald_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.cf.emerald_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 1
scoreboard players set $world.in_5 du_data 2
# ignore placement restrictions
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
data merge storage du:temp {object:{dimension:"minecraft:overworld"}}
execute if score $base.cf.emerald_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.emerald_ore mech_data = $world.out_0 du_data
