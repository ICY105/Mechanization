
# note: does not validate if a fluid should be accepted, do that yourself!

#> storage du:temp obj{input_item:{},output_item:{},liquid_item:{}}
#> $in_0 mech_data: stored amount
#> $in_1 mech_data: stored capacity
#  $out_0 mech_data: new stored amount
#  $temp_0 mech_data: output slot item ID
#  $temp_1 mech_data: output slot count
#  $temp_2 mech_data: input slot item ID
#  $temp_3 mech_data: input slot count
#  $temp_4 mech_data: input item volume
#  $temp_5 mech_data: volume left in tank

scoreboard players operation $out_0 mechanization.data = $in_0 mech_data

#get output slot
scoreboard players set $temp_0 mechanization.data 0
execute if data storage du:temp obj.output_item.id run scoreboard players set $temp_0 mechanization.data 1
execute if data storage du:temp obj.output_item{id:"minecraft:bucket"} run scoreboard players set $temp_0 mechanization.data 2
execute if data storage du:temp obj.output_item{id:"minecraft:glass_bottle"} run scoreboard players set $temp_0 mechanization.data 3
execute if data storage du:temp obj.output_item{id:"minecraft:bowl"} run scoreboard players set $temp_0 mechanization.data 4

execute store result score $temp_1 mechanization.data run data get storage du:temp obj.output_item.Count

#get input item
scoreboard players set $temp_2 mechanization.data 0

execute if data storage du:temp obj.input_item{id:"minecraft:potion"}.tag{mech_itemid:1106} run scoreboard players set $temp_2 mechanization.data 1
execute if data storage du:temp obj.input_item{id:"minecraft:potion"}.tag{mech_itemid:1107} run scoreboard players set $temp_2 mechanization.data 2
execute if data storage du:temp obj.input_item{id:"minecraft:potion"}.tag{mech_itemid:1108} run scoreboard players set $temp_2 mechanization.data 3
execute if data storage du:temp obj.input_item{id:"minecraft:water_bucket"} run scoreboard players set $temp_2 mechanization.data 5
execute if data storage du:temp obj.input_item{id:"minecraft:lava_bucket"} run scoreboard players set $temp_2 mechanization.data 6
execute if data storage du:temp obj.input_item{id:"minecraft:milk_bucket"} run scoreboard players set $temp_2 mechanization.data 7
execute if data storage du:temp obj.input_item{id:"minecraft:powdered_snow_bucket"} run scoreboard players set $temp_2 mechanization.data 8
execute if data storage du:temp obj.input_item{id:"minecraft:mushroom_stew"} run scoreboard players set $temp_2 mechanization.data 9
execute if data storage du:temp obj.input_item{id:"minecraft:rabbit_stew"} run scoreboard players set $temp_2 mechanization.data 10
execute if data storage du:temp obj.input_item{id:"minecraft:beetroot_soup"} run scoreboard players set $temp_2 mechanization.data 11
execute if data storage du:temp obj.input_item{id:"minecraft:potion"}.tag{Potion:"minecraft:water"} run scoreboard players set $temp_2 mechanization.data 12
execute if data storage du:temp obj.input_item{id:"minecraft:honey_bottle"} run scoreboard players set $temp_2 mechanization.data 13

execute if data storage du:temp obj.input_item{id:"minecraft:potion"}.tag{mech_itemid:1108} unless data storage du:temp obj.input_item.tag.ctc.traits.liquid run scoreboard players set $temp_2 mechanization.data -1
execute if data storage du:temp obj.input_item{id:"minecraft:bucket"} run scoreboard players set $temp_2 mechanization.data -2
execute if data storage du:temp obj.input_item{id:"minecraft:glass_bottle"} run scoreboard players set $temp_2 mechanization.data -3
execute if data storage du:temp obj.input_item{id:"minecraft:bowl"} run scoreboard players set $temp_2 mechanization.data -4

execute store result score $temp_3 mechanization.data run data get storage du:temp obj.input_item.Count

scoreboard players set $temp_4 mechanization.data 1000
execute if score $temp_2 mechanization.data matches 1..3 store result score $temp_4 mechanization.data run data get storage du:temp obj.input_item.tag.ctc.traits.liquid.amount
scoreboard players operation $temp_5 mechanization.data = $in_1 mech_data
scoreboard players operation $temp_5 mechanization.data -= $in_0 mech_data

#split
execute if score $temp_2 mechanization.data matches -4..-1 if score $temp_0 mechanization.data matches 0 run function mechanization:base/liquids/slot_io_withdraw
execute if score $temp_2 mechanization.data matches 1..3 if score $temp_4 mechanization.data <= $temp_5 mechanization.data run function mechanization:base/liquids/slot_io_custom
execute if score $temp_2 mechanization.data matches 4.. if score $temp_4 mechanization.data <= $temp_5 mechanization.data run function mechanization:base/liquids/slot_io_vanilla

#store result
execute store result storage du:temp obj.output_item.Count byte 1 run scoreboard players get $temp_1 mech_data
execute if score $temp_1 mechanization.data matches 0 run data modify storage du:temp obj.output_item set value {}
execute store result storage du:temp obj.input_item.Count byte 1 run scoreboard players get $temp_3 mech_data
execute if score $temp_3 mechanization.data matches 0 run data modify storage du:temp obj.input_item set value {}
execute if score $out_0 mechanization.data matches 0 run data modify storage du:temp obj.liquid_item set value {}


