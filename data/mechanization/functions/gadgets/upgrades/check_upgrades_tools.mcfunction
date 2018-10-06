
#set upgrade tags
execute store result score temp_0 mech_data run data get entity @s SelectedItemSlot

execute unless score temp_0 mech_data = @s mech_itemslot if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run function mechanization:gadgets/upgrades/tools/set_upgrades_sword
execute unless score temp_0 mech_data = @s mech_itemslot if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run function mechanization:gadgets/upgrades/tools/set_upgrades_sword

execute unless score temp_0 mech_data = @s mech_itemslot if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run function mechanization:gadgets/upgrades/tools/set_upgrades_tools
execute unless score temp_0 mech_data = @s mech_itemslot if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run function mechanization:gadgets/upgrades/tools/set_upgrades_tools
execute unless score temp_0 mech_data = @s mech_itemslot if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] run function mechanization:gadgets/upgrades/tools/set_upgrades_tools

scoreboard players operation @s mech_itemslot = temp_0 mech_data

tag @s add mech_upgrade_tool

#scoreboard merging
scoreboard players set temp_4 mech_data 0
scoreboard players operation temp_4 mech_data += @s mech_usepick
scoreboard players operation temp_4 mech_data += @s mech_useaxe
scoreboard players operation temp_4 mech_data += @s mech_useshovel

scoreboard players set temp_5 mech_data 0
scoreboard players operation temp_5 mech_data += @s mech_usesword
scoreboard players operation temp_5 mech_data += @s mech_usetrident

#run upgrades
execute if score timer_20 du_data matches 10 if entity @s[tag=mech_upgrade_empower_1] run function mechanization:gadgets/upgrades/tools/empowered_1
execute if score timer_20 du_data matches 10 if entity @s[tag=mech_upgrade_empower_2] run function mechanization:gadgets/upgrades/tools/empowered_2
execute if entity @s[tag=mech_upgrade_smash,tag=!du_sneaking] at @s run function mechanization:gadgets/upgrades/tools/smash
execute if score temp_4 mech_data matches 1.. if entity @s[tag=mech_upgrade_magnetic] at @s run function mechanization:gadgets/upgrades/tools/magnetic
execute if score temp_4 mech_data matches 1.. if entity @s[tag=mech_upgrade_trash,tag=!du_sneaking] at @s run function mechanization:gadgets/upgrades/tools/trash

execute if score temp_4 mech_data matches 1.. if entity @s[tag=mech_upgrade_autosmelt] run scoreboard players set in_0 mech_data 40
execute if score temp_4 mech_data matches 1.. if entity @s[tag=mech_upgrade_autosmelt] run function mechanization:base/tools/player_energy/use_energy
execute if score temp_4 mech_data matches 1.. if entity @s[tag=mech_upgrade_autosmelt] if score out_0 mech_data matches 1 at @s run function mechanization:gadgets/upgrades/tools/autosmelt


execute if score temp_5 mech_data matches 1.. if entity @s[tag=mech_upgrade_poison] at @s run effect give @e[distance=0.5..8,nbt={HurtTime:10s}] poison 4 1
execute if score temp_5 mech_data matches 1.. if entity @s[tag=mech_upgrade_wither] at @s run effect give @e[distance=0.5..8,nbt={HurtTime:10s}] wither 4 1
execute if score temp_5 mech_data matches 1.. if entity @s[tag=mech_upgrade_vamparic] at @s if entity @e[distance=0.5..8,nbt={HurtTime:10s}] run effect give @s regeneration 4 1
execute if score temp_5 mech_data matches 1.. if entity @s[tag=mech_upgrade_slowness] at @s run effect give @e[distance=0.5..8,nbt={HurtTime:10s}] slowness 4 0
execute if score temp_5 mech_data matches 1.. if entity @s[tag=mech_upgrade_weakness] at @s run effect give @e[distance=0.5..8,nbt={HurtTime:10s}] weakness 4 0
execute if score temp_5 mech_data matches 1.. if entity @s[tag=mech_upgrade_glow] at @s run effect give @e[distance=0.5..8,nbt={HurtTime:10s}] glowing 4 0

#cleanup
scoreboard players set @s mech_usesword 0
scoreboard players set @s mech_usetrident 0
scoreboard players set @s mech_usepick 0
scoreboard players set @s mech_useaxe 0
scoreboard players set @s mech_useshovel 0

scoreboard players set @s mech_breakstone 0
scoreboard players set @s mech_breakcobble 0
scoreboard players set @s mech_breaksand 0
scoreboard players set @s mech_breakrsand 0
scoreboard players set @s mech_breakgold 0
scoreboard players set @s mech_breakiron 0
scoreboard players set @s mech_breakoak 0
scoreboard players set @s mech_breakspruce 0
scoreboard players set @s mech_breakbirch 0
scoreboard players set @s mech_breakjungle 0
scoreboard players set @s mech_breakacacia 0
scoreboard players set @s mech_breakdark 0
scoreboard players set @s mech_breakclay 0
scoreboard players set @s mech_breaknether 0
scoreboard players set @s mech_breakbricks 0
scoreboard players set @s mech_breakcactus 0
scoreboard players set @s mech_breaksponge 0
scoreboard players set @s mech_breakhead 0
scoreboard players set @s mech_breakgranit 0
scoreboard players set @s mech_breakdiorit 0
scoreboard players set @s mech_breakandesi 0
