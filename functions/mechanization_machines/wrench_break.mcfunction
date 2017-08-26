execute @e[type=armor_stand,r=2,c=1,score_powerSource_min=-10000] ~ ~ ~ setblock ~ ~ ~ minecraft:air 0
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ setblock ~ ~ ~ minecraft:air 0

#solar panel
execute @e[type=armor_stand,r=2,c=1,score_powerSource_min=-10000] ~ ~ ~ execute @s[tag=solar] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§3Solar Panel",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"c7707595-4fe4-4f09-9def-4024397c7360",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ2ZmVlN2JiYjJhODI2YzY4ZjZhMzZjY2JkNzY5MzJjZGNkOWU2ZjIzNDMxYzQ3N2E2ZDMwZGU0ZjNhNiJ9fX0="}]}},display:{Name:"§3Solar Panel",Lore:["§fCreates energy from sunlight during the day.","§fProduces 6 kJ/s."]}},Damage:3s}}

#solar array
execute @e[type=armor_stand,r=2,c=1,score_powerSource_min=-10000] ~ ~ ~ execute @s[tag=solar2] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§1Solar Array",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"8be9912a-c383-40ec-b0e9-19f062014d0f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNmMzNkYmFjOGFlYTVkNzczZTFhNGI5YTBkOTg2MzZjN2I5ODgwNDE1MWM0MzI1MWQwYWQ4ODYyZjEwZjYifX19"}]}},display:{Name:"§1Solar Array",Lore:["§fCreates energy from sunlight during the day.","§fProduces 18 kJ/s."]}},Damage:3s}}

#furnace generator
execute @e[type=armor_stand,r=2,c=1,score_powerSource_min=-10000] ~ ~ ~ execute @s[tag=furnaceGen] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§3Furnace Generator",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"fb3fa34f-f316-45d2-b0c0-951331d826e7",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJhY2VlNGJhYjkwMjE4MDRlOTlkZmU0MTFlMTdlMTVjZmU3ZTA1MjI5M2EzNDk3NTc0ZGZkYjYyNjA1M2Y3In19fQ=="}]}},display:{Name:"§3Furnace Generator",Lore:["§fCreates energy from regular furnace fuel.","§fRequires an item in top slot to start producing energy.","§fProduces 24 kJ/s."]}},Damage:3s}}



#quarry
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=miner1] ~-1 0 ~-1 kill @e[tag=miner2,dy=256,dx=3,dz=3]
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=miner1] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§8Quarry",CustomNameVisible:1,Item:{Slot:4b,id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"5a85a821-bb1a-4982-a93d-ced87246216c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RlMzNjOTVmZWMxYjhkOTg4MjUwZjVmNWIzYTI0ODU3NDI0MzlmYWVhYTc1ZWQ1MDZlYTAxZDc1ZTE3ZjIxIn19fQ=="}]}},display:{Name:"§8Quarry",Lore:["§fDigs an 11x11 hole down to bedrock.","§fMined blocks are teleported to the quarry.","§fUses 120 kJ/s."]}},Damage:3s}}

#tree feller
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=treeFeller] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§2Tree Feller",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"69edd031-e5c7-9e54-d8ae-51ab67d1a44f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFlODI2ZTdkYjg0NDdmYmQ2Mjk4OGZlZTBlODNiYmRkNjk0Mzc4YWVmMTJkMjU3MmU5NzVmMDU5YTU0OTkwIn19fQ=="}]}},display:{Name:"§2Tree Feller",Lore:["§fChops down oak, spruce, birch,","§fand jungle trees above the tree feller.","§fUses 64 kJ/s."]}},Damage:3s}}

#auto farm
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=Farm] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§2Automatic Farm",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"8f206973-cd58-41c7-afdf-f7eba2247856",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI0YzZmZjE3MTRlYjJjM2I4NDRkNDZkMmU1ZWEyZjI2ZDI3M2EzM2VhYWE3NDRhYmY2NDViMDYwYjQ3ZDcifX19"}]}},display:{Name:"§2Automatic Farm",Lore:["§fHarvests crops in a 7x7 area around the farm.","§fUses 80 kJ/s."]}},Damage:3s}}

#mob grinder
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=mobKiller] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§4Mob Grinder",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"96d9decd-ae56-499f-b241-b1421138af37",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI2YmQ5NzI3YWJiNTVkNTQxNTI2NTc4OWQ0ZjI5ODQ3ODFhMzQzYzY4ZGNhZjU3ZjU1NGE1ZTlhYTFjZCJ9fX0="}]}},display:{Name:"§4Mob Grinder",Lore:["§fKills mobs in a 9x9 area around the grinder.","§fUses 96 kJ/s."]}},Damage:3s}}

#block breaker
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=block_breaker] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§8Block Breaker",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000024",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkyMTNkNDk1ODJmYmYzMmQ1NDZhODI2OWI0N2I3ZjExMDhhYjE1ZmI2NDZiMzk1ZjdlMDM2ZGY2NDZkYzc1OCJ9fX0="}]}},display:{Name:"§8Block Breaker",Lore:["§fUses 40 kJ/s."]}},Damage:3s}}
execute @s[score_checks_min=1] ~ ~ ~ kill @e[type=armor_stand,tag=block_breaker,c=1]

#gravity manipulator
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=gravity_manipulator] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§1Gravity Manipulator",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000026",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDQzNDI3Nzg0NWFjNDVhZDRmNjYxZTc0YjM1ZDJjMWY0MzE5NmNlOWI2ZDQ5NTU0NTc2ZWE0Y2Y2In19fQ=="}]}},display:{Name:"§1Gravity Manipulator",Lore:["§fAlters the effects of gravity in a 24 block radius.","§fUse wrench to change effect.","§fUses 200 kJ/s."]}},Damage:3s}}

#teleport
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=teleporter_core] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§5Teleporter",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000028",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmJlNmUzZDY1NTg5ODBkZGM2ZGI0ZGExODYwODc5NjJlNWU2NTYwMmY3OGRlNjU0NWZhMTE0ODhlNWZiYiJ9fX0="}]}},display:{Name:"§5Teleporter",Lore:["§fTeleports player to a linked teleporter.","§fChange frequency  by rotating item frames.","§fNote:  teleport must be chunk loaded to function.","§fUses 1000 kJ/teleport."]}},Damage:3s}}



#electric furnace
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=eleFurnace] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§1Electric Furnace",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"8bc21559-b0a5-4c6a-a67c-5b867f06cf42",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjM0NzI3OGNhNzJkYzMxOWIyMjQ5Yzk1MTg4Mjk4MzM5M2RkZTAyMDRhZmM2NDM0YmQzMjZmM2FiNTZiMjc4MSJ9fX0="}]}},display:{Name:"§1Electric Furnace",Lore:["§fStandard furnace that uses energy instead of fuel.","§fUses 20 kJ/s."]}},Damage:3s}}

#industrial furnace
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=industrialFurnace] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§4Industrial Furnace",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"4b7f45c6-4331-454d-ace0-2828c80b6e86",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ1NWI2ZWYxNmE4ZDRmOTNhYjYxM2I5NDQ1MDRiN2YxNmMzZGY1Y2EzNTNhYzg2MjE1MmZlYTkzODQ5ZDY3YSJ9fX0="}]}},display:{Name:"§4Industrial Furnace",Lore:["§fSuper fast furnace that smelts x48 times faster.","§fUses 200 kJ/s."]}},Damage:3s}}

#ore grinder
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=Grinder] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§6Ore Grinder",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"c70bc8a2-61cb-46f8-955f-fd27026834f0",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI5NmYwOTI1MjRhZTljMmEyZTg3ODgxY2I0MTVhZGIzNThkNmNiNzczYzg1ZGM5NzIwMmZlZmI3NTRjMSJ9fX0="}]}},display:{Name:"§6Ore Grinder",Lore:["§fRefines ores into 3 ingots/gems.","§fUses 80 kJ/s"]}},Damage:3s}}

#alloy furnace
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=alloy] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§8Alloy Furnace",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"e710f417-22bf-4455-a8cd-f8c5b631f2d0",Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0OTc2NjczMjUyNjAsInByb2ZpbGVJZCI6ImU3MTBmNDE3MjJiZjQ0NTVhOGNkZjhjNWI2MzFmMmQwIiwicHJvZmlsZU5hbWUiOiJJbUNvb2xZZWFoMTA1IiwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2ZhYTFmMDU1NTBjZGI0YmRhM2FhZGM3YWI0MTg3ZGY5NmNkNmYyZmE3YmNiNzI3YzI2YTBlYmZmZTY3MjgyOTcifX19="}]}},display:{Name:"§8Alloy Furnace",Lore:["§fMixes different metals into various alloys.","§fUses 20 kJ/s."]}},Damage:3s}}



#chunk loader
execute @e[type=armor_stand,r=2,c=1,score_powerBuffer_min=-10000] ~ ~ ~ execute @s[tag=chunk_loader] ~ ~ ~ summon item ~ ~1 ~ {CustomName:"§5Chunk Loader",CustomNameVisible:1,Item:{id:"minecraft:skull",Count:1b,tag:{SkullOwner:{Id:"00000000-0000-0000-ee69-000000000022",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDgzOTcwZmUxY2Y0NDM4N2M4NTQ5YjEzNjhlYTk0ZjQwYzc1MjZkMjc3ODE1Njc0NDAyNjlhNjViNTM3YzkifX19"}]}},display:{Name:"§5Chunk Loader",Lore:["§fKeeps a 3x3 chunk area loaded.","§fReentering the chunk with the loader with restart it.","§fUses 300 kJ/s"]}},Damage:3s}}
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation temp quantumFrequency = @e[type=armor_stand,tag=chunk_loader,c=1] quantumFrequency
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,tag=load_manager] quantumFrequency -= temp quantumFrequency
execute @s[score_checks_min=1] ~ ~ ~ kill @e[type=area_effect_cloud,tag=load_manager,score_quantumFrequency_min=0,score_quantumFrequency=0]
execute @s[score_checks_min=1] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,tag=load_manager] quantumFrequency += temp quantumFrequency
execute @s[score_checks_min=1] ~ ~ ~ kill @e[type=armor_stand,tag=chunk_loader,c=1]


