
# processing
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 0 run scoreboard players set @s mechanization.time 0

execute if score @s mechanization.time matches 1 run function mechanization:nuclear/blocks/centrifuge/recipes/output
execute if score #active mechanization.data matches 1 unless score @s mechanization.time matches 2.. if score @s energy.storage >= #nuclear.cf.centrifuge.power mechanization.data run function mechanization:nuclear/blocks/centrifuge/recipes/input

execute if score @s mechanization.time matches 1.. if score @s energy.storage < #nuclear.cf.centrifuge.power mechanization.data run scoreboard players set @s mechanization.time 0
execute if score @s mechanization.time matches 1.. if score @s energy.storage >= #nuclear.cf.centrifuge.power mechanization.data run scoreboard players operation @s energy.storage -= #nuclear.cf.centrifuge.power mechanization.data
execute if score @s mechanization.time matches 1.. run scoreboard players remove @s mechanization.time 1

# effects
execute if score @s mechanization.time matches 0 store success entity @s item.tag.CustomModelData int 6423000 if entity @s
execute if score @s mechanization.time matches 1.. store success entity @s item.tag.CustomModelData int 6423200 if entity @s
execute if score @s[tag=!mechanization.muffled] mechanization.time matches 1.. run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~ 0.3 1
execute if score @s mechanization.time matches 1.. if entity @s[tag=!mechanization.muffled] if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:nuclear.centrifuge block @a[distance=..16] ~ ~ ~

# ui
function mechanization:nuclear/blocks/centrifuge/gui

# cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t2
