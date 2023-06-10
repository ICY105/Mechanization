
execute if data storage mechanization:temp obj.tag.fluid.id run return 1

execute if data storage mechanization:temp obj{id:"minecraft:bucket"} run data modify storage mechanization:temp obj.tag.fluid set value {id:"empty"}
execute if data storage mechanization:temp obj{id:"minecraft:glass_bottle"} run data modify storage mechanization:temp obj.tag.fluid set value {id:"empty"}
execute if data storage mechanization:temp obj.tag.fluid{storage:0} run data modify storage mechanization:temp obj.tag.fluid set value {id:"empty"}
execute if data storage mechanization:temp obj.tag.fluid.id run return 1

execute if data storage mechanization:temp obj{id:"minecraft:water_bucket"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"water"}]
execute if data storage mechanization:temp obj{id:"minecraft:lava_bucket"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"lava"}]
execute if data storage mechanization:temp obj{id:"minecraft:milk_bucket"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"milk"}]
execute if data storage mechanization:temp obj{id:"minecraft:powdered_snow_bucket"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"powder_snow"}]
execute if data storage mechanization:temp obj{id:"minecraft:mushroom_stew"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"mushroom_stew"}]
execute if data storage mechanization:temp obj{id:"minecraft:rabbit_stew"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"rabbit_stew"}]
execute if data storage mechanization:temp obj{id:"minecraft:beetroot_soup"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"beetroot_soup"}]
execute if data storage mechanization:temp obj{id:"minecraft:honey_bottle"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"honey"}]
execute if data storage mechanization:temp obj{id:"minecraft:potion"}.tag{Potion:"minecraft:water"} run data modify storage mechanization:temp obj.tag.fluid set from storage fluid:definitions fluid_data[{id:"water"}]
