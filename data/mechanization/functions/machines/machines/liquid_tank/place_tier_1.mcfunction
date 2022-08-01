
# Summon Entity & Init
summon minecraft:glow_item_frame ~ ~ ~ {Tags:["mechanization", "mechanization.new", "mechanization.liquid_tank", "mechanization.liquid_tank.t1", "mechanization.mufflable", "mechanization.rotatable", "mechanization.liquid.send", "mechanization.liquid.receive", "smithed.block"], CustomName:'{"translate":"mech.block.tier_1_liquid_tank"}', Item:{id:"minecraft:blast_furnace", tag:{CustomModelData:6422023}, Count:1b}, ItemRotation:0, Invisible:1b, Invulnerable:1b, Fixed:1b, Silent:1b}

execute as @e[tag=mechanization.new,sort=nearest,limit=1] run function mechanization:machines/machines/liquid_pipe/add_adjacent_pipes
execute if data entity @s SelectedItem.tag.mechanzation{muffled:1b} run tag @e[tag=mechanization.new,sort=nearest,limit=1] add mechanization.muffled
execute if data entity @s SelectedItem.tag.mechanization.liquid_0.item run data modify entity @e[tag=mechanization.new,sort=nearest,limit=1] Item.tag.tank set from entity @s SelectedItem.tag.liquid_0.item
execute if data entity @s SelectedItem.tag.mechanization.liquid_0.amount store result score @e[tag=mechanization.new,sort=nearest,limit=1] mechanization.fluid.0 run data get entity @s SelectedItem.tag.liquid_0.amount
tag @e[tag=mechanization.new] remove mechanization.new

setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'[{"translate":"offset.17","font":"space:default","with":[{"text":"\\uee0b","font":"mechanization:gui","color":"white"}]},{"translate":"offset.-64","font":"space:default","with":[{"translate":"mech.block.tier_1_liquid_tank","color":"dark_aqua","italic":false,"font":"minecraft:default"}]}]'}
