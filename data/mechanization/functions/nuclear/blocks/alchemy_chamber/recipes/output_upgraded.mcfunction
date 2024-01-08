
execute if score @s mechanization.data matches 150.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.uranium unless data storage mechanization:temp obj.output.id run loot replace block ~ ~ ~ container.7 loot mechanization:base/plutonium_ingot
execute if score @s mechanization.data matches 150.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.uranium unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 150.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.uranium if data storage mechanization:temp obj.output.tag.smithed.dict.ingot.plutonium run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 200.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.plutonium unless data storage mechanization:temp obj.output.id run loot replace block ~ ~ ~ container.7 loot mechanization:base/titanium_ingot
execute if score @s mechanization.data matches 200.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.plutonium unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 200.. if data storage mechanization:temp obj.input.tag.smithed.dict.ingot.plutonium if data storage mechanization:temp obj.output.tag.smithed.dict.ingot.titanium run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 200.. if data storage mechanization:temp obj.input{id:"minecraft:emerald"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:diamond
execute if score @s mechanization.data matches 200.. if data storage mechanization:temp obj.input{id:"minecraft:emerald"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 200.. if data storage mechanization:temp obj.input{id:"minecraft:emerald"} if data storage mechanization:temp obj.output{id:"minecraft:diamond"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 250.. if data storage mechanization:temp obj.input{id:"minecraft:turtle_egg"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:sniffer_egg
execute if score @s mechanization.data matches 250.. if data storage mechanization:temp obj.input{id:"minecraft:turtle_egg"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 250.. if data storage mechanization:temp obj.input{id:"minecraft:turtle_egg"} if data storage mechanization:temp obj.output{id:"minecraft:sniffer_egg"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 400.. if data storage mechanization:temp obj.input{id:"minecraft:creeper_head"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:dragon_head
execute if score @s mechanization.data matches 400.. if data storage mechanization:temp obj.input{id:"minecraft:creeper_head"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 400.. if data storage mechanization:temp obj.input{id:"minecraft:creeper_head"} if data storage mechanization:temp obj.output{id:"minecraft:dragon_head"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 500.. if data storage mechanization:temp obj.input{id:"minecraft:piglin_head"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:netherite_scrap
execute if score @s mechanization.data matches 500.. if data storage mechanization:temp obj.input{id:"minecraft:piglin_head"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 500.. if data storage mechanization:temp obj.input{id:"minecraft:piglin_head"} if data storage mechanization:temp obj.output{id:"minecraft:netherite_scrap"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 500.. if data storage mechanization:temp obj.input{id:"minecraft:nether_star"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:echo_shard
execute if score @s mechanization.data matches 500.. if data storage mechanization:temp obj.input{id:"minecraft:nether_star"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 500.. if data storage mechanization:temp obj.input{id:"minecraft:nether_star"} if data storage mechanization:temp obj.output{id:"minecraft:echo_shard"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 750.. if data storage mechanization:temp obj.input{id:"minecraft:echo_shard"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:heart_of_the_sea
execute if score @s mechanization.data matches 750.. if data storage mechanization:temp obj.input{id:"minecraft:echo_shard"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 750.. if data storage mechanization:temp obj.input{id:"minecraft:echo_shard"} if data storage mechanization:temp obj.output{id:"minecraft:heart_of_the_sea"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 1000.. if data storage mechanization:temp obj.input{id:"minecraft:golden_apple"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:enchanted_golden_apple
execute if score @s mechanization.data matches 1000.. if data storage mechanization:temp obj.input{id:"minecraft:golden_apple"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 1000.. if data storage mechanization:temp obj.input{id:"minecraft:golden_apple"} if data storage mechanization:temp obj.output{id:"minecraft:enchanted_golden_apple"} run scoreboard players set #success mechanization.data 1

execute if score @s mechanization.data matches 1500.. if data storage mechanization:temp obj.input{id:"minecraft:sniffer_egg"} unless data storage mechanization:temp obj.output.id run item replace block ~ ~ ~ container.7 with minecraft:dragon_egg
execute if score @s mechanization.data matches 1500.. if data storage mechanization:temp obj.input{id:"minecraft:sniffer_egg"} unless data storage mechanization:temp obj.output.id run scoreboard players set #success mechanization.data 1
execute if score @s mechanization.data matches 1500.. if data storage mechanization:temp obj.input{id:"minecraft:sniffer_egg"} if data storage mechanization:temp obj.output{id:"minecraft:dragon_egg"} run scoreboard players set #success mechanization.data 1
