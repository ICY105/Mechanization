
# Arid Alloy
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:1b} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_arid_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:1b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

# Aqueous Alloy
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:2b} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_aqueous_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:2b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data

# Verdant Alloy
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:3b} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_verdant_alloy"} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:3b} run scoreboard players operation @s mechanization.time = #machines.cf.arc_furnace.speed_ingot mechanization.data
