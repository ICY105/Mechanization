
# Tinker Table
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{copper:1b}} }}}}, {Slot:1b, id:"minecraft:lime_stained_glass"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{copper:1b}} }}}}], 1:[{Slot:0b, id:"minecraft:lime_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"tier1_machine_frame"} }}}, {Slot:2b, id:"minecraft:lime_stained_glass"}], 2:[{Slot:0b, id:"minecraft:diamond"},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:2b, id:"minecraft:diamond"} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/tinker_table

# Charging Stations
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}}], 1:[{Slot:0b, id:"minecraft:glass"}, {Slot:1b, components:{"minecraft:custom_data":{ mechanization:{id:"tier2_machine_frame"} }}}, {Slot:2b, id:"minecraft:glass"}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{steel:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/charging_station

# Portable Battery
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{redstone:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}} ]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/portable_battery

# Energy Saber
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{iron:1b}} }}}},  {Slot:1b, id:"minecraft:diamond"}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/energy_saber_red

# Drill
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{iron:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/drill

# Drill
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{iron:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{tin:1b}} }}}},  {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/drill

# Modular Armor
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{copper:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{copper:1b}} }}}}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{iron:1b}} }}}}, {Slot:1b, id:"minecraft:air"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{iron:1b}} }}}}], 2:[]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_helmet
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:iron_ingot"}, {Slot:1b, id:"minecraft:air"}, {Slot:2b, id:"minecraft:iron_ingot"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:iron_ingot"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{tin:1b}} }}}}, {Slot:2b, id:"minecraft:iron_ingot"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_chestplate
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{tin:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{tin:1b}} }}}}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}, {Slot:1b, id:"minecraft:air"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{copper:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{iron:1b}} }}}}, {Slot:1b, id:"minecraft:air"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{iron:1b}} }}}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_leggings
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{iron:1b}} }}}}, {Slot:1b, id:"minecraft:air"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{iron:1b}} }}}}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{tin:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{tin:1b}} }}}}], 2:[]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/modular_boots

# Rebreather
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}, {Slot:1b, id:"minecraft:turtle_helmet"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{steel:1b}} }}}}, {Slot:1b, id:"minecraft:glass"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{steel:1b}} }}}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/rebreather

# Night Vision Goggles
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{structural_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:1b, id:"minecraft:iron_helmet"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{steel:1b}} }}}}, {Slot:1b, id:"minecraft:lime_stained_glass"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{steel:1b}} }}}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/night_vision_goggles

# Hover Boots
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{structural_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{steel:1b}} }}}}, {Slot:1b, id:"minecraft:iron_boots"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{steel:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:phantom_membrane"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:phantom_membrane"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/hover_boots

# Phase Boots
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{titanium_steel:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{ender_alloy:1b}} }}}}, {Slot:1b, id:"minecraft:iron_boots"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{ender_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{super_conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/phase_boots

# Jetpack
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{reinforced_structural_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{titanium_steel:1b}} }}}}, {Slot:1b, id:"minecraft:elytra"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{titanium_steel:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/jetpack

# EPAC
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{titanium_steel:1b}} }}}}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/epac

# Chambers
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:red_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:red_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:red_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:red_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/accelerated_chamber
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:orange_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:orange_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:orange_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:orange_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/rapid_chamber
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:green_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:green_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:green_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:green_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/pressurized_chamber
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:blue_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:blue_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:blue_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:blue_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/blazing_chamber
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:purple_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:purple_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{reinforced_structural_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:purple_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:purple_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/supercharged_chamber


# Barrels
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/long_barrel
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ gem:{crystal_composite:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}], 1:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 2:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/split_barrel
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:echo_shard"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:1b, id:"minecraft:echo_shard"}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}], 2:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{super_conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{super_conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/sonic_barrel

# Pumps
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:red_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{redstone:1b}} }}}}, {Slot:2b, id:"minecraft:red_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{titanium_steel:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{nether_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{titanium_steel:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:red_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{redstone:1b}} }}}}, {Slot:2b, id:"minecraft:red_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/overclocked_pump
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:blue_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{redstone:1b}} }}}}, {Slot:2b, id:"minecraft:blue_stained_glass"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ gear:{titanium_steel:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ ingot:{ender_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{titanium_steel:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:blue_stained_glass"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ plate:{redstone:1b}} }}}}, {Slot:2b, id:"minecraft:blue_stained_glass"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/frigid_pump

# Heat Sinks
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{conductive_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:blue_ice"}, {Slot:1b, id:"minecraft:blue_ice"}, {Slot:2b, id:"minecraft:blue_ice"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/energized_heat_sink
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{Slot:0b, id:"minecraft:air"}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}, {Slot:2b, id:"minecraft:air"}], 1:[{Slot:0b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}, {Slot:1b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}, {Slot:2b, components:{"minecraft:custom_data":{smithed:{dict:{ rod:{structural_alloy:1b}} }}}}], 2:[{Slot:0b, id:"minecraft:blue_ice"}, {Slot:1b, id:"minecraft:blue_ice"}, {Slot:2b, id:"minecraft:blue_ice"}]} run loot replace block ~ ~ ~ container.16 loot mechanization:gadgets/passive_heat_sink
