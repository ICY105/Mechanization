
# Summon Entity & Init
summon minecraft:item_display ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.cable", "mechanization.cable.copper", "energy.cable", "smithed.block", "smithed.strict"], CustomName:'{"translate":"block.mechanization.copper_cable.tier_1"}', item:{id:"minecraft:copper_block", components:{"minecraft:custom_model_data":6421000}, Count:1b}}

# Set Data
scoreboard players operation @n[tag=mechanization.new] energy.transfer_rate = #machines.cf.copper_cable.transfer_rate mechanization.data

# Init
execute as @e[tag=mechanization.new] at @s run function energy:v1/api/init_cable
setblock ~ ~ ~ minecraft:moving_piston replace
tag @e[tag=mechanization.new] remove mechanization.new
