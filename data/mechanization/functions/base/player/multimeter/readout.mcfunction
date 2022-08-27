
# Creative cell
execute if entity @s[tag=mechanization.battery.creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"translate":"mech.text.multimeter.infinite","color":"dark_aqua"}]}]

# Default
execute if entity @s[scores={energy.storage=0..},tag=!mechanization.battery.creative] run tellraw @p [{"translate":"mech.text.multimeter.energy","color":"dark_green","with":[{"score":{"name":"@s","objective":"energy.storage"},"color":"dark_aqua"}]}]

execute if entity @s[tag=mechanization.upgraded,tag=!mechanization.upgraded.nether,tag=!mechanization.upgraded.ender] run tellraw @p [{"translate":"mech.item.machine_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.upgraded.nether] run tellraw @p [{"translate":"mech.item.nether_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.upgraded.ender] run tellraw @p [{"translate":"mech.item.ender_upgrade","color":"dark_aqua"}]
execute if entity @s[tag=mechanization.muffled] run tellraw @p [{"translate":"mech.item.muffler_upgrade","color":"dark_aqua"}]

# debug output machine
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":""}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Storage: "},{"score":{"name":"@s","objective":"energy.storage"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Max Storage: "},{"score":{"name":"@s","objective":"energy.max_storage"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Rate: "},{"score":{"name":"@s","objective":"energy.transfer_rate"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Change Rate: "},{"score":{"name":"@s","objective":"energy.change_rate"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID Up:    ","color":"gray"},{"score":{"name":"@s","objective":"energy.network_id_up"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID Down:  ","color":"gray"},{"score":{"name":"@s","objective":"energy.network_id_down"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID North: ","color":"gray"},{"score":{"name":"@s","objective":"energy.network_id_north"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID South: ","color":"gray"},{"score":{"name":"@s","objective":"energy.network_id_south"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID East:  ","color":"gray"},{"score":{"name":"@s","objective":"energy.network_id_east"}}]
execute if entity @s[tag=!mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID West:  ","color":"gray"},{"score":{"name":"@s","objective":"energy.network_id_west"}}]

# debug cable
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":""}]
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID: "},{"score":{"name":"@s","objective":"energy.network_id"}}]
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Data: "},{"score":{"name":"@s","objective":"energy.data"}}]
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Rate: "},{"score":{"name":"@s","objective":"energy.transfer_rate"}}]
