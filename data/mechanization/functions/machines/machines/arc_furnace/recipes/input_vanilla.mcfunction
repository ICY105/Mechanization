
#vanilla raw
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	    id:"minecraft:raw_iron"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	    id:"minecraft:raw_copper"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	    id:"minecraft:raw_gold"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data

#vanilla raw block
execute if score @s mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	    id:"minecraft:raw_iron_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	    id:"minecraft:raw_copper_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	    id:"minecraft:raw_gold_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data

#vanilla ingots/gems
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:iron_ingot"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:copper_ingot"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:gold_ingot"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_netherite"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:netherite_ingot"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_coal"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:coal"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_diamond"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:diamond"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_emerald"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:emerald"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_redstone"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:redstone"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_lapis_lazuli"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:lapis_lazuli"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_amethyst"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:amethyst_shard"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_quartz"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:quartz"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_glowstone"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:glowstone_dust"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_ingot mechanization.data

#vanilla blocks
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:iron_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:copper_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:gold_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_netherite"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:netherite_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_coal"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:coal_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_diamond"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:diamond_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_emerald"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:emerald_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_redstone"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:redstone_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_lapis_lazuli"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:lapis_lazuli_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_amethyst"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:amethyst_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_quartz"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:quartz_block"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_glowstone"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{	     id:"minecraft:glowstone"} run scoreboard players operation @s mechanization.timer = #machines.cf.arc_furnace.speed_block mechanization.data
