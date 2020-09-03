
playsound minecraft:block.note_block.bit block @a ~ ~ ~ 1 2
execute if entity @s[tag=!mech_errored] run clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force
execute if entity @s[tag=!mech_errored] run data merge block ~ ~ ~ {CustomName:'[{"text":"Error: Missing ","color":"red"},{"translate":"mech.item.machine_upgrade"}]'}
scoreboard players set temp_3 mech_data 1
tag @s add mech_errored
