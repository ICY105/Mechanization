
execute if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} run item replace block ~ ~ ~ container.12 with minecraft:iron_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_iron"} if data storage mechanization:temp obj.output_item{id:"minecraft:iron_nugget"} run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} run item replace block ~ ~ ~ container.12 with minecraft:gold_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_gold"} if data storage mechanization:temp obj.output_item{id:"minecraft:gold_nugget"} run item modify block ~ ~ ~ container.12 mechanization:increment_count

execute if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/tin_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.tin run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/titanium_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_titanium"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.titanium run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/uranium_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_uranium"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.uranium run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/plutonium_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_plutonium"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.plutonium run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/steel_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_steel"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.steel run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/structural_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_structural_alloy"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.structural_alloy run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/conductive_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_conductive_alloy"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.conductive_alloy run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/titanium_steel_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_titanium_steel"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.titanium_steel run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_reinforced_structural_alloy"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_reinforced_structural_alloy"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/reinforced_structural_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_reinforced_structural_alloy"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.reinforced_structural_alloy run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_super_conductive_alloy"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_super_conductive_alloy"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/super_conductive_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_super_conductive_alloy"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.super_conductive_alloy run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/nether_alloy_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_nether_alloy"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.nether_alloy run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} run scoreboard players remove @s fluid.storage.0 16
execute if score #count mechanization.data matches ..0 if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} run loot replace block ~ ~ ~ container.12 loot mechanization:base/ender_alloy_nugget
execute if score #count mechanization.data matches 1.. if data storage mechanization:temp obj.fluid_item{id:"molten_ender_alloy"} if data storage mechanization:temp obj.output_item.tag.smithed.dict.nugget.ender_alloy run item modify block ~ ~ ~ container.12 mechanization:increment_count
execute if data storage mechanization:temp obj.fluid_item{id:"molten_tin"} run scoreboard players remove @s fluid.storage.0 16
