
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_coal"} run item replace block ~ ~ ~ container.12 with minecraft:coal_block
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_coal"} if data storage du:temp obj.output_item{id:"minecraft:coal_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s mech_fluid matches 648.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_coal"} run scoreboard players remove @s mech_fluid 648

execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_diamond"} run item replace block ~ ~ ~ container.12 with minecraft:diamond_block
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_diamond"} if data storage du:temp obj.output_item{id:"minecraft:diamond_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s mech_fluid matches 648.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_diamond"} run scoreboard players remove @s mech_fluid 648

execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_emerald"} run item replace block ~ ~ ~ container.12 with minecraft:emerald_block
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_emerald"} if data storage du:temp obj.output_item{id:"minecraft:emerald_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s mech_fluid matches 648.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_emerald"} run scoreboard players remove @s mech_fluid 648

execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_redstone"} run item replace block ~ ~ ~ container.12 with minecraft:redstone_block
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_redstone"} if data storage du:temp obj.output_item{id:"minecraft:redstone_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s mech_fluid matches 648.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_redstone"} run scoreboard players remove @s mech_fluid 648

execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_lapis_lazuli"} run item replace block ~ ~ ~ container.12 with minecraft:lapis_block
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_lapis_lazuli"} if data storage du:temp obj.output_item{id:"minecraft:lapis_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s mech_fluid matches 648.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_lapis_lazuli"} run scoreboard players remove @s mech_fluid 648

execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_crystal_composite"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/crystal_composite_block
execute if score @s mech_fluid matches 648.. if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_crystal_composite"} if data storage du:temp obj.output_item.tag.ctc.traits{packed:1b,"gem/crystal_composite":1b} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if score @s mech_fluid matches 648.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_crystal_composite"} run scoreboard players remove @s mech_fluid 648

execute if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_glowstone"} run scoreboard players remove @s mech_fluid 288
execute if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_glowstone"} run item replace block ~ ~ ~ container.12 with minecraft:glowstone
execute if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_glowstone"} if data storage du:temp obj.output_item{id:"minecraft:glowstone"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_amethyst"} run scoreboard players remove @s mech_fluid 288
execute if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_amethyst"} run item replace block ~ ~ ~ container.12 with minecraft:amethyst_block
execute if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_amethyst"} if data storage du:temp obj.output_item{id:"minecraft:amethyst_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_quartz"} run scoreboard players remove @s mech_fluid 288
execute if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_quartz"} run item replace block ~ ~ ~ container.12 with minecraft:quartz_block
execute if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"molten_quartz"} if data storage du:temp obj.output_item{id:"minecraft:quartz_block"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"lava"} run scoreboard players remove @s mech_fluid 288
execute if score $temp_0 mech_data matches ..0 if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"lava"} run item replace block ~ ~ ~ container.12 with minecraft:obsidian
execute if score $temp_0 mech_data matches 1.. if data storage du:temp obj.fluid_item.tag.ctc.traits.liquid{id:"lava"} if data storage du:temp obj.output_item{id:"minecraft:obsidian"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
