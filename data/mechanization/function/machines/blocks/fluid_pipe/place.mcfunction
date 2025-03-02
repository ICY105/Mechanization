
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.fluid_pipe", "mechanization.has_block_hitbox", "fluid.pipe", "smithed.block"], CustomName:'{"translate":"block.mechanization.fluid_pipe"}', item:{id:"minecraft:waxed_copper_block", components:{"minecraft:item_model":"mechanization:machines/block/fluid_pipe"}, Count:1b}}
summon minecraft:interaction ~ ~-0.51 ~ {width:1.02f,height:1.02f,response:1b,Tags:["mechanization","mechanization.block_hitbox","mechanization.block_hitbox.fluid_pipe"]}
setblock ~ ~ ~ minecraft:barrier

scoreboard players operation @e[tag=mechanization.new,sort=nearest,limit=1] fluid.transfer_rate = #machines.cf.fluid_pipe.rate mechanization.data
execute as @e[tag=mechanization.new] at @s run function fluid:v1/api/init_pipe
tag @e[tag=mechanization.new] remove mechanization.new
