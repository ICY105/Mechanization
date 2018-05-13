replaceitem block ~ ~ ~ container.0 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.8 air


execute store success block ~ ~ ~ Items[2].tag.modified int 4 if entity @s


execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeBouncy"]}}]} store success block ~ ~ ~ Items[2].tag.mech_gun.bouncy int 1 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeVerticalGrip"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.mech_gun.recoil_x
execute if score temp_0 mech_data matches 1 run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.mech_gun.recoil_x int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeAngledGrip"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.mech_gun.recoil_y
execute if score temp_0 mech_data matches 1 run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.mech_gun.recoil_y int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeCryoUnit"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.mech_gun.heat
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 4
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 5
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data /= temp_2 mech_data
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.mech_gun.heat int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradePlasmaPump"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.mech_gun.fire_rate
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 4
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 5
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data /= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.mech_gun.fire_rate int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeFluidActuator"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.mech_gun.velocity
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 5
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 4
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data /= temp_2 mech_data
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.mech_gun.velocity int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1.. store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.mech_gun.damage
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 125
execute if score temp_0 mech_data matches 2 run scoreboard players set temp_2 mech_data 150
execute if score temp_0 mech_data matches 3 run scoreboard players set temp_2 mech_data 175
execute if score temp_0 mech_data matches 4 run scoreboard players set temp_2 mech_data 200
execute if score temp_0 mech_data matches 1.. run scoreboard players set temp_3 mech_data 100
execute if score temp_0 mech_data matches 1.. run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1.. run scoreboard players operation temp_1 mech_data /= temp_3 mech_data
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[2].tag.mech_gun.damage int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeSight"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.Damage
execute if block ~ ~ ~ dropper{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaRifle"] }} ]} run scoreboard players add temp_1 mech_data 2
execute if block ~ ~ ~ dropper{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaSMG"] }} ]} run scoreboard players add temp_1 mech_data 2
execute if block ~ ~ ~ dropper{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaPistol"] }} ]} run scoreboard players add temp_1 mech_data 2
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.Damage int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeScope"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[2].tag.Damage
execute if block ~ ~ ~ dropper{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaRifle"] }} ]} run scoreboard players add temp_1 mech_data 4
execute if block ~ ~ ~ dropper{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaSniper"] }} ]} run scoreboard players add temp_1 mech_data 2
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[2].tag.Damage int 1 run scoreboard players get temp_1 mech_data




replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.7 air

replaceitem block ~ ~ ~ container.0 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:85,HideFlags:63}
replaceitem block ~ ~ ~ container.2 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:67,HideFlags:63}
replaceitem block ~ ~ ~ container.6 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:67,HideFlags:63}
replaceitem block ~ ~ ~ container.8 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:67,HideFlags:63}


