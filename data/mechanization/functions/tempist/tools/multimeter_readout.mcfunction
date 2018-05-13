
#Tempite Stone
execute as @e[distance=..0.75,tag=tempite_stone] run tellraw @p ["",{"text":"Tempite Remaining: ","color":"dark_green"},{"score":{"name":"@s","objective":"tempite"},"color":"dark_aqua"}]

