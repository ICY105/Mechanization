
tag @s add mechanization.active
data modify entity @s item.tag.CustomModelData set value 6423001
execute positioned ^ ^ ^1 as @e[tag=mechanization.control_rod,dx=0,dy=0,dz=0,limit=1] run function mechanization:nuclear/blocks/control_rod/chain_on
