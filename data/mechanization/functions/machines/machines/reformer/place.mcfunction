
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.reformer", "mechanization.redstone_control", "mechanization.upgradable", "mechanization.mufflable", "mechanization.liquid.receive", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.item_reformer"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422010}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

execute as @e[tag=mechanization.new,sort=nearest,limit=1] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes
function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"offset.5","font":"space:default","with":[{"text":"\\uee0c","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-56","font":"space:default","with":[{"translate":"mech.block.item_reformer","color":"dark_red","italic":false,"font":"minecraft:default"}]}]'}
