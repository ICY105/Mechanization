
#kill floating DU entity
kill @e[tag=du_furnace,distance=..0.5]

#### Machines

#batteries
execute if score $id mech_data matches 1000 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_battery1","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421900},Count:1b}}
execute if score $id mech_data matches 1001 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_battery2","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421909},Count:1b}}
execute if score $id mech_data matches 1002 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_battery3","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421918},Count:1b}}

#capacitors
execute if score $id mech_data matches 1010 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_capacitor1","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421936},Count:1b}}
execute if score $id mech_data matches 1011 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_capacitor2","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421945},Count:1b}}
execute if score $id mech_data matches 1012 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_capacitor3","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421954},Count:1b}}

#creative battery
execute if score $id mech_data matches 1006 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_energy_relay","mech_receiver","mech_no_upgrade"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421923},Count:1b}}

#Quantum Battery
execute if score $id mech_data matches 1003 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_battery_qu","mech_power_storage","mech_effects"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421927},Count:1b}}
execute if score $id mech_data matches 1003 run scoreboard players set @e[tag=mech_storage_qu,distance=..0.5] mech_data 0

#Energy Relay
execute if score $id mech_data matches 1004 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_energy_relay","mech_receiver","mech_no_upgrade"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421004},Count:1b}}
execute if score $id mech_data matches 1004 run scoreboard players set @e[tag=mech_energy_relay,distance=..0.5] mech_data 0
execute if score $id mech_data matches 1004 run scoreboard players set @e[tag=mech_energy_relay,distance=..0.5] mech_power 0

#general cases
execute if score $id mech_data matches 1000..1012 run setblock ~ ~ ~ barrier replace
execute if score $id mech_data matches 1000..1004 run scoreboard players set @e[tag=mech_power_storage,distance=..0.75] mech_power 0
execute if score $id mech_data matches 1010..1012 run scoreboard players set @e[tag=mech_power_storage,distance=..0.75] mech_power 0

#machine crafter
execute if score $id mech_data matches 1005 run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mech_machine_crafter","du_crafter"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421005},Count:1b}}
execute if score $id mech_data matches 1005 run setblock ~ ~ ~ minecraft:barrel{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee06","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-256","font":"space:default","with":[{"translate":"mech.block.machine_crafting_table","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}

#run global functions
function #mechanization:place_block
scoreboard players set @e[tag=mech_receiver,distance=..0.75] mech_power 0
scoreboard players set @e[tag=mech_transmitter,distance=..0.75] mech_power 0
scoreboard players operation @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] mech_gridid = @p mech_gridid
kill @e[tag=du_furnace,type=area_effect_cloud,distance=..0.75]

#set stored data
execute store result score $temp_1 mech_data run data get entity @s SelectedItem.tag.mech_upgrade
execute if score $temp_1 mech_data matches 1..3 run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] add mech_upgraded
execute if score $temp_1 mech_data matches 2 run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] add mech_upgrade_nether
execute if score $temp_1 mech_data matches 3 run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] add mech_upgrade_ender

execute store result score $temp_1 mech_data run data get entity @s SelectedItem.tag.mech_energy
execute if score $temp_1 mech_data matches 1.. run scoreboard players operation @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] mech_power = $temp_1 mech_data

#### Resources

execute if score $id mech_data matches 1300..1499 if block ~ ~ ~ minecraft:blast_furnace run setblock ~ ~ ~ minecraft:barrier

#machine frames
execute if score $id mech_data matches 1007 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421007},Count:1b}}
execute if score $id mech_data matches 1008 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421008},Count:1b}}
execute if score $id mech_data matches 1009 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6421009},Count:1b}}

#crystal
execute if score $id mech_data matches 1411 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421411},Count:1b}}

#tin
execute if score $id mech_data matches 1310 run setblock ~ ~ ~ minecraft:stone_slab[waterlogged=true,type=double]
execute if score $id mech_data matches 1314 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421314},Count:1b}}
execute if score $id mech_data matches 1318 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421318},Count:1b}}

#titanium
execute if score $id mech_data matches 1320 run setblock ~ ~ ~ minecraft:smooth_stone_slab[waterlogged=true,type=double]
execute if score $id mech_data matches 1324 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421324},Count:1b}}
execute if score $id mech_data matches 1328 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421328},Count:1b}}

#steel
execute if score $id mech_data matches 1333 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421333},Count:1b}}
execute if score $id mech_data matches 1337 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421337},Count:1b}}

#structural
execute if score $id mech_data matches 1343 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421343},Count:1b}}
execute if score $id mech_data matches 1347 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421347},Count:1b}}

#conductive
execute if score $id mech_data matches 1353 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421353},Count:1b}}
execute if score $id mech_data matches 1357 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421357},Count:1b}}

#titanium-steel
execute if score $id mech_data matches 1363 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421363},Count:1b}}
execute if score $id mech_data matches 1367 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421367},Count:1b}}

#reinforced structural
execute if score $id mech_data matches 1373 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421373},Count:1b}}
execute if score $id mech_data matches 1377 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421377},Count:1b}}

#super conductive
execute if score $id mech_data matches 1383 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421383},Count:1b}}
execute if score $id mech_data matches 1387 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421387},Count:1b}}

#ender
execute if score $id mech_data matches 1393 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421393},Count:1b}}
execute if score $id mech_data matches 1397 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421397},Count:1b}}

#nether
execute if score $id mech_data matches 1403 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421403},Count:1b}}
execute if score $id mech_data matches 1407 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421407},Count:1b}}

#uranium
execute if score $id mech_data matches 1430 run setblock ~ ~ ~ minecraft:cobblestone_slab[waterlogged=true,type=double]
execute if score $id mech_data matches 1434 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421434},Count:1b}}
execute if score $id mech_data matches 1438 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421438},Count:1b}}

#plutonium
execute if score $id mech_data matches 1443 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421443},Count:1b}}
execute if score $id mech_data matches 1447 run summon minecraft:item_frame ~ ~ ~ {Tags:["mech_resource_block"],Invisible:1,Invulnerable:1,Fixed:1b,Silent:1b,Item:{id:"minecraft:blast_furnace",tag:{CustomModelData:6421447},Count:1b}}


