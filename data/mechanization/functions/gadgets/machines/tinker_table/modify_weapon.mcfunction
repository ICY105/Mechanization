
data modify block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers set value [{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.0,Operation:0,UUIDLeast:100004,UUIDMost:100004,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.0,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]

scoreboard players set temp_0 mech_data 40
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.attackDamage"}].Amount double 0.1 run scoreboard players get temp_0 mech_data

scoreboard players set temp_0 mech_data -300
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute store result block ~ ~ ~ Items[{Slot:17b}].tag.AttributeModifiers[{Name:"generic.attackSpeed"}].Amount double 0.01 run scoreboard players get temp_0 mech_data

scoreboard players set temp_0 mech_data 0
execute if block ~ ~ ~ barrel{Items:[ {Slot:11b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:12b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:13b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:14b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if block ~ ~ ~ barrel{Items:[ {Slot:15b,tag:{mech_itemid:4209}} ]} run scoreboard players add temp_0 mech_data 32000
execute if score temp_0 mech_data matches 1.. run data modify block ~ ~ ~ Items[{Slot:17b}].tag.mech_battery set value {models:0,base_model:0,max_energy:0,energy:0}
execute if score temp_0 mech_data matches 1.. store result block ~ ~ ~ Items[{Slot:17b}].tag.mech_battery.max_energy int 1 run scoreboard players get temp_0 mech_data
