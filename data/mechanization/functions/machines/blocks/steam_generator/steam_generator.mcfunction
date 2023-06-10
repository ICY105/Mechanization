

## Main
execute if score @s mechanization.data matches 1.. run scoreboard players remove @s mechanization.data 1

# ui
execute unless score @s mechanization.data matches 1.. unless score @s fluid.storage.1 matches 3900.. if score @s fluid.storage.0 matches 1.. if data block ~ ~ ~ Items[{Slot:10b}] run function mechanization:machines/blocks/steam_generator/add_fuel
function mechanization:machines/blocks/steam_generator/gui

# generate heat
scoreboard players set #steam mechanization.data 12
execute if entity @s[tag=mechanization.upgraded] run scoreboard players add #steam mechanization.data 6
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players add #steam mechanization.data 6
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players add #steam mechanization.data 36
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players remove @s fluid.storage.1 2
scoreboard players operation #steam mechanization.data *= #machines.cf.steam_gen.power mechanization.data
scoreboard players operation #steam mechanization.data /= #cons.100 mechanization.data

# convert water + heat into steam
execute if score @s mechanization.data matches 1.. if score @s fluid.storage.0 matches 1.. run scoreboard players operation @s fluid.storage.1 += #steam mechanization.data
execute if score @s mechanization.data matches 1.. if score @s fluid.storage.0 matches 1.. run scoreboard players operation @s fluid.storage.0 -= #steam mechanization.data
execute if score @s mechanization.data matches 1.. if score @s fluid.storage.0 matches ..-1 run scoreboard players set @s fluid.storage.0 0
execute if score @s mechanization.data matches 1.. if score @s fluid.storage.1 matches 4001.. run scoreboard players set @s fluid.storage.1 4000

# convert steam into power
scoreboard players operation #steam mechanization.data += #steam mechanization.data
execute if score @s fluid.storage.1 matches 2000.. run scoreboard players operation #storage mechanization.data = @s fluid.storage.1
execute if score @s fluid.storage.1 matches 2000.. run scoreboard players remove #storage mechanization.data 2000
execute if score @s fluid.storage.1 matches 2000.. if score #storage mechanization.data > #steam mechanization.data run scoreboard players operation #storage mechanization.data = #steam mechanization.data
execute if score @s fluid.storage.1 matches 2000.. if score @s energy.storage matches ..2000 run scoreboard players operation @s energy.storage += #storage mechanization.data
execute if score @s fluid.storage.1 matches 2000.. run scoreboard players operation @s fluid.storage.1 -= #storage mechanization.data

execute if score @s fluid.storage.1 matches 1.. unless data entity @s item.tag.fluids[1].id run data modify entity @s item.tag.fluids[1] set from storage fluid:definitions fluid_data[{id:"steam"}]

# leak steam if no fuel
execute if score @s mechanization.data matches 0 if score @s fluid.storage.1 matches 10.. run scoreboard players remove @s fluid.storage.1 10

# model
execute if score @s mechanization.data matches 0 store success entity @s item.tag.CustomModelData int 6422001 if entity @s
execute if score @s mechanization.data matches 1.. store success entity @s item.tag.CustomModelData int 6422902 if entity @s

execute if score @s[tag=!mechanization.muffled] mechanization.data matches 1.. if score #timer.100 mechanization.data matches 0..19 run playsound mechanization:machines.steam_generator block @a[distance=..16] ~ ~ ~

## cleanup
execute unless block ~ ~ ~ minecraft:barrel run function mechanization:base/utils/break_block/break_machine_t1
