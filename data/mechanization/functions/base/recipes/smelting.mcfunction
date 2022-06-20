
scoreboard players set #success mechanization.data 0

# create output
execute if data storage nbt_smelting:io item.tag.smithed.dict.ore{tin:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.ore{titanium:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.ore{uranium:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot

execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{tin:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{titanium:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{uranium:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{steel:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{structural:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{conductive:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{titanium_steel:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{reinforced_structural:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{super_conductive:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{ender_alloy:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{nether_alloy:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot
execute if data storage nbt_smelting:io item.tag.smithed.dict.raw{plutonium:1b} store success score #success mechanization.data run loot replace block -30000000 0 3201 container.0 loot mechanization:base/tin_ingot

# copy item
execute if score #success mechanization.data matches 1 if data block -30000000 0 3201 Items[0] run item replace block ~ ~ ~ container.2 from block -30000000 0 3201 container.0
