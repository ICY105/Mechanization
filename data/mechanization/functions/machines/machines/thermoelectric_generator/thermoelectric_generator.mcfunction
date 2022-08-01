
# ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/thermoelectric_generator/tank_1_input
execute if data block ~ ~ ~ Items[{Slot:6b}] run function mechanization:machines/machines/thermoelectric_generator/tank_2_input

# active
function mechanization:base/utils/redstone_active
execute if score @s energy.storage matches 4000.. run scoreboard players set #active mechanization.data 0
execute unless score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 5.. run scoreboard players set #active mechanization.data 0
execute unless score @s[tag=!mechanization.upgraded.nether] mechanization.fluid.1 matches 5.. run scoreboard players set #active mechanization.data 0

# gui
function mechanization:machines/machines/thermoelectric_generator/gui

# power
execute if score #active mechanization.data matches 1 store result score #temp.0 mechanization.data run data get entity @s Item.tag.tank_1.tag.mechanization.liquid.temperature
execute if score #active mechanization.data matches 1 store result score #temp.1 mechanization.data run data get entity @s Item.tag.tank_2.tag.mechanization.liquid.temperature
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.nether] mechanization.fluid.1 matches ..4 run scoreboard players set #temp.0 mechanization.data 500
execute if score #active mechanization.data matches 1 if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches ..4 run scoreboard players set #temp.0 mechanization.data 100

scoreboard players remove #temp.0 mechanization.data 100
scoreboard players operation #temp.1 mechanization.data /= #cons.10 mechanization.data
scoreboard players operation #temp.1 mechanization.data -= #temp.0 mechanization.data
scoreboard players operation #temp.1 mechanization.data /= #cons.10 mechanization.data

execute if score #temp.1 mechanization.data matches ..0 run scoreboard players set #temp.1 mechanization.data 1
scoreboard players operation #temp.1 mechanization.data *= #machines.cf.thermoelectric.power mechanization.data
scoreboard players operation #temp.1 mechanization.data /= #cons.100 mechanization.data

execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #temp.1 mechanization.data *= #cons.3 mechanization.data
execute if entity @s[tag=mechanization.upgraded] run scoreboard players operation #temp.1 mechanization.data /= #cons.2 mechanization.data
execute if score #active mechanization.data matches 1 run scoreboard players operation @s energy.storage += #temp.1 mechanization.data
execute if score #active mechanization.data matches 1 if score @s mechanization.fluid.0 matches 5.. run scoreboard players remove @s mechanization.fluid.0 5
execute if score #active mechanization.data matches 1 if score @s mechanization.fluid.1 matches 5.. run scoreboard players remove @s mechanization.fluid.1 5
execute if score #active mechanization.data matches 1 if score @s mechanization.fluid.0 matches 0 run data modify entity @s Item.tag.tank_1 set value {}
execute if score #active mechanization.data matches 1 if score @s mechanization.fluid.1 matches 0 run data modify entity @s Item.tag.tank_2 set value {}

execute if entity @s[tag=!mechanization.muffled] if score #active mechanization.data matches 1 if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.thermoelectric_generator block @a[distance=..16] ~ ~ ~

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:machines/machines/liquid_pipe/remove_adjacent_pipes
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_machine_t1
