
advancement revoke @s only mechanization:triggers/attack_with_saber

#effects
execute if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"weakness"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:weakness 4 0
execute if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"slowness"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:slowness 4 0
execute if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"poison"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:poison 4 0
execute if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"wither"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:wither 4 0
execute if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"illuminating"} run effect give @e[distance=0.01..8,nbt={HurtTime:10s}] minecraft:glowing 4 0 true
execute if data entity @s SelectedItem.tag.mech_upgrades.items[].tag.mech_upgrade{effect:"vampiric"} run effect give @s minecraft:regeneration 1 2 true

#add damage
item replace block -29999999 0 1601 container.0 from entity @s weapon.mainhand
scoreboard players set $in_0 mech_data 1
execute if entity @s[gamemode=!creative] run function mechanization:gadgets/tools/damage_upgrades
item replace entity @s weapon.mainhand from block -29999999 0 1601 container.0
