
scoreboard players remove @s mechanization.stored_energy 128
scoreboard players remove @s mechanization.stored_fluid 1
scoreboard players remove @s[tag=mech_upgraded,tag=!mech_upgrade_ender,tag=!mech_upgrade_nether] mechanization.stored_fluid 1
execute if entity @s[tag=!mech_muffler] run playsound mechanization:machines.reformer block @a[distance=..16] ~ ~ ~ 0.3 1.0
execute store result score temp_0 mechanization.data run data get block ~ ~ ~ Items[{Slot:3b}].tag.Damage
execute if score temp_0 mechanization.data matches 1.. run scoreboard players remove temp_0 mechanization.data 1
execute if score temp_0 mechanization.data matches 1.. if entity @s[tag=mech_upgraded] run scoreboard players remove temp_0 mechanization.data 1
execute store result block ~ ~ ~ Items[{Slot:3b}].tag.Damage int 1 run scoreboard players get temp_0 mech_data
