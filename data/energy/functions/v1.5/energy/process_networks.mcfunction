
#up
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_up
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.up] energy.storage matches 1.. run function energy:v1.5/energy/collect_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.up] energy.storage matches 1.. run function energy:v1.5/energy/distribute_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.up] energy.storage matches 1.. run function energy:v1.5/energy/spend_energy

#down
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_down
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.down] energy.storage matches 1.. run function energy:v1.5/energy/collect_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.down] energy.storage matches 1.. run function energy:v1.5/energy/distribute_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.down] energy.storage matches 1.. run function energy:v1.5/energy/spend_energy

#north
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_north
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.north] energy.storage matches 1.. run function energy:v1.5/energy/collect_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.north] energy.storage matches 1.. run function energy:v1.5/energy/distribute_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.north] energy.storage matches 1.. run function energy:v1.5/energy/spend_energy

#south
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_south
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.south] energy.storage matches 1.. run function energy:v1.5/energy/collect_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.south] energy.storage matches 1.. run function energy:v1.5/energy/distribute_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.south] energy.storage matches 1.. run function energy:v1.5/energy/spend_energy

#east
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_east
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.east] energy.storage matches 1.. run function energy:v1.5/energy/collect_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.east] energy.storage matches 1.. run function energy:v1.5/energy/distribute_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.east] energy.storage matches 1.. run function energy:v1.5/energy/spend_energy

#west
scoreboard players operation #energy.network_id energy.data = @s energy.network_id_west
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.west] energy.storage matches 1.. run function energy:v1.5/energy/collect_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.west] energy.storage matches 1.. run function energy:v1.5/energy/distribute_energy
execute unless score #energy.network_id energy.data matches 0 if score @s[tag=!energy.processed.west] energy.storage matches 1.. run function energy:v1.5/energy/spend_energy
