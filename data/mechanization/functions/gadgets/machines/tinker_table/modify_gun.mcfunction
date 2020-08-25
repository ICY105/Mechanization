
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeBouncy"]}}]} store success block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.bouncy int 1 if entity @s

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeVerticalGrip"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.recoil_x
execute if score temp_0 mech_data matches 1 run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.recoil_x int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeAngledGrip"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.recoil_y
execute if score temp_0 mech_data matches 1 run scoreboard players remove temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.recoil_y int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeCryoUnit"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.heat
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 4
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 5
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data /= temp_2 mech_data
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.heat int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradePlasmaPump"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.fire_rate
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 4
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 5
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data /= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players add temp_1 mech_data 1
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.fire_rate int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeFluidActuator"]}}]} run scoreboard players set temp_0 mech_data 1
execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.velocity
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 5
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 4
execute if score temp_0 mech_data matches 1 run scoreboard players operation temp_1 mech_data /= temp_2 mech_data
execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.velocity int 1 run scoreboard players get temp_1 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{OreDict:["upgradeSuperCharger"]}} ]} run scoreboard players add temp_0 mech_data 1
execute if score temp_0 mech_data matches 1.. store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.damage
execute if score temp_0 mech_data matches 1 run scoreboard players set temp_2 mech_data 125
execute if score temp_0 mech_data matches 2 run scoreboard players set temp_2 mech_data 150
execute if score temp_0 mech_data matches 3 run scoreboard players set temp_2 mech_data 175
execute if score temp_0 mech_data matches 4 run scoreboard players set temp_2 mech_data 200
execute if score temp_0 mech_data matches 5 run scoreboard players set temp_2 mech_data 225
execute if score temp_0 mech_data matches 1.. run scoreboard players set temp_3 mech_data 100
execute if score temp_0 mech_data matches 1.. run scoreboard players operation temp_1 mech_data *= temp_2 mech_data
execute if score temp_0 mech_data matches 1.. run scoreboard players operation temp_1 mech_data /= temp_3 mech_data
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].tag.mech_gun.damage int 1 run scoreboard players get temp_1 mech_data

#scoreboard players set temp_0 mech_data 0
#execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeSight"]}}]} run scoreboard players set temp_0 mech_data 1
#execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.Damage
#execute if block ~ ~ ~ barrel{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaRifle"] }} ]} run scoreboard players add temp_1 mech_data 2
#execute if block ~ ~ ~ barrel{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaSMG"] }} ]} run scoreboard players add temp_1 mech_data 2
#execute if block ~ ~ ~ barrel{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaPistol"] }} ]} run scoreboard players add temp_1 mech_data 2
#execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.Damage int 1 run scoreboard players get temp_1 mech_data

#scoreboard players set temp_0 mech_data 0
#execute if block ~ ~ ~ barrel{Items:[{tag:{OreDict:["upgradeScope"]}}]} run scoreboard players set temp_0 mech_data 1
#execute if score temp_0 mech_data matches 1 store result score temp_1 mech_data run data get block ~ ~ ~ Items[{Slot:10b}].tag.Damage
#execute if block ~ ~ ~ barrel{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaRifle"] }} ]} run scoreboard players add temp_1 mech_data 4
#execute if block ~ ~ ~ barrel{Items:[ {Slot:4b,tag:{ OreDict:["itemPlasmaSniper"] }} ]} run scoreboard players add temp_1 mech_data 2
#execute if score temp_0 mech_data matches 1 store result block ~ ~ ~ Items[{Slot:10b}].tag.Damage int 1 run scoreboard players get temp_1 mech_data
