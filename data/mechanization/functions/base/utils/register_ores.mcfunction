
#### Copper Ore

#min Y elevation [1,255]
scoreboard players set $world.in_0 du_data 24
#max Y elevation [1,255] (needs to be equal or larger than min y elevation)
scoreboard players set $world.in_1 du_data 64
#min number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.config.copper_rarity mech_data
#max number of veins [1,32] (needs to be equal or larger than min veins)
scoreboard players operation $world.in_3 du_data = $base.config.copper_rarity mech_data
#min ores per vein [1,16]
scoreboard players set $world.in_4 du_data 4
#max ores per vein [1,16] (needs to be equal or larger than min ores)
scoreboard players set $world.in_5 du_data 6
#Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
execute if score $base.config.copper_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.copper_ore mech_data = $world.out_0 du_data

#### Tin Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data 24
scoreboard players set $world.in_1 du_data 64
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.config.tin_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.config.tin_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 4
scoreboard players set $world.in_5 du_data 6
# Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
execute if score $base.config.tin_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.tin_ore mech_data = $world.out_0 du_data

#### Titanium Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data 1
scoreboard players set $world.in_1 du_data 16
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.config.titanium_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.config.titanium_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 1
scoreboard players set $world.in_5 du_data 3
# Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
execute if score $base.config.titanium_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.titanium_ore mech_data = $world.out_0 du_data

#### Uranium Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data 1
scoreboard players set $world.in_1 du_data 24
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.config.uranium_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.config.uranium_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 2
scoreboard players set $world.in_5 du_data 4
# Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
execute if score $base.config.uranium_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.uranium_ore mech_data = $world.out_0 du_data

#### Emerald Ore

# Y elevation [1,255]
scoreboard players set $world.in_0 du_data 1
scoreboard players set $world.in_1 du_data 16
# number of veins [1,32]
scoreboard players operation $world.in_2 du_data = $base.config.emerald_rarity mech_data
scoreboard players operation $world.in_3 du_data = $base.config.emerald_rarity mech_data
# ores per vein [1,16]
scoreboard players set $world.in_4 du_data 1
scoreboard players set $world.in_5 du_data 2
# Dimension id [-1,1]
scoreboard players set $world.in_6 du_data 0

#Call Registry Function
execute if score $base.config.emerald_rarity mech_data matches 1.. run function du:world/registry/register_ore
scoreboard players operation $cons.emerald_ore mech_data = $world.out_0 du_data
