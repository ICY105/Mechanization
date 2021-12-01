
#mark as active
tag @s add mech_active

#add to fuel grade
execute store result score temp_0 mechanization.data run data get entity @s HandItems[0].tag.FuelGrade
scoreboard players add temp_0 mechanization.data 2
execute if score temp_0 mechanization.data matches 1000.. run scoreboard players set temp_0 mechanization.data 1000
execute store result entity @s HandItems[0].tag.FuelGrade int 1 run scoreboard players get temp_0 mech_data

#convert to percentage
scoreboard players set temp_1 mechanization.data 10
scoreboard players operation temp_0 mechanization.data /= temp_1 mech_data

#add effects
data modify entity @s HandItems[0].tag.display.Lore set value []
data modify block -29999999 0 1602 Text1 set value '[{"translate":"mech.item.cell.lore","color":"gray","italic":false,"with":[{"score":{"name":"temp_0","objective":"mech_data"}}]}]'
data modify entity @s HandItems[0].tag.display.Lore append from block -29999999 0 1602 Text1

execute if score temp_0 mechanization.data matches 0..9 run data modify entity @s HandItems[0].tag.display.Name set value '{"translate":"mech.item.depleted_plutonium_cell","color":"dark_green","italic":false}'
execute if score temp_0 mechanization.data matches 0..9 run data modify entity @s HandItems[0].tag.display.Lore append value '{"translate":"mech.item.cell.depleted_grade","color":"gray","italic":false}'

execute if score temp_0 mechanization.data matches 10..39 run data modify entity @s HandItems[0].tag.display.Name set value '{"translate":"mech.item.plutonium_cell","color":"dark_green","italic":false}'
execute if score temp_0 mechanization.data matches 10..39 run data modify entity @s HandItems[0].tag.display.Lore append value '{"translate":"mech.item.cell.reactor_grade","color":"gray","italic":false}'

execute if score temp_0 mechanization.data matches 40..69 run data modify entity @s HandItems[0].tag.display.Name set value '{"translate":"mech.item.plutonium_cell","color":"dark_green","italic":false}'
execute if score temp_0 mechanization.data matches 40..69 run data modify entity @s HandItems[0].tag.display.Lore append value '{"translate":"mech.item.cell.unsafe_grade","color":"gray","italic":false}'

execute if score temp_0 mechanization.data matches 70..99 run data modify entity @s HandItems[0].tag.display.Name set value '{"translate":"mech.item.enriched_plutonium_cell","color":"dark_green","italic":false}'
execute if score temp_0 mechanization.data matches 70..99 run data modify entity @s HandItems[0].tag.display.Lore append value '{"translate":"mech.item.cell.weapons_grade","color":"gray","italic":false}'

execute if score temp_0 mechanization.data matches 100.. run data modify entity @s HandItems[0].tag.display.Name set value '{"translate":"mech.item.pure_plutonium_cell","color":"dark_green","italic":false}'
execute if score temp_0 mechanization.data matches 100.. run data modify entity @s HandItems[0].tag.display.Lore append value '{"translate":"mech.item.cell.unstable_grade","color":"gray","italic":false}'


