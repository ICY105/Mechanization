
execute if entity @s[tag=!mechanization.upgraded.nether] run scoreboard players operation #neutrons mechanization.data = #quantity_thermal mechanization.data
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players operation #neutrons mechanization.data = #quantity_fast mechanization.data

execute if entity @s[tag=!mechanization.upgraded.ender] run scoreboard players operation #neutron mechanization.data *= #cons.10 mechanization.data
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players operation #neutron mechanization.data *= #cons.20 mechanization.data

scoreboard players operation #out mechanization.data = #neutron mechanization.data
scoreboard players operation #out mechanization.data /= #cons.10000 mechanization.data
scoreboard players operation #neutron mechanization.data %= #cons.10000 mechanization.data

execute store result score #result mechanization.data run random value 0..10000
execute if score #neutron mechanization.data > #result mechanization.data run scoreboard players add #out mechanization.data 1

scoreboard players operation @s mechanization.data += #out mechanization.data
execute if entity @s[tag=!mechanization.upgraded.nether] run scoreboard players operation #quantity_thermal mechanization.data -= #out mechanization.data
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players operation #quantity_fast mechanization.data -= #out mechanization.data
