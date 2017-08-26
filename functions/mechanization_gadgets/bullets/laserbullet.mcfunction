scoreboard players tag @s add inBlock
execute @s ~ ~ ~ detect ~ ~-498.6 ~ minecraft:air -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:water -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:lava -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:bedrock -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:obsidian -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:mob_spawner -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:end_gateway -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:end_portal -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:end_portal_frame -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:barrier -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:command_block -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:chain_command_block -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:repeating_command_block -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:structure_block -1 scoreboard players tag @s remove inBlock
execute @s[tag=inBlock] ~ ~ ~ detect ~ ~-498.6 ~ minecraft:structure_void -1 scoreboard players tag @s remove inBlock
scoreboard players set @s[tag=inBlock] timer 120
execute @s[tag=inBlock] ~ ~-498.6 ~ setblock ~ ~ ~ minecraft:air 0 destroy

execute @s ~ ~-498.5 ~ particle reddust ~ ~ ~ 0 0 0 1 0 force

scoreboard players add @s timer 3
scoreboard players add @e[type=armor_stand,tag=s1,r=1,c=1] timer 3
scoreboard players add @e[type=armor_stand,tag=s2,r=1,c=1] timer 3