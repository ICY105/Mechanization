
# main
function mechanization:base/utils/redstone_active

execute store success entity @s Item.tag.CustomModelData int 6422007 if entity @s
execute if score #active mechanization.data matches 1 unless score @s energy.storage > @s energy.max_storage if entity @s[tag=!mechanization.upgraded] run function mechanization:machines/machines/bio_generator/fuel_normal
execute if score #active mechanization.data matches 1 unless score @s energy.storage > @s energy.max_storage if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run function mechanization:machines/machines/bio_generator/fuel_upgraded
execute if score #active mechanization.data matches 1 unless score @s energy.storage > @s energy.max_storage if entity @s[tag=mechanization.upgrade_ender] run function mechanization:machines/machines/bio_generator/fuel_upgrade_ender
execute if score #active mechanization.data matches 1 unless score @s energy.storage > @s energy.max_storage if entity @s[tag=mechanization.upgrade_nether] run function mechanization:machines/machines/bio_generator/fuel_upgrade_nether

# cleanup
execute unless block ~ ~ ~ minecraft:dropper run function mechanization:base/utils/break_machine_t2
