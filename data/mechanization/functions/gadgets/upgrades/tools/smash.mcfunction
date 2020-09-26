
data modify storage du:temp obj set from entity @s Item
summon armor_stand ~ ~ ~ {Tags:["mech_temp"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=mech_temp,distance=..1] run function mechanization:gadgets/upgrades/tools/smash_2 
