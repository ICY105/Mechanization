setblock ~ ~-1 ~ minecraft:dispenser 1 replace {CustomName:"§4Industrial Machine Crafter"}
summon item_frame ~ ~ ~ {Tags:["crafter"],Facing:0,ItemRotation:0}
execute @e[type=item_frame,tag=crafter] ~ ~ ~.46885 summon armor_stand ~ ~-0.5 ~ {Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1,DisabledSlots:2039583,Tags:["crafttable"],ArmorItems:[{},{},{},{id:diamond_shovel,Damage:18,Count:1b,tag:{Unbreakable:1}}]}
scoreboard players set @e[type=armor_stand,tag=crafttable,c=1,r=3] checks 0
stats entity @e[type=armor_stand,tag=crafttable,c=1,r=3] set SuccessCount @e[type=armor_stand,tag=crafttable,c=1,r=3] checks 0
kill @e[type=item_frame,tag=crafter]
kill @s