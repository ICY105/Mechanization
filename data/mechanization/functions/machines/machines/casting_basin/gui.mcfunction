
# select cast
execute unless data block ~ ~ ~ Items[{Slot:3b}] run scoreboard players set @s mechanization.data 0
execute unless data block ~ ~ ~ Items[{Slot:4b}] run scoreboard players set @s mechanization.data 1
execute unless data block ~ ~ ~ Items[{Slot:5b}] run scoreboard players set @s mechanization.data 2
execute unless data block ~ ~ ~ Items[{Slot:6b}] run scoreboard players set @s mechanization.data 3
execute unless data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players set @s mechanization.data 4
execute unless data block ~ ~ ~ Items[{Slot:8b}] run scoreboard players set @s mechanization.data 5
execute unless data block ~ ~ ~ Items[{Slot:13b}] run scoreboard players set @s mechanization.data 6
execute unless data block ~ ~ ~ Items[{Slot:14b}] run scoreboard players set @s mechanization.data 7
clear @a[distance=..8] minecraft:carrot_on_a_stick{mechanization:{gui_item:1b}}

# move/clear items
data modify storage mechanization:temp list set from block ~ ~ ~ Items
data remove storage mechanization:temp list[{tag:{ mechanization:{gui_item:1b} }}]
data remove storage mechanization:temp list[{Slot:0b}]
data remove storage mechanization:temp list[{Slot:12b}]
data remove storage mechanization:temp list[{Slot:18b}]

data remove block -30000000 0 3201 Items
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/casting_basin/gui_clear
execute if data storage mechanization:temp list[0] run function mechanization:machines/machines/casting_basin/gui_move

execute if data block -30000000 0 3201 Items[0] run loot give @p mine -30000000 0 3201 minecraft:air{drop_contents:true}

### fill in items

data remove block ~ ~ ~ Items[{tag:{ mechanization:{gui_item:1b} }}]

# tank
item replace block ~ ~ ~ container.10 with minecraft:leather_boots{mechanization:{gui_item:1b},CustomModelData:0,HideFlags:127,display:{Name:'{"translate":"mech.liquid.empty","italic":false}',Lore:[],color:0}}
scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
scoreboard players add #storage mechanization.data 249
scoreboard players operation #storage mechanization.data /= #cons.250 mechanization.data
scoreboard players add #storage mechanization.data 6422900
execute if data entity @s Item.tag.tank.tag.mechanization.liquid.molten run scoreboard players add #storage mechanization.data 17
execute store result block ~ ~ ~ Items[{Slot:10b}].tag.CustomModelData int 1 run scoreboard players get #storage mechanization.data

scoreboard players operation #storage mechanization.data = @s mechanization.fluid.0
execute if score @s mechanization.fluid.0 matches 1.. run data modify storage mechanization:temp var set from entity @s Item.tag.tank.tag.mechanization.liquid.name
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"nbt":"var","storage":"mechanization:temp","interpret":true,"italic":false}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Name set from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block -30000000 0 3202 Text1 set value '{"translate":"mech.lore.liquid_amount","italic":false,"color":"gray","with":[{"score":{"name":"#storage","objective":"mechanization.data"}}]}'
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.Lore append from block -30000000 0 3202 Text1
execute if score @s mechanization.fluid.0 matches 1.. run data modify block ~ ~ ~ Items[{Slot:10b}].tag.display.color set from entity @s Item.tag.tank.tag.mechanization.liquid.color

# model
execute if score @s mechanization.timer matches 0 run data modify entity @s Item.tag.CustomModelData set value 6422028
execute if score @s mechanization.timer matches 1.. run data modify entity @s Item.tag.CustomModelData set value 6422950

#casts
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422964,HideFlags:127,display:{Name:'{"translate":"mech.item.ingot_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"144"},{"text":"1"}]}']}}
item replace block ~ ~ ~ container.5 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422965,HideFlags:127,display:{Name:'{"translate":"mech.item.block_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"1296"},{"text":"9"}]}','{"translate":"mech.lore.cast_cost_gem","italic":false,"color":"gray","with":[{"text":"648"},{"text":"9"}]}']}}
item replace block ~ ~ ~ container.6 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422966,HideFlags:127,display:{Name:'{"translate":"mech.item.nugget_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"16"},{"text":"1/9"}]}']}}
item replace block ~ ~ ~ container.7 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422970,HideFlags:127,display:{Name:'{"translate":"mech.item.gem_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost_gem","italic":false,"color":"gray","with":[{"text":"72"},{"text":"1"}]}']}}
execute if entity @s[tag=!mechanization.upgraded] run item replace block ~ ~ ~ container.8 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422967,HideFlags:127,display:{Name:'{"translate":"mech.item.rod_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"432"},{"text":"3"}]}']}}
execute if entity @s[tag=!mechanization.upgraded] run item replace block ~ ~ ~ container.13 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422968,HideFlags:127,display:{Name:'{"translate":"mech.item.plate_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"576"},{"text":"4"}]}']}}
execute if entity @s[tag=!mechanization.upgraded] run item replace block ~ ~ ~ container.14 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422969,HideFlags:127,display:{Name:'{"translate":"mech.item.gear_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"720"},{"text":"5"}]}']}}
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run item replace block ~ ~ ~ container.8 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422967,HideFlags:127,display:{Name:'{"translate":"mech.item.rod_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"360"},{"text":"2.5"}]}']}}
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run item replace block ~ ~ ~ container.13 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422968,HideFlags:127,display:{Name:'{"translate":"mech.item.plate_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"504"},{"text":"3.5"}]}']}}
execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender] run item replace block ~ ~ ~ container.14 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422969,HideFlags:127,display:{Name:'{"translate":"mech.item.gear_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"648"},{"text":"4.5"}]}']}}
execute if entity @s[tag=mechanization.upgraded.ender] run item replace block ~ ~ ~ container.8 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422967,HideFlags:127,display:{Name:'{"translate":"mech.item.rod_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"288"},{"text":"2"}]}']}}
execute if entity @s[tag=mechanization.upgraded.ender] run item replace block ~ ~ ~ container.13 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422968,HideFlags:127,display:{Name:'{"translate":"mech.item.plate_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"432"},{"text":"3"}]}']}}
execute if entity @s[tag=mechanization.upgraded.ender] run item replace block ~ ~ ~ container.14 with minecraft:carrot_on_a_stick{mechanization:{gui_item:1b},CustomModelData:6422969,HideFlags:127,display:{Name:'{"translate":"mech.item.gear_cast","italic":false}',Lore:['{"translate":"mech.lore.cast_cost","italic":false,"color":"gray","with":[{"text":"576"},{"text":"4"}]}']}}

execute if score @s mechanization.data matches 1 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.4
execute if score @s mechanization.data matches 2 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.5
execute if score @s mechanization.data matches 3 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.6
execute if score @s mechanization.data matches 4 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.7
execute if score @s mechanization.data matches 5 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.8
execute if score @s mechanization.data matches 6 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.13
execute if score @s mechanization.data matches 7 run item replace block ~ ~ ~ container.3 from block ~ ~ ~ container.14
