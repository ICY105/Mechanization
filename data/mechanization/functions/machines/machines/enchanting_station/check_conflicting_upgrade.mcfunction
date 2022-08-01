

execute if data storage mechanization:temp {var:"minecraft:riptide"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:channeling"}] run scoreboard players set #valid mechanization.data 0
execute if data storage mechanization:temp {var:"minecraft:channeling"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:riptide"}] run scoreboard players set #valid mechanization.data 0
execute if data storage mechanization:temp {var:"minecraft:riptide"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:loyalty"}] run scoreboard players set #valid mechanization.data 0
execute if data storage mechanization:temp {var:"minecraft:loyalty"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:riptide"}] run scoreboard players set #valid mechanization.data 0

execute if data storage mechanization:temp {var:"minecraft:depth_strider"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:frost_walker"}] run scoreboard players set #valid mechanization.data 0
execute if data storage mechanization:temp {var:"minecraft:frost_walker"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:depth_strider"}] run scoreboard players set #valid mechanization.data 0

execute if data storage mechanization:temp {var:"minecraft:fortune"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players set #valid mechanization.data 0
execute if data storage mechanization:temp {var:"minecraft:silk_touch"} if data storage mechanization:temp obj.tag.Enchantments[{id:"minecraft:fortune"}] run scoreboard players set #valid mechanization.data 0
