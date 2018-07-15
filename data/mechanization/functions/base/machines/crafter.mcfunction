
clear @s damaged_anvil
kill @e[type=item,sort=nearest,limit=1,distance=..12,nbt={Item:{id:"minecraft:damaged_anvil"}}]
function give:mech_base/machine_crafter
scoreboard players set @s mech_crafter 0
