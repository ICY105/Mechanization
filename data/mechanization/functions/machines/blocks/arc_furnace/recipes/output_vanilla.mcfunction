
### check recipes

#vanilla raw
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 180
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_iron"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} run scoreboard players add @s fluid.storage.0 192

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 180
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_copper"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} run scoreboard players add @s fluid.storage.0 192

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 180
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_gold"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} run scoreboard players add @s fluid.storage.0 192

#vanilla raw block
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 1620
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_iron"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} run scoreboard players add @s fluid.storage.0 1728

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 1620
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_copper"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} run scoreboard players add @s fluid.storage.0 1728

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 1620
execute if score @s fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_gold"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} run scoreboard players add @s fluid.storage.0 1728

#vanilla ingots/gems
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_iron"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} run scoreboard players add @s fluid.storage.0 144

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_copper"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} run scoreboard players add @s fluid.storage.0 144

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_gold"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} run scoreboard players add @s fluid.storage.0 144

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} if data storage mechanization:temp obj.fluid_item{id:"molten_netherite"} run scoreboard players add @s fluid.storage.0 144
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_netherite"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} run scoreboard players add @s fluid.storage.0 144

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_coal"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_diamond"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_emerald"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_redstone"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} if data storage mechanization:temp obj.fluid_item{id:"molten_lapis_lazuli"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_lapis_lazuli"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_amethyst"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_quartz"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} run scoreboard players add @s fluid.storage.0 72

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players add @s fluid.storage.0 72
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_glowstone"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} run scoreboard players add @s fluid.storage.0 72

#vanilla blocks
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_iron"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} run scoreboard players add @s fluid.storage.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_copper"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_copper"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} run scoreboard players add @s fluid.storage.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_gold"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} run scoreboard players add @s fluid.storage.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_netherite"} run scoreboard players add @s fluid.storage.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_netherite"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} run scoreboard players add @s fluid.storage.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_coal"} run scoreboard players add @s fluid.storage.0 648
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_coal"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} run scoreboard players add @s fluid.storage.0 648

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_diamond"} run scoreboard players add @s fluid.storage.0 648
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_diamond"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} run scoreboard players add @s fluid.storage.0 648

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_emerald"} run scoreboard players add @s fluid.storage.0 648
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_emerald"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} run scoreboard players add @s fluid.storage.0 648

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_redstone"} run scoreboard players add @s fluid.storage.0 648
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_redstone"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} run scoreboard players add @s fluid.storage.0 648

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_lapis_lazuli"} run scoreboard players add @s fluid.storage.0 648
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_lapis_lazuli"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} run scoreboard players add @s fluid.storage.0 648

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_amethyst"} run scoreboard players add @s fluid.storage.0 288
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_amethyst"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} run scoreboard players add @s fluid.storage.0 288

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} if data storage mechanization:temp obj.fluid_item{id:"molten_quartz"} run scoreboard players add @s fluid.storage.0 288
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_quartz"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} run scoreboard players add @s fluid.storage.0 288

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} if data storage mechanization:temp obj.fluid_item{id:"molten_glowstone"} run scoreboard players add @s fluid.storage.0 288
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_glowstone"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} run scoreboard players add @s fluid.storage.0 288

#vanilla nuggets
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3984 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_nugget"} if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players add @s fluid.storage.0 16
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_nugget"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_iron"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_nugget"} run scoreboard players add @s fluid.storage.0 16

execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 1..3984 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_nugget"} if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players add @s fluid.storage.0 16
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_nugget"} run data modify entity @s item.tag.fluids[0] set from storage fluid:definitions fluid_data[{id:"molten_gold"}]
execute if score @s[tag=!mechanization.upgraded.ender] fluid.storage.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_nugget"} run scoreboard players add @s fluid.storage.0 16
