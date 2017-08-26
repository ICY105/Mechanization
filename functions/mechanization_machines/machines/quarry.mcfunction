execute @s ~ 6 ~ tp @e[tag=miner2,c=1,dx=0,dy=256,dz=0] ~ ~-1 ~
execute @s ~ 6 ~ execute @e[tag=miner2,c=1,dx=0,dy=256,dz=0] ~ ~ ~ fill ~5 ~ ~5 ~-5 ~ ~-5 minecraft:air 0 destroy
execute @e[tag=miner2,c=1,dx=0,dy=256,dz=0] ~-5 ~ ~-5 tp @e[type=item,dx=11,dy=1,dz=11] @e[c=1,tag=miner1]
tp @e[r=1,type=item] ~ ~1 ~
scoreboard players remove @s powerBuffer 1500