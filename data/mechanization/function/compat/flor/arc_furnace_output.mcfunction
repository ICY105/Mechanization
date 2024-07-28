
# Arid Alloy
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:1b} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_arid_alloy"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:1b} run loot replace block -30000000 0 3201 container.0 loot mechanization:compat/vial_of_molten_arid_alloy
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:1b} run scoreboard players add @s mechanization.fluid.0 144

# Arid Alloy
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:2b} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_aqueous_alloy"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:2b} run loot replace block -30000000 0 3201 container.0 loot mechanization:compat/vial_of_molten_aqueous_alloy
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:2b} run scoreboard players add @s mechanization.fluid.0 144

# Arid Alloy
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:3b} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_verdant_alloy"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:3b} run loot replace block -30000000 0 3201 container.0 loot mechanization:compat/vial_of_molten_verdant_alloy
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item.tag.flor_dat{alloy:3b} run scoreboard players add @s mechanization.fluid.0 144

