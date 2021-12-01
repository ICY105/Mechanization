
#model rotation
execute store result score $temp_0 mechanization.data run data get entity @s Pose.Head[1]
scoreboard players add $temp_0 mechanization.data 20
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get $temp_0 mech_data

#damage
execute store result score $entity.in_0 du_data run data get entity @s ArmorItems[3].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage"}].Amount 15
scoreboard players set $entity.in_1 du_data 0

scoreboard players operation $predicate mechanization.data = @s du_uuid
execute positioned ~ ~-1 ~ as @e[distance=..0.75,type=#du:living,nbt={HurtTime:0s},predicate=!mechanization:matches_uuid] unless score @s du_uuid = $temp_0 du_uuid run function du:entity/damage_entity

#movement
tp @s[tag=!mech_invert] ^ ^ ^0.5
scoreboard players remove @s[tag=!mech_invert] mechanization.data 1
execute if score @s[tag=!mech_invert] mechanization.data matches 0 run tag @s add mech_invert
execute if entity @s[tag=!mech_invert] unless block ^ ^ ^0.5 #mechanization:raytrace_bullets run tag @s add mech_invert

execute if entity @s[tag=mech_invert] facing entity @a[sort=nearest,limit=1,distance=..32,predicate=mechanization:matches_uuid] feet run tp @s ^ ^ ^0.75
execute if entity @s[tag=mech_invert] if entity @a[sort=nearest,limit=1,distance=..1,predicate=mechanization:matches_uuid] run function mechanization:gadgets/tools/energy_saber/saber_projectile_give
execute if entity @s[tag=mech_invert] unless entity @a[sort=nearest,limit=1,distance=..32,predicate=mechanization:matches_uuid] run function mechanization:gadgets/tools/energy_saber/saber_projectile_drop
