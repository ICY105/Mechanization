scoreboard players set @s placeHead 0

summon item_frame ~ ~ ~ {Tags:["placeFrame"],Facing:0,ItemRotation:0}

execute @s[rym=-180,ry=0] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885  summon area_effect_cloud ~6 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=-180,ry=0] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885  summon area_effect_cloud ~5 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=-180,ry=0] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885  summon area_effect_cloud ~4 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=-180,ry=0] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885  summon area_effect_cloud ~3 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=-180,ry=0] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885  summon area_effect_cloud ~2 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=-180,ry=0] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~1 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @e[type=item_frame,tag=placeFrame,c=1] ~ ~ ~ summon area_effect_cloud ~ ~-0.5 ~0.46885 {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=0,ry=180] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~-1 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=0,ry=180] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~-2 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=0,ry=180] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~-3 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=0,ry=180] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~-4 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=0,ry=180] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~-5 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}
execute @s[rym=0,ry=180] ~ ~ ~ execute @e[type=item_frame,tag=placeFrame] ~ ~-0.5 ~0.46885 summon area_effect_cloud ~-6 ~1 ~ {Tags:["pb","pb1","pb2"],Duration:2}

execute @s[rym=-90,ry=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~6 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=-90,ry=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~5 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=-90,ry=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~4 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=-90,ry=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~3 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=-90,ry=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~2 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=-90,ry=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~1 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=90,ry=-90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~-1 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=90,ry=-90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~-2 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=90,ry=-90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~-3 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=90,ry=-90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~-4 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=90,ry=-90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~-5 {Tags:["pb","pb2"],Duration:2}
execute @s[rym=90,ry=-90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb1] ~ ~ ~ summon area_effect_cloud ~ ~ ~-6 {Tags:["pb","pb2"],Duration:2}

execute @s[rxm=-90,rx=0] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~6 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=-90,rx=0] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~5 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=-90,rx=0] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~4 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=-90,rx=0] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~3 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=-90,rx=0] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~2 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=-90,rx=0] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~1 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=0,rx=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~-1 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=0,rx=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~-2 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=0,rx=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~-3 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=0,rx=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~-4 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=0,rx=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~-5 ~ {Tags:["pb"],Duration:2}
execute @s[rxm=0,rx=90] ~ ~ ~ execute @e[type=area_effect_cloud,tag=pb2] ~ ~ ~ summon area_effect_cloud ~ ~-6 ~ {Tags:["pb"],Duration:2}

execute @e[type=area_effect_cloud,tag=pb] ~ ~ ~ detect ~ ~ ~ minecraft:skull -1 scoreboard players tag @s add atSkull
scoreboard players set @e[type=area_effect_cloud,tag=atSkull] checks 0
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ stats entity @s set SuccessCount @s checks
execute @e[type=area_effect_cloud,tag=atSkull] ~ ~ ~ testforblock ~ ~ ~ minecraft:skull -1 {SkullType:3b}
scoreboard players tag @e[type=area_effect_cloud,score_checks=0] remove atSkull

scoreboard players tag @e[type=area_effect_cloud,tag=atSkull] remove pb
kill @e[type=area_effect_cloud,tag=pb]

kill @e[type=item_frame,tag=placeFrame]