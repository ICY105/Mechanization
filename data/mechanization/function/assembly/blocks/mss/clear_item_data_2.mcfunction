
execute store result score #slot mechanization.data run data get storage mechanization:temp list[0].Slot
data modify storage mechanization:temp list[0].Slot set value 01
data modify block -30000000 0 3201 Items append from storage mechanization:temp list[0]

execute if score #slot mechanization.data matches 0 run item replace entity @s hotbar.0 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 1 run item replace entity @s hotbar.1 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 2 run item replace entity @s hotbar.2 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 3 run item replace entity @s hotbar.3 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 4 run item replace entity @s hotbar.4 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 5 run item replace entity @s hotbar.5 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 6 run item replace entity @s hotbar.6 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 7 run item replace entity @s hotbar.7 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 8 run item replace entity @s hotbar.8 from block -30000000 0 3201 container.0

execute if score #slot mechanization.data matches 9 run item replace entity @s inventory.0 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 10 run item replace entity @s inventory.1 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 11 run item replace entity @s inventory.2 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 12 run item replace entity @s inventory.3 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 13 run item replace entity @s inventory.4 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 14 run item replace entity @s inventory.5 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 15 run item replace entity @s inventory.6 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 16 run item replace entity @s inventory.7 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 17 run item replace entity @s inventory.8 from block -30000000 0 3201 container.0

execute if score #slot mechanization.data matches 18 run item replace entity @s inventory.9 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 19 run item replace entity @s inventory.10 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 20 run item replace entity @s inventory.11 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 21 run item replace entity @s inventory.12 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 22 run item replace entity @s inventory.13 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 23 run item replace entity @s inventory.14 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 24 run item replace entity @s inventory.15 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 25 run item replace entity @s inventory.16 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 26 run item replace entity @s inventory.17 from block -30000000 0 3201 container.0

execute if score #slot mechanization.data matches 27 run item replace entity @s inventory.18 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 28 run item replace entity @s inventory.19 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 29 run item replace entity @s inventory.20 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 30 run item replace entity @s inventory.21 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 31 run item replace entity @s inventory.22 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 32 run item replace entity @s inventory.23 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 33 run item replace entity @s inventory.24 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 34 run item replace entity @s inventory.25 from block -30000000 0 3201 container.0
execute if score #slot mechanization.data matches 35 run item replace entity @s inventory.26 from block -30000000 0 3201 container.0

execute if score #slot mechanization.data matches -106 run item replace entity @s weapon.offhand from block -30000000 0 3201 container.0

data remove storage mechanization:temp list[0]
execute if data storage mechanization:temp list[0] run function mechanization:assembly/blocks/mss/clear_item_data_2
