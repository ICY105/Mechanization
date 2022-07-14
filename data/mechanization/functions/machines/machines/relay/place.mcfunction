
# Summon Entity & Init
summon minecraft:item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.energy_relay", "mechanization.mufflable", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.energy_relay"}', Item:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:6421004}, Count:1b}, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}
scoreboard players set @e[tag=mechanization.new,sort=nearest,limit=1] mechanization.data 0
function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrier replace
