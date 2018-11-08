
#actions
tag @s remove du_sneaking
tag @s[scores={du_sneak=1..}] add du_sneaking
scoreboard players set @s du_sneak 0

tag @s remove du_jumping
tag @s[scores={du_jump=1..}] add du_jumping
scoreboard players set @s du_jump 0

#moving
execute if score timer_2 du_data matches 0 run function du:player/get_moving

#tool nerf
execute if entity @s[nbt={SelectedItem:{ tag:{du_nerf:1b} }}] run function du:player/tool_nerf

#click detect
function du:clickdetect/clickdetect

#custom durability
execute if entity @s[nbt={SelectedItem:{ tag:{du_durability:1b,Unbreakable:1b} }}] run function du:player/durability/process_tools

#damage
execute if score @s du_health matches 12.. if entity @s[nbt={HurtTime:0s}] run function du:player/damage

#custom blocks
execute if entity @s[tag=du_right_click,gamemode=!adventure] run function du:custom_blocks/place_custom_block

#Assign Player IDs
execute unless score @s du_uuid matches ..2147483647 run function du:player/uuid/get_uuid
execute if score @s du_uuid matches 0 run function du:player/uuid/get_uuid

#reset scores
function du:player/reset_scores

#ui clear
clear @s gray_stained_glass_pane{du_gui:1b}