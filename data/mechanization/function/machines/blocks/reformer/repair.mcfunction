
execute if items block ~ ~ ~ container.12 *[!minecraft:damage] run return fail
execute if items block ~ ~ ~ container.12 *[!minecraft:max_damage] run return fail
execute if items block ~ ~ ~ container.12 *[minecraft:unbreakable] run return fail

execute store result score #damage mechanization.data run data get block ~ ~ ~ Items[{Slot:12b}].components."minecraft:damage"
execute unless score #damage mechanization.data matches 1.. run return fail

scoreboard players remove @s energy.storage 128
scoreboard players remove @s fluid.storage.0 1
scoreboard players remove @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,tag=!mechanization.upgraded.nether] fluid.storage.0 1

execute if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0

scoreboard players remove #damage mechanization.data 1
execute if score #damage mechanization.data matches 1.. if entity @s[tag=mechanization.upgraded] run scoreboard players remove #damage mechanization.data 1
execute store result block ~ ~ ~ Items[{Slot:12b}].components."minecraft:damage" int 1 run scoreboard players get #damage mechanization.data

item modify entity @s contents {"function":"minecraft:set_custom_model_data","value":6422954}
