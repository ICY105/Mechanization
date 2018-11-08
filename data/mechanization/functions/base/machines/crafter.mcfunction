scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run clear @s damaged_anvil 1
execute if score temp_0 mech_data matches 1 run function give:mech_base/machine_crafter
execute if score temp_0 mech_data matches 1 run scoreboard players remove @s mech_crafter 1
