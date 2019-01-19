execute unless block ~ ~ ~ minecraft:barrel run kill @s
execute unless block ~ ~ ~ minecraft:barrel run kill @e[type=item,nbt={Item:{tag:{du_gui:1b}}}]

data merge entity @s {Fire:32000s}

data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].id set value "minecraft:structure_block"
data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].tag set value {CustomModelData:6421200,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}