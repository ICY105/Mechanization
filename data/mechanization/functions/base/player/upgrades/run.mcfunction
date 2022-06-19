
scoreboard players set #success mechanization.data 0
execute if data entity @s SelectedItem.tag.mechanization{id:"machine_upgrade"} run tag @e[tag=mechanization.upgradable,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.upgraded
execute if score #success mechanization.data matches 1 run title @s actionbar [{"translate":"mech.text.machine_upgrade.use","color":"dark_green"}]
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mechanization:{id:"machine_upgrade"}} 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set #success mechanization.data 0
execute if data entity @s SelectedItem.tag.mechanization{id:"ender_upgrade"} run tag @e[tag=mechanization.upgraded,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.upgraded.ender
execute if score #success mechanization.data matches 1 run title @s actionbar [{"translate":"mech.text.machine_upgrade.use","color":"dark_red"}]
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mechanization:{id:"ender_upgrade"}} 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set #success mechanization.data 0
execute if data entity @s SelectedItem.tag.mechanization{id:"nether_upgrade"} run tag @e[tag=mechanization.upgraded,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.upgraded.nether
execute if score #success mechanization.data matches 1 run title @s actionbar [{"translate":"mech.text.machine_upgrade.use","color":"dark_purple"}]
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mechanization:{id:"nether_upgrade"}} 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s

scoreboard players set #success mechanization.data 0
execute if data entity @s SelectedItem.tag.mechanization{id:"muffler_upgrade"} run tag @e[tag=mechanization.mufflable,dx=0,dy=0,dz=0,sort=nearest,limit=1] add mechanization.muffled
execute if score #success mechanization.data matches 1 run title @s actionbar [{"translate":"mech.text.muffler_upgrade.use","color":"gold"}]
execute if score #success mechanization.data matches 1 run clear @s[gamemode=!creative] minecraft:carrot_on_a_stick{mechanization:{id:"muffler_upgrade"}} 1
execute if score #success mechanization.data matches 1 run playsound minecraft:block.anvil.use player @s
