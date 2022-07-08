
# Get stored item data
execute store result score #energy mechanization.data run data get entity @s SelectedItem.tag.mechanization.energy

# Set Data
scoreboard players set @e[tag=mechanization.new,tag=mechanization.redstone_control,sort=nearest,limit=1] mechanization.redstone 0
scoreboard players operation @e[tag=mechanization.new,sort=nearest,limit=1] energy.storage = #energy mechanization.data
scoreboard players operation @e[tag=mechanization.new,sort=nearest,limit=1] energy.transfer_rate = #cons.max_int mechanization.data
scoreboard players set @e[tag=mechanization.new,sort=nearest,limit=1] energy.max_storage 4000

execute if data entity @s SelectedItem.tag.mechanzation{machine_upgrade:1b} run tag @e[tag=mechanization.new,sort=nearest,limit=1] add mechanization.upgraded
execute if data entity @s SelectedItem.tag.mechanzation{nether_upgrade:1b} run tag @e[tag=mechanization.new,sort=nearest,limit=1] add mechanization.upgraded.nether
execute if data entity @s SelectedItem.tag.mechanzation{ender_upgrade:1b} run tag @e[tag=mechanization.new,sort=nearest,limit=1] add mechanization.upgraded.ender
execute if data entity @s SelectedItem.tag.mechanzation{muffled:1b} run tag @e[tag=mechanization.new,sort=nearest,limit=1] add mechanization.muffled

# Init
function energy:v1/api/init_machine
tag @e[tag=mechanization.new] remove mechanization.new
