####################
# Commands to run when the output is changed
####################

tag @s remove smithed.no_shift_click
execute if data entity @s ArmorItems[3].tag.smithed.stored_output.id run function smithed.crafter:v0.1.0/block/table/crafting/manage_invalids/export_output
execute if entity @s[tag=smithed.crafter.assembled_output] run function smithed.crafter:v0.1.0/block/table/crafting/output/clear_input
