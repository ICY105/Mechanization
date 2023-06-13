
#get pos
summon minecraft:marker ~ ~ ~ {Tags:["mechanization.new"]}
execute store result score #x mechanization.data run data get entity @e[tag=mechanization.new,distance=..1,limit=1] Pos[0]
execute store result score #y mechanization.data run data get entity @e[tag=mechanization.new,distance=..1,limit=1] Pos[1]
execute store result score #z mechanization.data run data get entity @e[tag=mechanization.new,distance=..1,limit=1] Pos[2]
kill @e[tag=mechanization.new]

#store to storage
data modify storage mechanization:temp obj set value {x:0,y:0,z:0,dimension:""}
execute store result storage mechanization:temp obj.x int 1 run scoreboard players get #x mechanization.data
execute store result storage mechanization:temp obj.y int 1 run scoreboard players get #y mechanization.data
execute store result storage mechanization:temp obj.z int 1 run scoreboard players get #z mechanization.data
data modify storage mechanization:temp obj.dimension set from entity @s Dimension

#set multimeter data
data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"text.mechanization.gps_set_pos","color":"gray","italic":false,"with":[{"score":{"name":"#x","objective":"mechanization.data"}},{"score":{"name":"#y","objective":"mechanization.data"}},{"score":{"name":"#z","objective":"mechanization.data"}},{"nbt":"obj.dimension","storage":"mechanization:temp"}]}'
data modify storage mechanization:temp var set from block -30000000 0 3202 front_text.messages[0]
item modify entity @s weapon.mainhand mechanization:set_multimeter_pos

#print to chat
data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.gps_set_pos","color":"dark_green","with":[{"score":{"name":"#x","objective":"mechanization.data"},"color":"dark_aqua"},{"score":{"name":"#y","objective":"mechanization.data"},"color":"dark_aqua"},{"score":{"name":"#z","objective":"mechanization.data"},"color":"dark_aqua"},{"nbt":"obj.dimension","storage":"mechanization:temp","color":"dark_aqua"}]}]'}
function #smithed.actionbar:message
