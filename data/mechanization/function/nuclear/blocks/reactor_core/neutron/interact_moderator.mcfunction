
# get from lookup table
function mechanization:nuclear/math/m.get_data_entry with storage mechanization:temp io.get_data_entry

# run loop
scoreboard players operation #loop mechanization.data = @s mechanization.data
execute if score #loop mechanization.data matches 1.. run function mechanization:nuclear/blocks/reactor_core/neutron/interact_moderator_2
