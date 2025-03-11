
# init data
data modify storage mechanization:temp var set value ""
data modify storage mechanization:temp obj set value {uuid:"", function:""}

# copy UUID
execute if entity @s[type=minecraft:armor_stand] run data modify storage mechanization:temp obj.uuid set from entity @s ArmorItems[3].components."minecraft:custom_data".string_uuid
execute if entity @s[type=minecraft:item_display] run data modify storage mechanization:temp obj.uuid set from entity @s item.components."minecraft:custom_data".string_uuid
execute if entity @s[type=minecraft:marker] run data modify storage mechanization:temp obj.uuid set from entity @s data.string_uuid

# verify 
scoreboard players set #success mechanization.data 0
execute store result score #success mechanization.data run function mechanization:base/player/gui/m.verify_not_in_queue with storage mechanization:temp obj
execute if score #success mechanization.data matches 0 run return fail

# get function to run
function #mechanization:get_gui_function
data modify storage mechanization:temp obj.function set from storage mechanization:temp var

# status check
execute if data storage mechanization:temp obj{uuid:""} run return fail
execute if data storage mechanization:temp obj{function:""} run return fail

# attempt to run function: return if failed, otherwise add to queue
data modify storage mechanization:registry tick_queue append from storage mechanization:temp obj
scoreboard players set #success mechanization.data 0
execute store result score #success mechanization.data run function mechanization:base/utils/m.run_function_as_uuid with storage mechanization:temp obj
execute if score #success mechanization.data matches 0 run data remove storage mechanization:registry tick_queue[-1]
execute if score #success mechanization.data matches 0 run return fail

# exit loop
scoreboard players set #loop mechanization.data -1
