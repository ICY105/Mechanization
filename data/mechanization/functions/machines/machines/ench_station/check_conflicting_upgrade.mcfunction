

execute if data storage du:temp {var:"minecraft:riptide"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:channeling"}] run scoreboard players set $out_0 mechanization.data 0
execute if data storage du:temp {var:"minecraft:channeling"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:riptide"}] run scoreboard players set $out_0 mechanization.data 0
execute if data storage du:temp {var:"minecraft:riptide"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:loyalty"}] run scoreboard players set $out_0 mechanization.data 0
execute if data storage du:temp {var:"minecraft:loyalty"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:riptide"}] run scoreboard players set $out_0 mechanization.data 0

execute if data storage du:temp {var:"minecraft:depth_strider"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:frost_walker"}] run scoreboard players set $out_0 mechanization.data 0
execute if data storage du:temp {var:"minecraft:frost_walker"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:depth_strider"}] run scoreboard players set $out_0 mechanization.data 0

execute if data storage du:temp {var:"minecraft:fortune"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players set $out_0 mechanization.data 0
execute if data storage du:temp {var:"minecraft:silk_touch"} if data storage du:temp obj.tag.Enchantments[{id:"minecraft:fortune"}] run scoreboard players set $out_0 mechanization.data 0
