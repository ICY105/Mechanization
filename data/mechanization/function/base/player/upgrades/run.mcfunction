
scoreboard players set #success mechanization.data 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"machine_upgrade"}}] store success score #success mechanization.data run tag @e[tag=mechanization.upgradable,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.upgraded
execute if score #success mechanization.data matches 1 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.use_machine_upgrade","color":"dark_green"}]'}
execute if score #success mechanization.data matches 1 run function #smithed.actionbar:message
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] *[minecraft:custom_data~{mechanization:{id:"machine_upgrade"}}] 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set #success mechanization.data 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"ender_upgrade"}}] store success score #success mechanization.data run tag @e[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.upgraded.ender
execute if score #success mechanization.data matches 1 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.use_machine_upgrade","color":"dark_purple"}]'}
execute if score #success mechanization.data matches 1 run function #smithed.actionbar:message
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] *[minecraft:custom_data~{mechanization:{id:"ender_upgrade"}}] 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set #success mechanization.data 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"nether_upgrade"}}] store success score #success mechanization.data run tag @e[tag=mechanization.upgraded,tag=!mechanization.upgraded.ender,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.upgraded.nether
execute if score #success mechanization.data matches 1 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.use_machine_upgrade","color":"dark_red"}]'}
execute if score #success mechanization.data matches 1 run function #smithed.actionbar:message
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] *[minecraft:custom_data~{mechanization:{id:"nether_upgrade"}}] 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set #success mechanization.data 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"muffler_upgrade"}}] store success score #success mechanization.data run tag @e[tag=mechanization.mufflable,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.muffled
execute if score #success mechanization.data matches 1 run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"text.mechanization.use_muffler_upgrade","color":"gold"}]'}
execute if score #success mechanization.data matches 1 run function #smithed.actionbar:message
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] *[minecraft:custom_data~{mechanization:{id:"muffler_upgrade"}}] 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s
