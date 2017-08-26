scoreboard players tag @s remove resistance 
scoreboard players tag @s add resistance {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Shielding"]}}}]}
scoreboard players tag @s add resistance {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Shielding"]}}}]}
scoreboard players tag @s add resistance {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Shielding"]}}}]}
scoreboard players tag @s add resistance {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Shielding"]}}}]}

scoreboard players tag @s remove slowfall 
scoreboard players tag @s add slowfall {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Slow Fall"]}}}]}
scoreboard players tag @s add slowfall {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Slow Fall"]}}}]}
scoreboard players tag @s add slowfall {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Slow Fall"]}}}]}
scoreboard players tag @s add slowfall {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Slow Fall"]}}}]}

scoreboard players tag @s remove autoeater 
scoreboard players tag @s add autoeater {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Auto-Eater"]}}}]}
scoreboard players tag @s add autoeater {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Auto-Eater"]}}}]}
scoreboard players tag @s add autoeater {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Auto-Eater"]}}}]}
scoreboard players tag @s add autoeater {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Auto-Eater"]}}}]}

scoreboard players tag @s remove itemmagnet 
scoreboard players tag @s add itemmagnet {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Item Magnet"]}}}]}
scoreboard players tag @s add itemmagnet {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Item Magnet"]}}}]}
scoreboard players tag @s add itemmagnet {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Item Magnet"]}}}]}
scoreboard players tag @s add itemmagnet {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Item Magnet"]}}}]}

scoreboard players tag @s remove nightvision 
scoreboard players tag @s add nightvision {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Night Vision"]}}}]}
scoreboard players tag @s add nightvision {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Night Vision"]}}}]}
scoreboard players tag @s add nightvision {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Night Vision"]}}}]}
scoreboard players tag @s add nightvision {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Night Vision"]}}}]}

scoreboard players tag @s remove invisability 
scoreboard players tag @s add invisability {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Invisability"]}}}]}
scoreboard players tag @s add invisability {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Invisability"]}}}]}
scoreboard players tag @s add invisability {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Invisability"]}}}]}
scoreboard players tag @s add invisability {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Invisability"]}}}]}

scoreboard players tag @s remove waterbreathing 
scoreboard players tag @s add waterbreathing {Inventory:[{Slot:100b,tag:{display:{Lore:["§7Water Breathing"]}}}]}
scoreboard players tag @s add waterbreathing {Inventory:[{Slot:101b,tag:{display:{Lore:["§7Water Breathing"]}}}]}
scoreboard players tag @s add waterbreathing {Inventory:[{Slot:102b,tag:{display:{Lore:["§7Water Breathing"]}}}]}
scoreboard players tag @s add waterbreathing {Inventory:[{Slot:103b,tag:{display:{Lore:["§7Water Breathing"]}}}]}

effect @s[score_powerBuffer_min=10,tag=resistance] minecraft:resistance 2 1 true
scoreboard players remove @s[score_powerBuffer_min=10,tag=resistance] powerBuffer 10

effect @s[score_powerBuffer_min=20,tag=autoeater,score_sneak_min=1] minecraft:saturation 1 0 true
scoreboard players remove @s[score_powerBuffer_min=20,tag=autoeater,score_sneak_min=1] powerBuffer 20

execute @s[score_powerBuffer_min=7,tag=itemmagnet] ~ ~ ~ teleport @e[type=item,r=12] ~ ~1 ~
execute @s[score_powerBuffer_min=7,tag=itemmagnet] ~ ~ ~ entitydata @e[type=item,r=12] {PickupDelay:0}
scoreboard players remove @s[score_powerBuffer_min=7,tag=itemmagnet] powerBuffer 7

effect @s[score_powerBuffer_min=3,tag=nightvision] minecraft:night_vision 2 0 true
scoreboard players remove @s[score_powerBuffer_min=3,tag=nightvision] powerBuffer 3

scoreboard players tag @s[tag=invisable] add invisable2
scoreboard players tag @s remove invisable
scoreboard players tag @s[score_powerBuffer_min=100,score_sneak_min=1,tag=invisability,rxm=60,m=!3] add invisable
scoreboard players tag @s[score_powerBuffer_min=100,score_sneak_min=1,tag=invisability,m=3] add invisable
scoreboard players remove @s[tag=invisable] powerBuffer 100
execute @s[tag=invisable,m=!3] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["invisMarker"],Small:1,Marker:1b,Invisible:1,Invulnerable:1,NoGravity:1}
gamemode 3 @s[tag=invisable,m=!3]
execute @s[tag=!invisable] ~ ~ ~ gamemode 0 @s[tag=invisable2,m=!0]
execute @s[tag=!invisable] ~ ~ ~ execute @s[tag=invisable2] ~ ~ ~ kill @e[tag=invisMarker,r=2]
scoreboard players tag @s remove invisable2

execute @s[score_powerBuffer_min=25,tag=waterbreathing] ~ ~ ~ detect ~ ~1 ~ minecraft:water -1 effect @s minecraft:water_breathing 2 0 true
execute @s[score_powerBuffer_min=25,tag=waterbreathing] ~ ~ ~ detect ~ ~1 ~ minecraft:water -1 scoreboard players remove @s powerBuffer 25


