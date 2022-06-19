
# store power and upgrade state
scoreboard players set #stored_power mechanization.data 0
scoreboard players operation #stored_power mechanization.data = @s[tag=!mechanization.battery.quantum] energy.storage

scoreboard players set #upgrade mechanization.data 0
execute if entity @s[tag=mechanization.upgraded] run scoreboard players set #upgrade mechanization.data 1
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #upgrade mechanization.data 2
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #upgrade mechanization.data 3

scoreboard players set #muffled mechanization.data 0
execute if entity @s[tag=mechanization.muffled] run scoreboard players set #muffled mechanization.data 1

# drop items 1
execute if entity @s[tag=mechanization.machine_crafter] run item replace block ~ ~ ~ container.16 with minecraft:air

data remove block -30000000 0 3201 Items
execute if block ~ ~ ~ #mechanization:inv run data modify block -30000000 0 3201 Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #mechanization:inv run data remove block -30000000 0 3201 Items[{tag:{mechanization:{gui_item:1b}}}]

# Machine Crafting Table
execute if entity @s[tag=mechanization.machine_crafter] run loot spawn ~ ~ ~ loot mechanization:base/machine_crafting_table
execute if entity @s[tag=mechanization.machine_crafter] at @s run setblock ~ ~ ~ minecraft:air replace
kill @s[tag=mechanization.machine_crafter]

# Resource Blocks
execute if entity @s[tag=mechanization.t1_machine_frame] at @s run loot spawn ~ ~ ~ loot mechanization:base/tier_1_machine_frame
execute if entity @s[tag=mechanization.t2_machine_frame] at @s run loot spawn ~ ~ ~ loot mechanization:base/tier_2_machine_frame
execute if entity @s[tag=mechanization.t3_machine_frame] at @s run loot spawn ~ ~ ~ loot mechanization:base/tier_3_machine_frame
execute if entity @s[tag=mechanization.crystal_block] at @s run loot spawn ~ ~ ~ loot mechanization:base/crystal_composite_block
execute if entity @s[tag=mechanization.tin] at @s run loot spawn ~ ~ ~ loot mechanization:base/tin_block
execute if entity @s[tag=mechanization.raw_tin] at @s run loot spawn ~ ~ ~ loot mechanization:base/tin_raw_block
execute if entity @s[tag=mechanization.titanium] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_block
execute if entity @s[tag=mechanization.raw_titanium] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_raw_block
execute if entity @s[tag=mechanization.steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/steel_block
execute if entity @s[tag=mechanization.raw_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/steel_raw_block
execute if entity @s[tag=mechanization.structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/structural_block
execute if entity @s[tag=mechanization.raw_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/structural_raw_block
execute if entity @s[tag=mechanization.conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/conductive_block
execute if entity @s[tag=mechanization.raw_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/conductive_raw_block
execute if entity @s[tag=mechanization.titanium_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_steel_block
execute if entity @s[tag=mechanization.raw_titanium_steel] at @s run loot spawn ~ ~ ~ loot mechanization:base/titanium_steel_raw_block
execute if entity @s[tag=mechanization.reinforced_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/reinforced_structural_block
execute if entity @s[tag=mechanization.raw_reinforced_structural] at @s run loot spawn ~ ~ ~ loot mechanization:base/reinforced_structural_raw_block
execute if entity @s[tag=mechanization.super_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_block
execute if entity @s[tag=mechanization.raw_super_conductive] at @s run loot spawn ~ ~ ~ loot mechanization:base/super_conductive_raw_block
execute if entity @s[tag=mechanization.ender] at @s run loot spawn ~ ~ ~ loot mechanization:base/ender_block
execute if entity @s[tag=mechanization.raw_ender] at @s run loot spawn ~ ~ ~ loot mechanization:base/ender_raw_block
execute if entity @s[tag=mechanization.nether] at @s run loot spawn ~ ~ ~ loot mechanization:base/nether_block
execute if entity @s[tag=mechanization.raw_nether] at @s run loot spawn ~ ~ ~ loot mechanization:base/nether_raw_block
execute if entity @s[tag=mechanization.uranium] at @s run loot spawn ~ ~ ~ loot mechanization:base/uranium_block
execute if entity @s[tag=mechanization.raw_uranium] at @s run loot spawn ~ ~ ~ loot mechanization:base/uranium_raw_block
execute if entity @s[tag=mechanization.plutonium] at @s run loot spawn ~ ~ ~ loot mechanization:base/plutonium_block
execute if entity @s[tag=mechanization.raw_plutonium] at @s run loot spawn ~ ~ ~ loot mechanization:base/plutonium_raw_block

execute if entity @s[tag=mechanization.resource_block] at @s run setblock ~ ~ ~ minecraft:air replace
execute if entity @s[tag=mechanization.resource_block] at @s run kill @s

function #mechanization:wrench_break

# store data to item
execute if score #stored_power mechanization.data matches 1.. store result entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mechanization.energy int 1 run scoreboard players get #stored_power mechanization.data
execute if score #stored_power mechanization.data matches 1.. run data merge block -30000000 0 3202 {Text1:'[{"translate":"mech.text.multimeter.energy","color":"gray","italic":false,"with":[{"score":{"name":"#stored_power","objective":"mechanization.data"},"color":"gray"}]}]'}
execute if score #stored_power mechanization.data matches 1.. as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append from block -30000000 0 3202 Text1

execute if score #upgrade mechanization.data matches 1 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value '{"translate":"mech.item.machine_upgrade", "color":"gray", "italic":false}'
execute if score #upgrade mechanization.data matches 2 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value '{"translate":"mech.item.nether_upgrade",  "color":"gray", "italic":false}'
execute if score #upgrade mechanization.data matches 3 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value '{"translate":"mech.item.ender_upgrade",   "color":"gray", "italic":false}'

execute if score #upgrade mechanization.data matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mechanization.machine_upgrade set value 1b
execute if score #upgrade mechanization.data matches 2 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mechanization.nether_upgrade set value 1b
execute if score #upgrade mechanization.data matches 3 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mechanization.ender_upgrade set value 1b

execute if score #muffled mechanization.data matches 1 as @e[type=item,sort=nearest,limit=1,distance=..0.5] run data modify entity @s Item.tag.display.Lore append value '{"translate":"mech.item.muffler_upgrade", "color":"gray", "italic":false}'
execute if score #muffled mechanization.data matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..0.5] Item.tag.mechanization.muffled set value 1b

# drop items 2
execute if data block -30000000 0 3201 Items if entity @e[type=item,distance=..0.5] run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}
