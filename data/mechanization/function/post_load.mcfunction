
# register ores
execute if score #base.cf.small_world mechanization.data matches 0 run function mechanization:base/utils/ores/register_ores
execute if score #base.cf.small_world mechanization.data matches 1 run function mechanization:base/utils/ores/register_ores_short

function mechanization:base/utils/register_fluids

# setup filter box
setblock -30000000 0 3216 minecraft:yellow_shulker_box
