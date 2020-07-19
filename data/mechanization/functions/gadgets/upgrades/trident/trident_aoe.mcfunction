tag @s add mech_landed

execute if data entity @s Trident.tag.mech_modifiers[].tag{OreDict:["upgradePoison"]} positioned ~ ~-1 ~ run effect give @e[distance=..2,type=#du:living] poison 4 1
execute if data entity @s Trident.tag.mech_modifiers[].tag{OreDict:["upgradeWither"]} positioned ~ ~-1 ~ run effect give @e[distance=..2,type=#du:living] wither 4 1
execute if data entity @s Trident.tag.mech_modifiers[].tag{OreDict:["upgradeSlowness"]} positioned ~ ~-1 ~ run effect give @e[distance=..2,type=#du:living] slowness 4 0
execute if data entity @s Trident.tag.mech_modifiers[].tag{OreDict:["upgradeWeakness"]} positioned ~ ~-1 ~ run effect give @e[distance=..2,type=#du:living] weakness 4 0
execute if data entity @s Trident.tag.mech_modifiers[].tag{OreDict:["upgradeGlow"]} positioned ~ ~-1 ~ run effect give @e[distance=..2,type=#du:living] glowing 4 0

