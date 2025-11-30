
scoreboard players set #interact mechanization.data 1

execute unless data entity @s item.components."minecraft:bundle_contents"[0] run return fail

data modify storage mechanization:temp obj set from entity @s item.components."minecraft:bundle_contents"[0]
data modify storage mechanization:temp obj merge value {Slot: 0b}
data modify block -30000000 0 3201 Items append from storage mechanization:temp obj

item replace entity @p[tag=mechanization.interacted,distance=..64] weapon.mainhand from block -30000000 0 3201 container.0

tag @s remove mechanization.reactor_core.mox
tag @s remove mechanization.reactor_core.uranium
tag @s remove mechanization.reactor_core.waste

data modify entity @s item.components."minecraft:bundle_contents" set value []
scoreboard players set @s mechanization.time 0

function mechanization:nuclear/blocks/reactor_core/update_model
