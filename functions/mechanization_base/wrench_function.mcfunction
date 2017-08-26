execute @e[tag=storageQuantum,c=1,r=2] ~ ~ ~ scoreboard players add @s quantumFrequency 1
execute @e[tag=storageQuantum,c=1,r=2] ~ ~ ~ execute @s[score_quantumFrequency_min=10] ~ ~ ~ scoreboard players set @s quantumFrequency 0
execute @e[tag=storageQuantum,c=1,r=2] ~ ~ ~ tellraw @p ["",{"text":"Frequency changed to ","color":"dark_purple"},{"score":{"name":"@s","objective":"quantumFrequency"},"color":"dark_aqua"}]

summon item ~ ~1 ~ {Item:{id:spawn_egg,Damage:60,Count:1,tag:{display:{Name:"§8Machine Wrench",Lore:["§fSafely retrives machines without destroying them.","§fSome machines must be wrenched to remove them."]},EntityTag:{id:"Silverfish",Tags:["toWrench"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:200,ShowParticles:0b}]}}}}

kill @s