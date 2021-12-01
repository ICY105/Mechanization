
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
execute if score $temp_6 mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/steel

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
execute if score $temp_6 mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/structural_alloy

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
execute if score $temp_6 mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/conductive_alloy

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
execute if score $temp_6 mechanization.data matches 3 run function mechanization:machines/machines/alloy_furnace/recipes/crystal_composite

#cleanup
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get $temp_0 mech_data
execute store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get $temp_1 mech_data
execute store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get $temp_2 mech_data
scoreboard players operation @s mechanization.stored_fluid = $temp_3 mech_data
scoreboard players operation @s du_data = $temp_4 mech_data
scoreboard players operation @s mechanization.player.used_item_id = $temp_5 mech_data
execute if score @s mechanization.stored_fluid matches 0 run data modify entity @s Item.tag.tank_1 set value {}
execute if score @s du_data matches 0 run data modify entity @s Item.tag.tank_2 set value {}
execute if score @s mechanization.player.used_item_id matches 0 run data modify entity @s Item.tag.tank_3 set value {}
