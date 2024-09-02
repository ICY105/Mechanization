
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run item replace block ~ ~ ~ container.12 with minecraft:coal_block
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} if data storage mechanization:temp obj.output_item{id:"minecraft:coal_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s fluid.storage.0 matches 648.. if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players remove @s fluid.storage.0 648

execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run item replace block ~ ~ ~ container.12 with minecraft:diamond_block
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} if data storage mechanization:temp obj.output_item{id:"minecraft:diamond_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s fluid.storage.0 matches 648.. if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players remove @s fluid.storage.0 648

execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run item replace block ~ ~ ~ container.12 with minecraft:emerald_block
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} if data storage mechanization:temp obj.output_item{id:"minecraft:emerald_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s fluid.storage.0 matches 648.. if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players remove @s fluid.storage.0 648

execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run item replace block ~ ~ ~ container.12 with minecraft:redstone_block
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} if data storage mechanization:temp obj.output_item{id:"minecraft:redstone_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s fluid.storage.0 matches 648.. if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players remove @s fluid.storage.0 648

execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_lapis_lazuli"} run item replace block ~ ~ ~ container.12 with minecraft:lapis_block
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_lapis_lazuli"} if data storage mechanization:temp obj.output_item{id:"minecraft:lapis_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s fluid.storage.0 matches 648.. if data storage mechanization:temp obj.fluid_item{id:"molten_lapis_lazuli"} run scoreboard players remove @s fluid.storage.0 648

execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/crystal_composite_block
execute if score @s fluid.storage.0 matches 648.. if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.block.crystal_composite run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s fluid.storage.0 matches 648.. if data storage mechanization:temp obj.fluid_item{id:"molten_crystal_composite"} run scoreboard players remove @s fluid.storage.0 648

execute if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players remove @s fluid.storage.0 288
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run item replace block ~ ~ ~ container.12 with minecraft:glowstone
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} if data storage mechanization:temp obj.output_item{id:"minecraft:glowstone"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players remove @s fluid.storage.0 288
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run item replace block ~ ~ ~ container.12 with minecraft:amethyst_block
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} if data storage mechanization:temp obj.output_item{id:"minecraft:amethyst_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players remove @s fluid.storage.0 288
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run item replace block ~ ~ ~ container.12 with minecraft:quartz_block
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} if data storage mechanization:temp obj.output_item{id:"minecraft:quartz_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count

execute if data storage mechanization:temp obj.fluid_item{id:"lava"} run scoreboard players remove @s fluid.storage.0 1000
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"lava"} run item replace block ~ ~ ~ container.12 with minecraft:obsidian
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"lava"} if data storage mechanization:temp obj.output_item{id:"minecraft:obsidian"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
