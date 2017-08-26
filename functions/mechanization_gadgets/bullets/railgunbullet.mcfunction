execute @s ~ ~-498.5 ~ scoreboard players tag @e[type=!armor_stand,r=2,c=1] add living {DeathTime:0s}

scoreboard players operation temp playerID = @s playerID
execute @s ~ ~-498.5 ~ scoreboard players operation @s playerID -= @e[r=2,c=1] playerID
execute @s[score_playerID_min=0,score_playerID=0] ~ ~-498.5 ~ scoreboard players tag @e[r=2,c=1] remove living
scoreboard players operation @s playerID = temp playerID

execute @s ~ ~-498.5 ~ execute @e[tag=living,r=2,c=1] ~ ~ ~ summon arrow ~ ~ ~ {Tags:["projDamage"],pickup:2,damage:6,Motion:[0.0,3.0,0.0]}
execute @s[score_bulletType_min=1,score_bulletType=1] ~ ~-498.5 ~ effect @e[tag=living,r=2,c=1] minecraft:weakness 5 0 true
execute @s[score_bulletType_min=2,score_bulletType=2] ~ ~-498.5 ~ effect @e[tag=living,r=2,c=1] minecraft:slowness 5 0 true
execute @s[score_bulletType_min=3,score_bulletType=3] ~ ~-498.5 ~ effect @e[tag=living,r=2,c=1] minecraft:poison 5 2 true
execute @s[score_bulletType_min=4,score_bulletType=4] ~ ~-498.5 ~ effect @e[tag=living,r=2,c=1] minecraft:hunger 4 2 true
execute @s[score_bulletType_min=5,score_bulletType=5] ~ ~-498.5 ~ effect @e[tag=living,r=2,c=1] minecraft:instant_damage 1 1 true
execute @s[score_bulletType_min=6,score_bulletType=6] ~ ~-498.5 ~ effect @e[tag=living,r=2,c=1] minecraft:levitation 6 0 true
scoreboard players tag @e[tag=living] remove living


scoreboard players tag @s add inBlock
execute @s ~ ~ ~ detect ~ ~-498.6 ~ minecraft:air 0 scoreboard players tag @s remove inBlock
scoreboard players set @s[tag=inBlock] timer 120

execute @s ~ ~-498.5 ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @s ~ ~-498.5 ~ particle reddust ~ ~ ~ 0.05 0.05 0.05 0 5 force