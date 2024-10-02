
# hopper input
execute if block ~ ~1 ~ minecraft:hopper[facing=down] run function mechanization:machines/blocks/arc_furnace/m.hopper_input {location:"~ ~1 ~"}
execute if block ~1 ~ ~ minecraft:hopper[facing=west] run function mechanization:machines/blocks/arc_furnace/m.hopper_input {location:"~1 ~ ~"}
execute if block ~-1 ~ ~ minecraft:hopper[facing=east] run function mechanization:machines/blocks/arc_furnace/m.hopper_input {location:"~-1 ~ ~"}
execute if block ~ ~ ~1 minecraft:hopper[facing=north] run function mechanization:machines/blocks/arc_furnace/m.hopper_input {location:"~ ~ ~1"}
execute if block ~ ~ ~-1 minecraft:hopper[facing=south] run function mechanization:machines/blocks/arc_furnace/m.hopper_input {location:"~ ~ ~-1"}

# process recipes
scoreboard players operation #needed_energy mechanization.data = #machines.cf.arc_furnace.power mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #needed_energy mechanization.data *= #cons.5 mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #needed_energy mechanization.data /= #cons.4 mechanization.data

function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0
execute if score #active mechanization.data matches 1 if score @s mechanization.time matches 1 if items block ~ ~ ~ container.12 * run function mechanization:machines/blocks/arc_furnace/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if items block ~ ~ ~ container.12 * if score @s energy.storage >= #needed_energy mechanization.data run function mechanization:machines/blocks/arc_furnace/recipes/input

# processing
execute if score @s mechanization.time matches 1.. if score @s energy.storage < #needed_energy mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #needed_energy mechanization.data run scoreboard players operation @s energy.storage -= #needed_energy mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

# effects
execute if score @s mechanization.time matches 0 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422027}
execute if score @s mechanization.time matches 1.. run item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422949}
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.arc_furnace block @a[distance=..16] ~ ~ ~

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
