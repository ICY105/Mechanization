
execute if entity @s[tag=mechanization.machine_frame.t1] run loot spawn ~ ~ ~ loot mechanization:base/tier_1_machine_frame
execute if entity @s[tag=mechanization.machine_frame.t2] run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute if entity @s[tag=mechanization.machine_frame.t3] run loot spawn ~ ~ ~ loot mechanization:base/tier_3_machine_frame
execute if entity @s[tag=mechanization.crystal_block] run loot spawn ~ ~ ~ loot mechanization:base/crystal_composite_block
execute if entity @s[tag=mechanization.tin_block] run loot spawn ~ ~ ~ loot mechanization:base/tin_block
execute if entity @s[tag=mechanization.raw_tin_block] run loot spawn ~ ~ ~ loot mechanization:base/tin_raw_block
execute if entity @s[tag=mechanization.titanium_block] run loot spawn ~ ~ ~ loot mechanization:base/titanium_block
execute if entity @s[tag=mechanization.raw_titanium_block] run loot spawn ~ ~ ~ loot mechanization:base/titanium_raw_block
execute if entity @s[tag=mechanization.steel_block] run loot spawn ~ ~ ~ loot mechanization:base/steel_block
execute if entity @s[tag=mechanization.raw_steel_block] run loot spawn ~ ~ ~ loot mechanization:base/steel_raw_block
execute if entity @s[tag=mechanization.structural_block] run loot spawn ~ ~ ~ loot mechanization:base/structural_block
execute if entity @s[tag=mechanization.raw_structural_block] run loot spawn ~ ~ ~ loot mechanization:base/structural_raw_block
execute if entity @s[tag=mechanization.conductive_block] run loot spawn ~ ~ ~ loot mechanization:base/conductive_block
execute if entity @s[tag=mechanization.raw_conductive_block] run loot spawn ~ ~ ~ loot mechanization:base/conductive_raw_block
execute if entity @s[tag=mechanization.titanium_steel_block] run loot spawn ~ ~ ~ loot mechanization:base/titanium_steel_block
execute if entity @s[tag=mechanization.raw_titanium_steel_block] run loot spawn ~ ~ ~ loot mechanization:base/titanium_steel_raw_block
execute if entity @s[tag=mechanization.reinforced_structural_block] run loot spawn ~ ~ ~ loot mechanization:base/reinforced_structural_block
execute if entity @s[tag=mechanization.raw_reinforced_structural_block] run loot spawn ~ ~ ~ loot mechanization:base/reinforced_structural_raw_block
execute if entity @s[tag=mechanization.super_conductive_block] run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_block
execute if entity @s[tag=mechanization.raw_super_conductive_block] run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_raw_block
execute if entity @s[tag=mechanization.ender_block] run loot spawn ~ ~ ~ loot mechanization:base/ender_block
execute if entity @s[tag=mechanization.raw_ender_block] run loot spawn ~ ~ ~ loot mechanization:base/ender_raw_block
execute if entity @s[tag=mechanization.nether_block] run loot spawn ~ ~ ~ loot mechanization:base/nether_block
execute if entity @s[tag=mechanization.raw_nether_block] run loot spawn ~ ~ ~ loot mechanization:base/nether_raw_block
execute if entity @s[tag=mechanization.uranium_block] run loot spawn ~ ~ ~ loot mechanization:base/uranium_block
execute if entity @s[tag=mechanization.raw_uranium_block] run loot spawn ~ ~ ~ loot mechanization:base/uranium_raw_block
execute if entity @s[tag=mechanization.plutonium_block] run loot spawn ~ ~ ~ loot mechanization:base/plutonium_block
execute if entity @s[tag=mechanization.raw_plutonium_block] run loot spawn ~ ~ ~ loot mechanization:base/plutonium_raw_block

setblock ~ ~ ~ minecraft:air replace
kill @s
