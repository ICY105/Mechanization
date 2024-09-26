
execute store result score #count mechanization.data run data get storage mechanization:temp obj.temp.count
$execute if data storage mechanization:temp obj.slot1.components."minecraft:custom_data".smithed.dict.$(id) if score #count.0 mechanization.data >= #count mechanization.data run return 1
$execute if data storage mechanization:temp obj.slot2.components."minecraft:custom_data".smithed.dict.$(id) if score #count.1 mechanization.data >= #count mechanization.data run return 2
$execute if data storage mechanization:temp obj.slot3.components."minecraft:custom_data".smithed.dict.$(id) if score #count.2 mechanization.data >= #count mechanization.data run return 3
return fail
