
# store power and upgrade state
scoreboard players set #stored_power mechanization.data 0
scoreboard players operation #stored_power mechanization.data = @s[tag=!mechanization.battery.quantum] energy.storage

scoreboard players set #upgrade mechanization.data 0
execute if entity @s[tag=mechanization.upgraded] run scoreboard players set #upgrade mechanization.data 1
execute if entity @s[tag=mechanization.upgraded.nether] run scoreboard players set #upgrade mechanization.data 2
execute if entity @s[tag=mechanization.upgraded.ender] run scoreboard players set #upgrade mechanization.data 3

scoreboard players set #muffled mechanization.data 0
execute if entity @s[tag=mechanization.muffled] run scoreboard players set #muffled mechanization.data 1

# store data to item
execute if score #stored_power mechanization.data matches 1.. as @e[type=item,sort=nearest,limit=1,distance=..1] if data entity @s Item.tag.mechanization.id store result entity @s Item.tag.mechanization.energy int 1 run scoreboard players get #stored_power mechanization.data
execute if score #stored_power mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '[{"translate":"text.mechanization.stored_energy","color":"gray","italic":false,"with":[{"score":{"name":"#stored_power","objective":"mechanization.data"},"color":"gray"}]}]'
execute if score #stored_power mechanization.data matches 1.. as @e[type=item,sort=nearest,limit=1,distance=..1] run data modify entity @s Item.tag.display.Lore append from block -30000000 0 3202 front_text.messages[0]

execute if score #upgrade mechanization.data matches 1 as @e[type=item,sort=nearest,limit=1,distance=..1] run data modify entity @s Item.tag.display.Lore append value '{"translate":"item.mechanization.machine_upgrade", "color":"gray", "italic":false}'
execute if score #upgrade mechanization.data matches 2 as @e[type=item,sort=nearest,limit=1,distance=..1] run data modify entity @s Item.tag.display.Lore append value '{"translate":"item.mechanization.nether_upgrade",  "color":"gray", "italic":false}'
execute if score #upgrade mechanization.data matches 3 as @e[type=item,sort=nearest,limit=1,distance=..1] run data modify entity @s Item.tag.display.Lore append value '{"translate":"item.mechanization.ender_upgrade",   "color":"gray", "italic":false}'

execute if score #upgrade mechanization.data matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.machine_upgrade set value 1b
execute if score #upgrade mechanization.data matches 2 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.nether_upgrade set value 1b
execute if score #upgrade mechanization.data matches 3 run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.ender_upgrade set value 1b

execute if score #muffled mechanization.data matches 1 as @e[type=item,sort=nearest,limit=1,distance=..1] run data modify entity @s Item.tag.display.Lore append value '{"translate":"item.mechanization.muffler_upgrade", "color":"gray", "italic":false}'
execute if score #muffled mechanization.data matches 1.. run data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item.tag.mechanization.muffled set value 1b
