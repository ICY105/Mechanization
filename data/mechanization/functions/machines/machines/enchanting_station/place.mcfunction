
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.enchanting_station", "mechanization.upgradable", "mechanization.mufflable", "mechanization.liquid.receive", "energy.receive", "smithed.block"], CustomName:'{"translate":"mech.block.enchanting_station"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422016}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

execute as @e[tag=mechanization.new,sort=nearest,limit=1] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes
function mechanization:base/utils/init_machine
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:'[{"translate":"offset.-8","font":"space:default","with":[{"text":"\\uee0f","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-132","font":"space:default","with":[{"translate":"mech.block.enchanting_station","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}
