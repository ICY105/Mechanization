
#Top
execute if block ~32 ~ ~-32 bedrock positioned ~32 ~ ~-32 run function #du:chunk_gen
execute if block ~32 ~ ~-32 bedrock run setblock ~32 ~ ~-32 barrier

execute if block ~32 ~ ~-16 bedrock positioned ~32 ~ ~-16 run function #du:chunk_gen
execute if block ~32 ~ ~-16 bedrock run setblock ~32 ~ ~-16 barrier

execute if block ~32 ~ ~ bedrock positioned ~32 ~ ~ run function #du:chunk_gen
execute if block ~32 ~ ~ bedrock run setblock ~32 ~ ~ barrier

execute if block ~32 ~ ~16 bedrock positioned ~32 ~ ~16 run function #du:chunk_gen
execute if block ~32 ~ ~16 bedrock run setblock ~32 ~ ~16 barrier

execute if block ~32 ~ ~32 bedrock positioned ~32 ~ ~32 run function #du:chunk_gen
execute if block ~32 ~ ~32 bedrock run setblock ~32 ~ ~32 barrier



#Edges
execute if block ~16 ~ ~32 bedrock positioned ~16 ~ ~32 run function #du:chunk_gen
execute if block ~16 ~ ~32 bedrock run setblock ~16 ~ ~32 barrier

execute if block ~ ~ ~32 bedrock positioned ~ ~ ~32 run function #du:chunk_gen
execute if block ~ ~ ~32 bedrock run setblock ~ ~ ~32 barrier

execute if block ~-16 ~ ~32 bedrock positioned ~-16 ~ ~32 run function #du:chunk_gen
execute if block ~-16 ~ ~32 bedrock run setblock ~-16 ~ ~32 barrier


execute if block ~16 ~ ~-32 bedrock positioned ~16 ~ ~-32 run function #du:chunk_gen
execute if block ~16 ~ ~-32 bedrock run setblock ~16 ~ ~-32 barrier

execute if block ~ ~ ~-32 bedrock positioned ~ ~ ~-32 run function #du:chunk_gen
execute if block ~ ~ ~-32 bedrock run setblock ~ ~ ~-32 barrier

execute if block ~-16 ~ ~-32 bedrock positioned ~-16 ~ ~-32 run function #du:chunk_gen
execute if block ~-16 ~ ~-32 bedrock run setblock ~-16 ~ ~-32 barrier



#Bottom
execute if block ~-32 ~ ~-32 bedrock positioned ~-32 ~ ~-32 run function #du:chunk_gen
execute if block ~-32 ~ ~-32 bedrock run setblock ~-32 ~ ~-32 barrier

execute if block ~-32 ~ ~-16 bedrock positioned ~-32 ~ ~-16 run function #du:chunk_gen
execute if block ~-32 ~ ~-16 bedrock run setblock ~-32 ~ ~-16 barrier

execute if block ~-32 ~ ~ bedrock positioned ~-32 ~ ~ run function #du:chunk_gen
execute if block ~-32 ~ ~ bedrock run setblock ~-32 ~ ~ barrier

execute if block ~-32 ~ ~16 bedrock positioned ~-32 ~ ~16 run function #du:chunk_gen
execute if block ~-32 ~ ~16 bedrock run setblock ~-32 ~ ~16 barrier

execute if block ~-32 ~ ~32 bedrock positioned ~-32 ~ ~32 run function #du:chunk_gen
execute if block ~-32 ~ ~32 bedrock run setblock ~-32 ~ ~32 barrier