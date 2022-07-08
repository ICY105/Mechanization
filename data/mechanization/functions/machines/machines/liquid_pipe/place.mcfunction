
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.pipe", "mechanization.redstone_control", "mechanization.mufflable", "smithed.block"], CustomName:'{"translate":"mech.block.liquid_pipe"}', Item:{id:"minecraft:waxed_copper_block", tag:{CustomModelData:6421000}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
execute as @e[tag=mechanization.new,sort=nearest,limit=1] at @s run function mechanization:machines/machines/liquid_pipe/place_2
