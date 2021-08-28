
#Machine Wrench
execute if predicate mechanization:recipes/base/machine_wrench run loot replace block ~ ~ ~ container.16 loot mechanization:base/wrench

#Multimeter
execute if predicate mechanization:recipes/base/multimeter run loot replace block ~ ~ ~ container.16 loot mechanization:base/multimeter

#Vial
execute if predicate mechanization:recipes/base/vial run loot replace block ~ ~ ~ container.16 loot mechanization:base/vial

#machine upgrades
execute if predicate mechanization:recipes/base/machine_upgrade run loot replace block ~ ~ ~ container.16 loot mechanization:base/machine_upgrade
execute if predicate mechanization:recipes/base/ender_upgrade run loot replace block ~ ~ ~ container.16 loot mechanization:base/ender_upgrade
execute if predicate mechanization:recipes/base/nether_upgrade run loot replace block ~ ~ ~ container.16 loot mechanization:base/nether_upgrade

#Machine Frames
execute if predicate mechanization:recipes/base/tier_1_machine_frame run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_1_machine_frame
execute if predicate mechanization:recipes/base/tier_2_machine_frame run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_2_machine_frame
execute if predicate mechanization:recipes/base/tier_3_machine_frame run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_3_machine_frame

#Battery
execute if predicate mechanization:recipes/base/tier_1_battery run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_1_battery
execute if predicate mechanization:recipes/base/tier_2_battery run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_2_battery
execute if predicate mechanization:recipes/base/tier_3_battery run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_3_battery
execute if predicate mechanization:recipes/base/quantum_battery run loot replace block ~ ~ ~ container.16 loot mechanization:base/quantum_battery

execute if predicate mechanization:recipes/base/tier_1_capacitor run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_1_capacitor
execute if predicate mechanization:recipes/base/tier_2_capacitor run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_2_capacitor
execute if predicate mechanization:recipes/base/tier_3_capacitor run loot replace block ~ ~ ~ container.16 loot mechanization:base/tier_3_capacitor

#Energy relay
execute if predicate mechanization:recipes/base/energy_relay run loot replace block ~ ~ ~ container.16 loot mechanization:base/energy_relay

#manual
execute if predicate mechanization:recipes/base/mechanical_manual run loot replace block ~ ~ ~ container.16 loot mechanization:base/manual/start

#resources
execute if data block ~ ~ ~ Items[{id:"minecraft:iron_ingot"}] run function mechanization:base/recipes/iron
execute if data block ~ ~ ~ Items[{id:"minecraft:gold_ingot"}] run function mechanization:base/recipes/gold
execute if data block ~ ~ ~ Items[{id:"minecraft:copper_ingot"}] run function mechanization:base/recipes/copper

execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/tin" run function mechanization:base/recipes/tin
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/titanium" run function mechanization:base/recipes/titanium
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/steel" run function mechanization:base/recipes/steel
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/structural_alloy" run function mechanization:base/recipes/structural_alloy
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/conductive_alloy" run function mechanization:base/recipes/conductive_alloy
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/titanium_steel" run function mechanization:base/recipes/titanium_steel
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/reinforced_structural_alloy" run function mechanization:base/recipes/reinforced_structural_alloy
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/super_conductive_alloy" run function mechanization:base/recipes/super_conductive_alloy
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/ender_alloy" run function mechanization:base/recipes/ender_alloy
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/nether_alloy" run function mechanization:base/recipes/nether_alloy
execute if data block ~ ~ ~ Items[].tag.ctc.traits."gem/crystal_composite" run function mechanization:base/recipes/crystal_composite
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/uranium" run function mechanization:base/recipes/uranium
execute if data block ~ ~ ~ Items[].tag.ctc.traits."metal/plutonium" run function mechanization:base/recipes/plutonium
