
### check recipes

#vanilla raw
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 180
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_iron
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron"} run scoreboard players add @s mechanization.fluid.0 192

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players add @s mechanization.fluid.0 180
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_copper
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper"} run scoreboard players add @s mechanization.fluid.0 192

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 180
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_gold
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold"} run scoreboard players add @s mechanization.fluid.0 192

#vanilla raw block
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 1620
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_iron
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_iron_block"} run scoreboard players add @s mechanization.fluid.0 1728

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players add @s mechanization.fluid.0 1620
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_copper
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_copper_block"} run scoreboard players add @s mechanization.fluid.0 1728

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 1620
execute if score @s mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_gold
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:raw_gold_block"} run scoreboard players add @s mechanization.fluid.0 1728

#vanilla ingots/gems
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_iron
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_ingot"} run scoreboard players add @s mechanization.fluid.0 144

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_copper
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_ingot"} run scoreboard players add @s mechanization.fluid.0 144

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_gold
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_ingot"} run scoreboard players add @s mechanization.fluid.0 144

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3856 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_netherite"} run scoreboard players add @s mechanization.fluid.0 144
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_netherite
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_ingot"} run scoreboard players add @s mechanization.fluid.0 144

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_coal"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_coal
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_diamond"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_diamond
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_emerald"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_emerald
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_redstone"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_redstone
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_lapis_lazuli"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_lapis_lazuli
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_amethyst"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_amethyst
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_shard"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_quartz"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_quartz
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz"} run scoreboard players add @s mechanization.fluid.0 72

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3928 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_glowstone"} run scoreboard players add @s mechanization.fluid.0 72
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_glowstone
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone_dust"} run scoreboard players add @s mechanization.fluid.0 72

#vanilla blocks
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_iron
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_block"} run scoreboard players add @s mechanization.fluid.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_copper"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_copper
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:copper_block"} run scoreboard players add @s mechanization.fluid.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_gold
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_block"} run scoreboard players add @s mechanization.fluid.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..2704 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_netherite"} run scoreboard players add @s mechanization.fluid.0 1296
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_netherite
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:netherite_block"} run scoreboard players add @s mechanization.fluid.0 1296

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_coal"} run scoreboard players add @s mechanization.fluid.0 648
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_coal
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:coal_block"} run scoreboard players add @s mechanization.fluid.0 648

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_diamond"} run scoreboard players add @s mechanization.fluid.0 648
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_diamond
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:diamond_block"} run scoreboard players add @s mechanization.fluid.0 648

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_emerald"} run scoreboard players add @s mechanization.fluid.0 648
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_emerald
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:emerald_block"} run scoreboard players add @s mechanization.fluid.0 648

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_redstone"} run scoreboard players add @s mechanization.fluid.0 648
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_redstone
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:redstone_block"} run scoreboard players add @s mechanization.fluid.0 648

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_lapis_lazuli"} run scoreboard players add @s mechanization.fluid.0 648
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_lapis_lazuli
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:lapis_lazuli_block"} run scoreboard players add @s mechanization.fluid.0 648

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_amethyst"} run scoreboard players add @s mechanization.fluid.0 288
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_amethyst
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:amethyst_block"} run scoreboard players add @s mechanization.fluid.0 288

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_quartz"} run scoreboard players add @s mechanization.fluid.0 288
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_quartz
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:quartz_block"} run scoreboard players add @s mechanization.fluid.0 288

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3352 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_glowstone"} run scoreboard players add @s mechanization.fluid.0 288
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_glowstone
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:glowstone"} run scoreboard players add @s mechanization.fluid.0 288

#vanilla nuggets
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3984 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_nugget"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_iron"} run scoreboard players add @s mechanization.fluid.0 16
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_nugget"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_iron
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:iron_nugget"} run scoreboard players add @s mechanization.fluid.0 16

execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 1..3984 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_nugget"} if data storage mechanization:temp obj.fluid_item.tag.mechanization.liquid{id:"molten_gold"} run scoreboard players add @s mechanization.fluid.0 16
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_nugget"} run loot replace block -30000000 0 3201 container.0 loot mechanization:base/liquids/vial_of_molten_gold
execute if score @s[tag=!mechanization.upgraded.ender] mechanization.fluid.0 matches 0 if data storage mechanization:temp obj.input_item{id:"minecraft:gold_nugget"} run scoreboard players add @s mechanization.fluid.0 16
