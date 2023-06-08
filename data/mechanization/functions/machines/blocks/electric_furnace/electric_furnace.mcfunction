
# get has item
function mechanization:base/utils/redstone_active
execute if score #active mechanization.data matches 1 unless block ~ ~ ~ minecraft:furnace{Items:[{Slot:0b}]} run scoreboard players set #active mechanization.data 0
execute if score #active mechanization.data matches 1 if score @s energy.storage matches ..19 if entity @s[tag=!mechanization.upgraded.nether] run scoreboard players set #active mechanization.data 0
execute if score #active mechanization.data matches 1 if score @s energy.storage matches ..199 if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #active mechanization.data 0

# change burn & cooktime
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 20.. if entity @s[tag=!mechanization.upgraded] run data merge block ~ ~ ~ {BurnTime:200}
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 20.. if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] run data merge block ~ ~ ~ {BurnTime:200s,CookTimeTotal:150s}
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 20.. if entity @s[tag=mechanization.upgraded.ender] run data merge block ~ ~ ~ {BurnTime:200s,CookTimeTotal:100s}
execute if score #active mechanization.data matches 1 if score @s energy.storage matches 200.. if entity @s[tag=mechanization.upgraded.nether] run data merge block ~ ~ ~ {BurnTime:200s,CookTime:1,CookTimeTotal:19s}

execute if score #active mechanization.data matches 1 if score @s energy.storage matches ..19 if entity @s[tag=!mechanization.upgraded.nether] run data merge block ~ ~ ~ {BurnTime:1s}
execute if score #active mechanization.data matches 1 if score @s energy.storage matches ..199 if entity @s[tag=mechanization.upgraded.nether] run data merge block ~ ~ ~ {BurnTime:1s}

execute if score #active mechanization.data matches 0 if block ~ ~ ~ minecraft:furnace[lit=true] run data merge block ~ ~ ~ {BurnTime:1s}

# use power
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.upgraded.nether] run scoreboard players remove @s energy.storage 20
execute if score #active mechanization.data matches 1 if entity @s[tag=mechanization.upgraded.nether] run scoreboard players remove @s energy.storage 200

# display
function mechanization:base/utils/generate_energy_bar_ui
execute if score #active mechanization.data matches 1 if block ~ ~ ~ minecraft:furnace[lit=false] run function mechanization:base/utils/set_furnace_lit

execute if score #active mechanization.data matches 0 store success entity @s item.tag.CustomModelData int 6422003 if entity @s
execute if score #active mechanization.data matches 1 store success entity @s item.tag.CustomModelData int 6422905 if entity @s
execute if score #active mechanization.data matches 1 if entity @s[tag=!mechanization.muffled] if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.electric_furnace block @a[distance=..16] ~ ~ ~

## cleanup
execute unless block ~ ~ ~ minecraft:furnace run function mechanization:base/utils/break_block/break_machine_t1
