
#cost
scoreboard players remove @s mech_power 128
scoreboard players remove @s mech_fluid 1
scoreboard players remove @s[tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] mech_fluid 1
execute if entity @s[tag=!mech_muffler] run playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0

#increase durability
execute store result score $temp_0 mech_data run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute if score $temp_0 mech_data matches 1.. run scoreboard players remove $temp_0 mech_data 1
execute if entity @s[tag=mech_upgraded] if score $temp_0 mech_data matches 1.. run scoreboard players remove $temp_0 mech_data 1
execute store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players get $temp_0 mech_data

#modify item
data modify storage du:temp object set from block ~ ~ ~ Items[{Slot:3b}]
function du:player/durability/change_durability
data remove storage du:temp object.tag.display.Lore[-1]
item modify block ~ ~ ~ container.0 du:append_durability_lore
