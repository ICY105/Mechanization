scoreboard players operation $temp smithed.damage = @s smithed.damage
# data merge storage smithed:log {message:'[{"score":{"name":"$temp","objective":"smithed.damage"}}]',level:1,type:'INFO'}
# function #smithed.damage:technical/tools/log

execute store result score $temp smithed.damage run data get entity @s Health 100

scoreboard players operation @s smithed.damage *= 100 smithed.const
scoreboard players operation $temp smithed.damage -= @s smithed.damage

execute store result entity @s Health float 0.01 run scoreboard players get $temp smithed.damage

effect give @s[type=#smithed.damage:undead] instant_health 1 127 true
effect give @s[type=!#smithed.damage:undead] instant_damage 1 127 true
