
execute unless items block ~ ~ ~ container.2 * run scoreboard players set @s mechanization.data 0
execute unless items block ~ ~ ~ container.3 * run scoreboard players set @s mechanization.data 1
execute unless items block ~ ~ ~ container.4 * run scoreboard players set @s mechanization.data 2
execute unless items block ~ ~ ~ container.5 * run scoreboard players set @s mechanization.data 3
execute unless items block ~ ~ ~ container.6 * run scoreboard players set @s mechanization.data 4

execute unless items block ~ ~ ~ container.11 * run scoreboard players set @s mechanization.data 5
execute unless items block ~ ~ ~ container.12 * run scoreboard players set @s mechanization.data 6
execute unless items block ~ ~ ~ container.13 * run scoreboard players set @s mechanization.data 7
execute unless items block ~ ~ ~ container.14 * run scoreboard players set @s mechanization.data 8
execute unless items block ~ ~ ~ container.15 * run scoreboard players set @s mechanization.data 9

execute unless items block ~ ~ ~ container.20 * run scoreboard players set @s mechanization.data 10
execute unless items block ~ ~ ~ container.21 * run scoreboard players set @s mechanization.data 11
execute unless items block ~ ~ ~ container.22 * run scoreboard players set @s mechanization.data 12
execute unless items block ~ ~ ~ container.23 * run scoreboard players set @s mechanization.data 13
execute unless items block ~ ~ ~ container.24 * run scoreboard players set @s mechanization.data 14

execute if score @s mechanization.data matches -1 run return 0

data modify storage mechanization:temp list set value []
execute positioned ^ ^ ^1 run function mechanization:machines/blocks/machine_observer/observe

data modify storage mechanization:temp obj set value {index: 0}
execute store result storage mechanization:temp obj.index int 1 run scoreboard players get @s mechanization.data
execute run function mechanization:machines/blocks/machine_observer/m.get_entry with storage mechanization:temp obj

execute if score @s mechanization.data matches -1 run return 0

execute store result score @s mechanization.fluid.in run data get storage mechanization:temp obj.min_quantity
execute store result score @s mechanization.fluid.out run data get storage mechanization:temp obj.max_quantity
