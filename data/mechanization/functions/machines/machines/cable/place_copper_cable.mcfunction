
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.cable", "mechanization.cable.copper", "energy.cable", "smithed.block", "smithed.strict"], CustomName:'{"translate":"mech.block.copper_cable.tier_1"}', Item:{id:"minecraft:copper_block", tag:{CustomModelData:6421000}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

# Set Data
scoreboard players operation @e[tag=mechanization.new,sort=nearest,limit=1] energy.transfer_rate = #machines.cf.copper_cable.transfer_rate mechanization.data

# Init
execute as @e[tag=mechanization.new] at @s run function energy:v1/api/init_cable
setblock ~ ~ ~ minecraft:moving_piston replace
tag @e[tag=mechanization.new] remove mechanization.new
