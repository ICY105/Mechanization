
#kill floating DU entity
kill @e[tag=du_furnace,distance=..1]

#### Machines

#Tier 1 Battery
execute if score in_0 mech_data matches 1000 run summon armor_stand ~ ~ ~ {Tags:["mech_storage1","mech_power_storage","mech_effects"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6421000}}]}

#Tier 2 Battery
execute if score in_0 mech_data matches 1001 run summon armor_stand ~ ~ ~ {Tags:["mech_storage2","mech_power_storage","mech_effects"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6421009}}]}

#Tier 3 Battery
execute if score in_0 mech_data matches 1002 run summon armor_stand ~ ~ ~ {Tags:["mech_storage3","mech_power_storage","mech_effects"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_power:0,mech_gridid:0,CustomModelData:6421018}}]}
execute if score in_0 mech_data matches 1006 run summon armor_stand ~ ~ ~ {Tags:["mech_storage3","mech_power_storage","mech_effects","mech_storage_creative"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_power:0,mech_gridid:0,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],CustomModelData:6421023}}]}

#Quantum Battery
execute if score in_0 mech_data matches 1003 run summon armor_stand ~ ~ ~ {Tags:["mech_storageq","mech_power_storage","mech_effects"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],CustomModelData:6421027}}]}
execute if score in_0 mech_data matches 1003 run scoreboard players set @e[tag=mech_storageq,distance=..0.5] mech_data 0

#Energy Relay
execute if score in_0 mech_data matches 1004 run summon armor_stand ~ ~ ~ {Tags:["mech_energy_relay","mech_receiver","mech_no_upgrade"],Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{mech_power:0,mech_gridid:0,mech_data:0,CustomModelData:6421036}}]}
execute if score in_0 mech_data matches 1004 run scoreboard players set @e[tag=mech_energy_relay,distance=..0.5] mech_data 0
execute if score in_0 mech_data matches 1004 run scoreboard players set @e[tag=mech_energy_relay,distance=..0.5] mech_power 0

#general cases
execute if score in_0 mech_data matches 1000..1006 run setblock ~ ~ ~ barrier replace
execute if score in_0 mech_data matches 1000..1004 run scoreboard players set @e[tag=mech_power_storage,distance=..0.75] mech_power 0

#machine crafter
execute if score in_0 mech_data matches 1005 run summon armor_stand ~ ~ ~ {Tags:["mech_machine_crafter","du_crafter"],Marker:1b,Fire:32676,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421037}}]}
execute if score in_0 mech_data matches 1005 run setblock ~ ~ ~ minecraft:barrel{CustomName:'[{"translate":"mech.block.machine_crafting_table","color":"dark_aqua","italic":false}]'}

#run global functions
function #mechanization:place_block
scoreboard players set @e[tag=mech_receiver,distance=..0.75] mech_power 0
scoreboard players set @e[tag=mech_transmitter,distance=..0.75] mech_power 0
scoreboard players operation @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] mech_gridid = @p mech_gridid
kill @e[tag=du_furnace,type=area_effect_cloud,distance=..0.75]

#set stored data
execute store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_upgrade
execute if score temp_1 mech_data matches 1..3 run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] add mech_upgraded
execute if score temp_1 mech_data matches 2 run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] add mech_upgrade_nether
execute if score temp_1 mech_data matches 3 run tag @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] add mech_upgrade_ender

execute store result score temp_1 mech_data run data get entity @s SelectedItem.tag.mech_energy
execute if score temp_1 mech_data matches 1.. run scoreboard players operation @e[scores={mech_power=0..},sort=nearest,limit=1,distance=..0.75] mech_power = temp_1 mech_data

#### Resources

#copper
execute if score in_0 mech_data matches 1300 if score $base.config.ore_compatibility mech_data matches 0 run setblock ~ ~ ~ minecraft:stone_brick_slab[waterlogged=true,type=double]
execute if score in_0 mech_data matches 1300 if score $base.config.ore_compatibility mech_data matches 1 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421300,du_block_id:1300}}]}}
execute if score in_0 mech_data matches 1304 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421304,du_block_id:1304}}]}}

#tin
execute if score in_0 mech_data matches 1310 if score $base.config.ore_compatibility mech_data matches 0 run setblock ~ ~ ~ minecraft:stone_slab[waterlogged=true,type=double]
execute if score in_0 mech_data matches 1310 if score $base.config.ore_compatibility mech_data matches 1 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421310,du_block_id:1310}}]}}
execute if score in_0 mech_data matches 1314 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421314,du_block_id:1314}}]}}

#titanium
execute if score in_0 mech_data matches 1320 if score $base.config.ore_compatibility mech_data matches 0 run setblock ~ ~ ~ minecraft:smooth_stone_slab[waterlogged=true,type=double]
execute if score in_0 mech_data matches 1320 if score $base.config.ore_compatibility mech_data matches 1 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421320,du_block_id:1320}}]}}
execute if score in_0 mech_data matches 1324 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421324,du_block_id:1324}}]}}

#steel
execute if score in_0 mech_data matches 1333 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421333,du_block_id:1333}}]}}

#structural
execute if score in_0 mech_data matches 1343 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421343,du_block_id:1343}}]}}

#conductive
execute if score in_0 mech_data matches 1353 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421353,du_block_id:1353}}]}}

#titanium-steel
execute if score in_0 mech_data matches 1363 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421363,du_block_id:1363}}]}}

#reinforced structural
execute if score in_0 mech_data matches 1373 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421373,du_block_id:1373}}]}}

#super conductive
execute if score in_0 mech_data matches 1383 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421383,du_block_id:1383}}]}}

#ender
execute if score in_0 mech_data matches 1393 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421393,du_block_id:1393}}]}}

#machine frames
execute if score in_0 mech_data matches 1415 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421415,du_block_id:1415}}]}}
execute if score in_0 mech_data matches 1416 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421416,du_block_id:1416}}]}}
execute if score in_0 mech_data matches 1417 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421417,du_block_id:1417}}]}}

#nether
execute if score in_0 mech_data matches 1403 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421403,du_block_id:1403}}]}}

#crystal
execute if score in_0 mech_data matches 1411 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421411,du_block_id:1411}}]}}

#uranium
execute if score in_0 mech_data matches 1430 if score $base.config.ore_compatibility mech_data matches 0 run setblock ~ ~ ~ minecraft:cobblestone_slab[waterlogged=true,type=double]
execute if score in_0 mech_data matches 1430 if score $base.config.ore_compatibility mech_data matches 1 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421430,du_block_id:1430}}]}}
execute if score in_0 mech_data matches 1434 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421434,du_block_id:1434}}]}}

#plutonium
execute if score in_0 mech_data matches 1443 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:0,SpawnRange:0,Delay:0,MinSpawnDelay:20000,MaxSpawnDelay:20000,MaxNearbyEntities:0,RequiredPlayerRange:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blast_furnace",Count:1b,tag:{CustomModelData:6421443,du_block_id:1443}}]}}
