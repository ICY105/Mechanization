
item replace block -30000000 0 3201 container.0 with minecraft:air

execute if score @s mechanization.manual matches -1 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/base
execute if score @s mechanization.manual matches -2 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/machines
#execute if score @s mechanization.manual matches -3 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/nuclear
execute if score @s mechanization.manual matches -3 run tellraw @s {"text":"Mechanization: Nuclear is being remade and is currently unavailable. Stay tuned for great things!", "color":"gray"}
execute if score @s mechanization.manual matches -4 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/gadgets
execute if score @s mechanization.manual matches -5 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/assembly
execute if score @s mechanization.manual matches -9 run loot replace entity @s weapon.mainhand loot mechanization:base/manual/compat

execute if score @s mechanization.manual matches -6 run data remove block -30000000 0 3201 Items
execute if score @s mechanization.manual matches -6 run loot replace block -30000000 0 3201 container.0 loot tcc:items/compendium
execute if score @s mechanization.manual matches -6 run loot replace block -30000000 0 3201 container.1 loot mechanization:base/manual/start
execute if score @s mechanization.manual matches -6 if data block -30000000 0 3201 Items[{Slot:0b}] run advancement grant @s only mechanization:base/one_manual
execute if score @s mechanization.manual matches -6 if data block -30000000 0 3201 Items[{Slot:0b}] run data remove block -30000000 0 3201 Items[{Slot:0b}].tag.pages[2]
execute if score @s mechanization.manual matches -6 if data block -30000000 0 3201 Items[{Slot:0b}] run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.pages prepend from block -30000000 0 3201 Items[{Slot:1b}].tag.pages[2]
execute if score @s mechanization.manual matches -6 if data block -30000000 0 3201 Items[{Slot:0b}] run data modify block -30000000 0 3201 Items[{Slot:1b}].tag.pages set from block -30000000 0 3201 Items[{Slot:0b}].tag.pages
execute if score @s mechanization.manual matches -6 if data block -30000000 0 3201 Items[{Slot:0b}] run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.1

execute if score @s mechanization.manual matches -7 run data remove block -30000000 0 3201 Items
execute if score @s mechanization.manual matches -7 run loot replace block -30000000 0 3201 container.0 loot simplenergy:i/simplenergy_manual
execute if score @s mechanization.manual matches -7 run loot replace block -30000000 0 3201 container.1 loot mechanization:base/manual/start
execute if score @s mechanization.manual matches -7 if data block -30000000 0 3201 Items[{Slot:0b}] run advancement grant @s only mechanization:base/one_manual
execute if score @s mechanization.manual matches -7 if data block -30000000 0 3201 Items[{Slot:0b}] run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.pages[0] set from block -30000000 0 3201 Items[{Slot:1b}].tag.pages[2]
execute if score @s mechanization.manual matches -7 if data block -30000000 0 3201 Items[{Slot:0b}] run data modify block -30000000 0 3201 Items[{Slot:1b}].tag.pages set from block -30000000 0 3201 Items[{Slot:0b}].tag.pages
execute if score @s mechanization.manual matches -7 if data block -30000000 0 3201 Items[{Slot:0b}] run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.1

execute if score @s mechanization.manual matches -8 run data remove block -30000000 0 3201 Items
execute if score @s mechanization.manual matches -8 run loot replace block -30000000 0 3201 container.0 loot stardust:i/stardust_manual
execute if score @s mechanization.manual matches -8 run loot replace block -30000000 0 3201 container.1 loot mechanization:base/manual/start
execute if score @s mechanization.manual matches -8 if data block -30000000 0 3201 Items[{Slot:0b}] run advancement grant @s only mechanization:base/one_manual
execute if score @s mechanization.manual matches -8 if data block -30000000 0 3201 Items[{Slot:0b}] run data modify block -30000000 0 3201 Items[{Slot:0b}].tag.pages[0] set from block -30000000 0 3201 Items[{Slot:1b}].tag.pages[2]
execute if score @s mechanization.manual matches -8 if data block -30000000 0 3201 Items[{Slot:0b}] run data modify block -30000000 0 3201 Items[{Slot:1b}].tag.pages set from block -30000000 0 3201 Items[{Slot:0b}].tag.pages
execute if score @s mechanization.manual matches -8 if data block -30000000 0 3201 Items[{Slot:0b}] run item replace entity @s weapon.mainhand from block -30000000 0 3201 container.1

execute if score @s mechanization.manual matches -1.. run item replace block -30000000 0 3201 container.0 with minecraft:air
execute if score @s mechanization.manual matches -1.. run item replace block -30000000 0 3201 container.1 with minecraft:air
