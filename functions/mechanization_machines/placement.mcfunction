#solar panel
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"c7707595-4fe4-4f09-9def-4024397c7360"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["solar","generator"],Small:1,Invisible:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:4,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:stone_slab

#solar array
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"8be9912a-c383-40ec-b0e9-19f062014d0f"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0.01f,0f]},Marker:1b,Tags:["solar2","generator"],Small:1,Invisible:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:5,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:stone_slab

#furnace gen
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"fb3fa34f-f316-45d2-b0c0-951331d826e7"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.1 ~ {Marker:1b,Tags:["furnaceGen","generator"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:6,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:furnace 3 replace {CustomName:"§3Furnace Generator"}



#electric furnace
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"8bc21559-b0a5-4c6a-a67c-5b867f06cf42"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.1 ~ {Pose:{Head:[0f,0.01f,0f]},Marker:1b,Tags:["eleFurnace","machine"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:7,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:lit_furnace 3 replace {CustomName:"§1Electric Furnace"}

#quarry
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"5a85a821-bb1a-4982-a93d-ced87246216c"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["miner1","machine"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:beacon,Count:1}]}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["miner2"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,HandItems:[{id:diamond_pickaxe,Count:1,tag:{ench:[{id:32,lvl:1}]}},{}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:hopper 0 replace {CustomName:"§8Quarry"}

#grinder
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"c70bc8a2-61cb-46f8-955f-fd27026834f0"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~0.1 ~ {Pose:{Head:[0f,0.01f,0f]},Marker:1b,Tags:["Grinder","machine"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:9,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:lit_furnace 3 replace {CustomName:"§6Ore Grinder"}

#alloy furnace
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"e710f417-22bf-4455-a8cd-f8c5b631f2d0"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Pose:{Head:[0f,0.01f,0f]},Marker:1b,Tags:["alloy","machine"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:20,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:chest 1 replace {CustomName:"§8Alloy Furnace",Items:[{Slot:18b,id:"minecraft:diamond_shovel",Count:1b,tag:{Unbreakable:1,display:{Name:"§fGUI part, don't take."}},Damage:21s}]}

#industrial furnace
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"4b7f45c6-4331-454d-ace0-2828c80b6e86"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_Stand ~ ~0.1 ~ {Pose:{Head:[0f,0.01f,0f]},Marker:1b,Tags:["industrialFurnace","machine"],Small:1,NoGravity:1,Invisible:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:8,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:lit_furnace 3 replace {CustomName:"§4Industrial Furnace"}

#tree feller
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"69edd031-e5c7-9e54-d8ae-51ab67d1a44f"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["treeFeller","machine"],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:12,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:stone_slab

#mob grinder
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"96d9decd-ae56-499f-b241-b1421138af37"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["mobKiller","machine"],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:11,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:stone_slab

#auto farm
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"8f206973-cd58-41c7-afdf-f7eba2247856"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Farm","machine"],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:10,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:cobblestone_wall

#block breaker
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000024"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["block_breaker","machine","floating"],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:air

#Gravity Manipulator
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000026"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["gravity_manipulator","machine"],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:23,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier

#Teleporter core
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000028"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["teleporter_core","machine"],Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:25,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier
execute @s[score_checks_min=1] ~ ~ ~ summon item_frame ~ ~ ~1 {Item:{id:"minecraft:torch",Count:1b},Facing:0,ItemRotation:0}
execute @s[score_checks_min=1] ~ ~ ~ summon item_frame ~ ~ ~-1 {Item:{id:"minecraft:redstone_torch",Count:1b},Facing:2,ItemRotation:0}
execute @s[score_checks_min=1] ~ ~ ~ summon item_frame ~-1 ~ ~ {Item:{id:"minecraft:lever",Count:1b},Facing:1,ItemRotation:0}
execute @s[score_checks_min=1] ~ ~ ~ summon item_frame ~1 ~ ~ {Item:{id:"minecraft:end_rod",Count:1b},Facing:3,ItemRotation:0}



#chunkloader
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000022"}}
execute @s[score_checks_min=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Marker:1b,Tags:["chunk_loader","machine","floating"],ShowArms:1,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:diamond_shovel,Damage:22,Count:1b,tag:{Unbreakable:1}}]}
execute @s[score_checks_min=1] ~ ~ ~ setblock ~ ~ ~ minecraft:barrier
execute @s[score_checks_min=1] ~ ~ ~ summon area_effect_cloud 0 0 0 {Tags:["load_manager","load_new"],Duration:2000000000}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation @e[type=armor_stand,tag=chunk_loader,c=1] quantumFrequency = loaderID quantumFrequency
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,tag=load_new] quantumFrequency = loaderID quantumFrequency
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players add loaderID quantumFrequency 1
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players set @e[type=area_effect_cloud,tag=load_new] checks 0
execute @s[score_checks_min=1] ~ ~ ~ execute @e[type=area_effect_cloud,tag=load_new] ~ ~ ~ stats entity @s set SuccessCount @s checks
execute @s[score_checks_min=1] ~ ~ ~ function mechanization_base:position_scoreboard/search
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,tag=load_new] xPos = @e[type=area_effect_cloud,tag=x_cord] cord
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,tag=load_new] zPos = @e[type=area_effect_cloud,tag=z_cord] cord
execute @s[score_checks_min=1] ~ ~ ~ kill @e[type=area_effect_cloud,tag=search]
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,tag=load_new] remove load_new



#custom heads
testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000018"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-0000000000017"}}

testforblock ~ ~ ~ minecraft:skull -1 {Owner:{Id:"00000000-0000-0000-ee69-000000000020"}}
execute @s[score_checks_min=1] ~ ~ ~ blockdata ~ ~ ~ {Owner:{Id:"00000000-0000-0000-ee69-0000000000019"}}




#cleanup
scoreboard players add @e[type=armor_stand,tag=generator,r=2] powerSource 0
scoreboard players add @e[type=armor_stand,tag=machine,r=2] powerBuffer 0
scoreboard players set @e[type=armor_stand,r=2] checks 0
execute @e[type=armor_stand,c=1] ~ ~ ~ stats entity @s set SuccessCount @s checks