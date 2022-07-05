
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization.new", "mechanization.liquid_accumulator", "mechanization.redstone_control", "mechanization.mufflable", "mechanization.liquid.send", "smithed.block"], CustomName:'{"translate":"mech.block.liquid_accumulator"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422029}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

execute as @e[tag=mechanization.new,sort=nearest,limit=1] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes
scoreboard players set @e[tag=mechanization.new,tag=mechanization.redstone_control,sort=nearest,limit=1] mechanization.redstone 0
execute if data entity @s SelectedItem.tag.mechanzation{muffled:1b} run tag @e[tag=mechanization.new,sort=nearest,limit=1] add mechanization.muffled
tag @e[tag=mechanization.new] remove mechanization.new

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"offset.16","font":"space:default","with":[{"text":"\\uee0b","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-60","font":"space:default","with":[{"translate":"mech.block.liquid_accumulator","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}
