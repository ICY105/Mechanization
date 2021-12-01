
tag @s remove mech_errored

#init
data modify storage du:temp obj set value {slot1:{},slot2:{},slot3:{},tank1:{},tank2:{},tank3:{}}
data modify storage du:temp obj.slot1 set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage du:temp obj.slot2 set from block ~ ~ ~ Items[{Slot:9b}]
data modify storage du:temp obj.slot3 set from block ~ ~ ~ Items[{Slot:18b}]
data modify storage du:temp obj.tank1 set from entity @s Item.tag.tank_1
data modify storage du:temp obj.tank2 set from entity @s Item.tag.tank_2
data modify storage du:temp obj.tank3 set from entity @s Item.tag.tank_3
execute store result score $temp_0 mechanization.data run data get storage du:temp obj.slot1.Count
execute store result score $temp_1 mechanization.data run data get storage du:temp obj.slot2.Count
execute store result score $temp_2 mechanization.data run data get storage du:temp obj.slot3.Count
scoreboard players operation $temp_3 mechanization.data = @s mech_fluid
scoreboard players operation $temp_4 mechanization.data = @s du_data
scoreboard players operation $temp_5 mechanization.data = @s mechanization.player.used_item_id

#Steel Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 2.. if data storage du:temp obj.slot1{id:"minecraft:flint"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 2.. if data storage du:temp obj.slot2{id:"minecraft:flint"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 2.. if data storage du:temp obj.slot3{id:"minecraft:flint"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_iron"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_iron"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_coal"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_coal"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_steel"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s mechanization.timer /= $cons.2 mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_ender] mechanization.timer /= $cons.2 mech_data
#Structural Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:lapis_lazuli"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:lapis_lazuli"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:lapis_lazuli"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_tin"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_tin"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_quartz"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_quartz"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_structural_alloy"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s mechanization.timer /= $cons.2 mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_ender] mechanization.timer /= $cons.2 mech_data

#Conductive Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 16.. if data storage du:temp obj.slot1{id:"minecraft:redstone"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 16.. if data storage du:temp obj.slot2{id:"minecraft:redstone"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 16.. if data storage du:temp obj.slot3{id:"minecraft:redstone"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 576.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_copper"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 576.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_copper"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_gold"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_gold"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_conductive_alloy"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s mechanization.timer /= $cons.2 mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_ender] mechanization.timer /= $cons.2 mech_data

#Crystal Composite
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 2.. if data storage du:temp obj.slot1{id:"minecraft:amethyst_shard"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 2.. if data storage du:temp obj.slot2{id:"minecraft:amethyst_shard"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 2.. if data storage du:temp obj.slot3{id:"minecraft:amethyst_shard"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_diamond"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_diamond"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_emerald"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_emerald"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_crystal_composite"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3929.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s mechanization.timer /= $cons.2 mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_ender] mechanization.timer /= $cons.2 mech_data

#Titanium Steel Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:blaze_rod"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:blaze_rod"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:blaze_rod"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_steel"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_steel"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_titanium_steel"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_nether] mechanization.timer /= $cons.2 mech_data

#Reinforced Structural Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:prismarine_crystals"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:prismarine_crystals"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:prismarine_crystals"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_structural_alloy"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_structural_alloy"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_reinforced_structural_alloy"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_nether] mechanization.timer /= $cons.2 mech_data

#Super Conductive Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:ender_pearl"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:ender_pearl"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:ender_pearl"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 288.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_conductive_alloy"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 288.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_conductive_alloy"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 144.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 144.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_super_conductive_alloy"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_nether] mechanization.timer /= $cons.2 mech_data

#Nether Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 1.. if data storage du:temp obj.slot1{id:"minecraft:nether_star"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 1.. if data storage du:temp obj.slot2{id:"minecraft:nether_star"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 1.. if data storage du:temp obj.slot3{id:"minecraft:nether_star"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 4000.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"lava"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 4000.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"lava"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 576.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 576.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_nether_alloy"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3425.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_nether] mechanization.timer /= $cons.2 mech_data

#Ender Ingot
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 32.. if data storage du:temp obj.slot1{id:"minecraft:dragon_breath"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 32.. if data storage du:temp obj.slot2{id:"minecraft:dragon_breath"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 32.. if data storage du:temp obj.slot3{id:"minecraft:dragon_breath"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_0 mechanization.data matches 32.. if data storage du:temp obj.slot1{id:"minecraft:chorus_fruit"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_1 mechanization.data matches 32.. if data storage du:temp obj.slot2{id:"minecraft:chorus_fruit"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_2 mechanization.data matches 32.. if data storage du:temp obj.slot3{id:"minecraft:chorus_fruit"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_3 mechanization.data matches 576.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 2 if score $temp_4 mechanization.data matches 576.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_titanium"} run scoreboard players set $temp_6 mechanization.data 3
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_ender_alloy"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 if score $temp_5 mechanization.data matches 3425.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_nether] mechanization.timer /= $cons.2 mech_data

#Netherite
scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 0 if score $temp_0 mechanization.data matches 4.. if data storage du:temp obj.slot1{id:"minecraft:netherite_scrap"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_1 mechanization.data matches 4.. if data storage du:temp obj.slot2{id:"minecraft:netherite_scrap"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 0 if score $temp_2 mechanization.data matches 4.. if data storage du:temp obj.slot3{id:"minecraft:netherite_scrap"} run scoreboard players set $temp_6 mechanization.data 1
execute if score $temp_6 mechanization.data matches 1 if score $temp_3 mechanization.data matches 576.. if data storage du:temp obj.tank1.tag.ctc.traits.liquid{id:"molten_gold"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 1 if score $temp_4 mechanization.data matches 576.. if data storage du:temp obj.tank2.tag.ctc.traits.liquid{id:"molten_gold"} run scoreboard players set $temp_6 mechanization.data 2
execute if score $temp_6 mechanization.data matches 2 if score $temp_5 mechanization.data matches 1.. unless data storage du:temp obj.tank3.tag.ctc.traits.liquid{id:"molten_netherite"} run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 2 if score $temp_5 mechanization.data matches 3857.. run scoreboard players set $temp_6 mechanization.data 0
execute if score $temp_6 mechanization.data matches 3 run scoreboard players operation @s mechanization.timer = $machines.cf.alloy_furnace.speed mech_data
execute if score $temp_6 mechanization.data matches 3 if score @s mechanization.timer matches 3.. run scoreboard players operation @s[tag=mech_upgrade_nether] mechanization.timer /= $cons.2 mech_data

#calculate needed power
scoreboard players operation $temp_0 mechanization.data = $machines.cf.alloy_furnace.power mech_data
scoreboard players operation $temp_0 mechanization.data *= @s mechanization.timer
execute if score @s mechanization.stored_energy < $temp_0 mechanization.data run scoreboard players set @s mechanization.timer 0
