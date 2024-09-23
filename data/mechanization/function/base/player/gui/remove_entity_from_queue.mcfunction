
data modify storage mechanization:temp obj set value {uuid:""}
execute if entity @s[type=minecraft:armor_stand] run data modify storage mechanization:temp obj.uuid set from entity @s ArmorItems[3].components."minecraft:custom_data".string_uuid
execute if entity @s[type=minecraft:item_display] run data modify storage mechanization:temp obj.uuid set from entity @s item.components."minecraft:custom_data".string_uuid
execute if entity @s[type=minecraft:marker] run data modify storage mechanization:temp obj.uuid set from entity @s data.string_uuid

function mechanization:base/player/gui/m.remove_from_queue with storage mechanization:temp obj
