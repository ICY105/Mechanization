
#load scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.stored_energy matches -2147483648.. store result score @s mechanization.stored_energy run data get entity @s Item.tag.mech_power
execute if score $base.cf.backup mechanization.data matches 1 unless score @s mechanization.network_id matches -2147483648.. store result score @s mechanization.network_id run data get entity @s Item.tag.mech_gridid

### main

#ui
execute if data block ~ ~ ~ Items[{Slot:1b}] run function mechanization:machines/machines/reformer/tank_input
function mechanization:machines/machines/reformer/gui

#repair
execute if score @s mechanization.stored_energy matches 128.. if score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b}].tag.Unbreakable unless data block ~ ~ ~ Items[{Slot:3b}].tag{Damage:0} unless data block ~ ~ ~ Items[{Slot:3b}].tag.du_dur.enabled run function mechanization:machines/machines/reformer/normal_repair
execute if score @s mechanization.stored_energy matches 128.. if score @s mechanization.stored_fluid matches 1.. if data block ~ ~ ~ Items[{Slot:3b}].tag.du_dur{init:1b} unless data block ~ ~ ~ Items[{Slot:3b}].tag{Damage:0} run function mechanization:machines/machines/reformer/du_repair

## store scoreboard values
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_power int 1 run scoreboard players get @s mech_power
execute if score $base.cf.backup mechanization.data matches 1 store result entity @s Item.tag.mech_gridid int 1 run scoreboard players get @s mech_gridid

#cleanup
execute unless block ~ ~ ~ dropper run function mechanization:base/utils/break_machine_t2
