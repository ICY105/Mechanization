function mechanization_base:position_scoreboard/search
execute @e[tag=x_cord] ~ ~ ~ tellraw @p ["",{"text":"x-pos: ","color":"blue"},{"score":{"name":"@s","objective":"cord"},"color":"dark_aqua"}]
execute @e[tag=y_cord] ~ ~ ~ tellraw @p ["",{"text":"y-pos: ","color":"blue"},{"score":{"name":"@s","objective":"cord"},"color":"dark_aqua"}]
execute @e[tag=z_cord] ~ ~ ~ tellraw @p ["",{"text":"z-pos: ","color":"blue"},{"score":{"name":"@s","objective":"cord"},"color":"dark_aqua"}]
kill @e[tag=search]