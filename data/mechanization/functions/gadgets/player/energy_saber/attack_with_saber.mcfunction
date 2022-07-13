
advancement revoke @s only mechanization:triggers/attack_with_saber

#effects
execute if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"weakness"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:weakness 4 0
execute if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"slowness"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:slowness 4 0
execute if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"poison"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:poison 4 0
execute if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"wither"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:wither 4 0
execute if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"illuminating"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:glowing 4 0 true
execute if data entity @s SelectedItem.tag.mechanization.upgrades.items[].tag.mechanization.upgrade{effect:"vampiric"} run effect give @s minecraft:regeneration 1 2 true

#add damage
item replace block -30000000 0 3201 container.0 from entity @s weapon.mainhand
scoreboard players set #damage mechanization.data 1
execute if entity @s[gamemode=!creative] run function mechanization:gadgets/player/damage_upgrades
item replace entity @s weapon.mainhand from block -30000000 0 3201 container.0
