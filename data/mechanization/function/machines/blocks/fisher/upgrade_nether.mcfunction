
# main
scoreboard players set #has_water mechanization.data 0
execute if score @s energy.storage >= #machines.cf.fisher.power mechanization.data store result score #has_water mechanization.data run clone ~-2 ~-2 ~-2 ~2 ~2 ~2 ~-2 ~-2 ~-2 filtered #mechanization:water force
execute if score #has_water mechanization.data matches 120.. run scoreboard players operation @s energy.storage -= #machines.cf.fisher.power mechanization.data
execute if score #has_water mechanization.data matches 120.. run loot spawn ~ ~-2 ~ loot mechanization:gameplay/fishing
execute if score #has_water mechanization.data matches 120.. run loot spawn ~ ~-2 ~ loot mechanization:gameplay/fishing
execute if score #has_water mechanization.data matches 120.. if entity @s[tag=!mechanization.muffled] run playsound mechanization:machines.fisher block @a[distance=..16] ~ ~ ~
