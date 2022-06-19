
# note: does not validate if a fluid should be accepted, do that yourself!

#> storage mechanization:temp obj{input_item:{},output_item:{},liquid_item:{}}
#> $in_0 mechanization.data: stored amount
#> $in_1 mechanization.data: stored capacity
#  $out_0 mechanization.data: new stored amount
#  $temp_0 mechanization.data: output slot item ID
#  $temp_1 mechanization.data: output slot count
#  $temp_2 mechanization.data: input slot item ID
#  $temp_3 mechanization.data: input slot count
#  $temp_4 mechanization.data: input item volume
#  $temp_5 mechanization.data: volume left in tank

scoreboard players operation $out_0 mechanization.data = $in_0 mechanization.data

#get output slot
scoreboard players set $temp_0 mechanization.data 0
execute if data storage mechanization:temp obj.output_item.id run scoreboard players set $temp_0 mechanization.data 1
execute if data storage mechanization:temp obj.output_item{id:"minecraft:bucket"} run scoreboard players set $temp_0 mechanization.data 2
execute if data storage mechanization:temp obj.output_item{id:"minecraft:glass_bottle"} run scoreboard players set $temp_0 mechanization.data 3
execute if data storage mechanization:temp obj.output_item{id:"minecraft:bowl"} run scoreboard players set $temp_0 mechanization.data 4

execute store result score $temp_1 mechanization.data run data get storage mechanization:temp obj.output_item.Count

#get input item
scoreboard players set $temp_2 mechanization.data 0

execute if data storage mechanization:temp obj.input_item{id:"minecraft:potion"}.tag.mechanization{id:"bucket"} run scoreboard players set $temp_2 mechanization.data 1
execute if data storage mechanization:temp obj.input_item{id:"minecraft:potion"}.tag.mechanization{id:"glass_bottle"} run scoreboard players set $temp_2 mechanization.data 2
execute if data storage mechanization:temp obj.input_item{id:"minecraft:potion"}.tag.mechanization{id:"vial"} run scoreboard players set $temp_2 mechanization.data 3
execute if data storage mechanization:temp obj.input_item{id:"minecraft:water_bucket"} run scoreboard players set $temp_2 mechanization.data 5
execute if data storage mechanization:temp obj.input_item{id:"minecraft:lava_bucket"} run scoreboard players set $temp_2 mechanization.data 6
execute if data storage mechanization:temp obj.input_item{id:"minecraft:milk_bucket"} run scoreboard players set $temp_2 mechanization.data 7
execute if data storage mechanization:temp obj.input_item{id:"minecraft:powdered_snow_bucket"} run scoreboard players set $temp_2 mechanization.data 8
execute if data storage mechanization:temp obj.input_item{id:"minecraft:mushroom_stew"} run scoreboard players set $temp_2 mechanization.data 9
execute if data storage mechanization:temp obj.input_item{id:"minecraft:rabbit_stew"} run scoreboard players set $temp_2 mechanization.data 10
execute if data storage mechanization:temp obj.input_item{id:"minecraft:beetroot_soup"} run scoreboard players set $temp_2 mechanization.data 11
execute if data storage mechanization:temp obj.input_item{id:"minecraft:potion"}.tag{Potion:"minecraft:water"} run scoreboard players set $temp_2 mechanization.data 12
execute if data storage mechanization:temp obj.input_item{id:"minecraft:honey_bottle"} run scoreboard players set $temp_2 mechanization.data 13

execute if data storage mechanization:temp obj.input_item{id:"minecraft:potion"}.tag.mechanization{id:"vial"} unless data storage mechanization:temp obj.input_item.tag.mechanization.liquid run scoreboard players set $temp_2 mechanization.data -1
execute if data storage mechanization:temp obj.input_item{id:"minecraft:bucket"} run scoreboard players set $temp_2 mechanization.data -2
execute if data storage mechanization:temp obj.input_item{id:"minecraft:glass_bottle"} run scoreboard players set $temp_2 mechanization.data -3
execute if data storage mechanization:temp obj.input_item{id:"minecraft:bowl"} run scoreboard players set $temp_2 mechanization.data -4

execute store result score $temp_3 mechanization.data run data get storage mechanization:temp obj.input_item.Count

scoreboard players set $temp_4 mechanization.data 1000
execute if score $temp_2 mechanization.data matches 1..3 store result score $temp_4 mechanization.data run data get storage mechanization:temp obj.input_item.tag.mechanization.liquid.amount
scoreboard players operation $temp_5 mechanization.data = $in_1 mechanization.data
scoreboard players operation $temp_5 mechanization.data -= $in_0 mechanization.data

#split
execute if score $temp_2 mechanization.data matches -4..-1 if score $temp_0 mechanization.data matches 0 run function mechanization:base/liquids/slot_io_withdraw
execute if score $temp_2 mechanization.data matches 1..3 if score $temp_4 mechanization.data <= $temp_5 mechanization.data run function mechanization:base/liquids/slot_io_custom
execute if score $temp_2 mechanization.data matches 4.. if score $temp_4 mechanization.data <= $temp_5 mechanization.data run function mechanization:base/liquids/slot_io_vanilla

#store result
execute store result storage mechanization:temp obj.output_item.Count byte 1 run scoreboard players get $temp_1 mechanization.data
execute if score $temp_1 mechanization.data matches 0 run data modify storage mechanization:temp obj.output_item set value {}
execute store result storage mechanization:temp obj.input_item.Count byte 1 run scoreboard players get $temp_3 mechanization.data
execute if score $temp_3 mechanization.data matches 0 run data modify storage mechanization:temp obj.input_item set value {}
execute if score $out_0 mechanization.data matches 0 run data modify storage mechanization:temp obj.liquid_item set value {}


