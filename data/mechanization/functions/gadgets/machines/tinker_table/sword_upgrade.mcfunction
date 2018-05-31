replaceitem block ~ ~ ~ container.0 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.8 air

replaceitem block ~ ~ ~ container.4 diamond_sword{mech_itemid: 4203, mech_upgrades:{poison:0,wither:0,vamparic:0,slowness:0,weakness:0,glow:0},modified:2,display:{Lore:["§7Modified"],Name:"{\"text\":\"Titanium Sword\",\"color\":\"light_purple\",\"italic\":false}"},AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.0,Operation:0,UUIDLeast:100004,UUIDMost:100004,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.0,Operation:0,UUIDLeast:100005,UUIDMost:100005,Slot:"mainhand"}]}


execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradePoison"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.poison int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeWither"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.wither int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeVamparic"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.vamparic int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeSlowness"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.slowness int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeWeakness"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.weakness int 1 if entity @s
execute if block ~ ~ ~ dropper{Items:[{tag:{OreDict:["upgradeGlow"]}}]} store success block ~ ~ ~ Items[2].tag.mech_upgrades.glow int 1 if entity @s

scoreboard players set temp_0 mech_data 40
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeDamage"]}} ]} run scoreboard players add temp_0 mech_data 20
execute store result block ~ ~ ~ Items[2].tag.AttributeModifiers[0].Amount double 0.1 run scoreboard players get temp_0 mech_data

scoreboard players set temp_0 mech_data -300
execute if block ~ ~ ~ dropper{Items:[ {Slot:1b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ dropper{Items:[ {Slot:3b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ dropper{Items:[ {Slot:5b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute if block ~ ~ ~ dropper{Items:[ {Slot:7b,tag:{OreDict:["upgradeAttackSpeed"]}} ]} run scoreboard players add temp_0 mech_data 50
execute store result block ~ ~ ~ Items[2].tag.AttributeModifiers[1].Amount double 0.01 run scoreboard players get temp_0 mech_data



replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.7 air

replaceitem block ~ ~ ~ container.0 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:113,HideFlags:63}
replaceitem block ~ ~ ~ container.2 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.6 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}
replaceitem block ~ ~ ~ container.8 diamond_shovel{Unbreakable:1,UIPart:1,display:{Name:"{\"text\":\" \",\"italic\":false}"},Damage:43,HideFlags:63}


