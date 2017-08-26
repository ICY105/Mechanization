#harvest and replant
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:wheat 7 setblock ~ ~ ~ minecraft:wheat 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:carrots 7 setblock ~ ~ ~ minecraft:carrots 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:potatoes 7 setblock ~ ~ ~ minecraft:potatoes 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:beetroots 3 setblock ~ ~ ~ minecraft:beetroots 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:nether_wart 3 setblock ~ ~ ~ minecraft:nether_wart 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:pumpkin -1 setblock ~ ~ ~ minecraft:air 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:melon_block -1 setblock ~ ~ ~ minecraft:air 0 destroy
execute @s ~ ~ ~ detect ~ ~1 ~ minecraft:reeds -1 setblock ~ ~1 ~ minecraft:air 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:cocoa 8 setblock ~ ~ ~ minecraft:cocoa 0 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:cocoa 9 setblock ~ ~ ~ minecraft:cocoa 1 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:cocoa 10 setblock ~ ~ ~ minecraft:cocoa 2 destroy
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:cocoa 11 setblock ~ ~ ~ minecraft:cocoa 3 destroy

#elder botany support
execute @s ~ ~ ~ scoreboard players tag @e[r=1,tag=crop2] add harvestNoBreak

#cleanup
scoreboard players add @s timer 1
kill @s[score_timer_min=7]
tp @s ~-1 ~ ~