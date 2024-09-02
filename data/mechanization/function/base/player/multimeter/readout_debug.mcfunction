
tag @s[tag=mechanization.temp] add mechanization.temp
tag @s[tag=energy.receive] add mechanization.temp

# debug machine
execute if entity @s[tag=mechanization.temp] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":""}]
execute if entity @s[tag=mechanization.temp] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Storage: "},{"score":{"name":"@s","objective":"energy.storage"}}]
execute if entity @s[tag=mechanization.temp] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Max Storage: "},{"score":{"name":"@s","objective":"energy.max_storage"}}]
execute if entity @s[tag=mechanization.temp] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Rate: "},{"score":{"name":"@s","objective":"energy.transfer_rate"}}]
execute if entity @s[tag=mechanization.temp] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Change Rate: "},{"score":{"name":"@s","objective":"energy.change_rate"}}]
execute if entity @s[tag=mechanization.temp] run tellraw @p[tag=mechanization.debug,distance=..10] [{"translate":"Network IDs: [%s, %s, %s, %s, %s, %s]","with":[{"score":{"name":"@s","objective":"energy.network_id_up"}},{"score":{"name":"@s","objective":"energy.network_id_down"}},{"score":{"name":"@s","objective":"energy.network_id_north"}},{"score":{"name":"@s","objective":"energy.network_id_south"}},{"score":{"name":"@s","objective":"energy.network_id_east"}},{"score":{"name":"@s","objective":"energy.network_id_west"}}]}]

tag @s remove mechanization.temp

# debug cable
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":""}]
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID: "},{"score":{"name":"@s","objective":"energy.network_id"}}]
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Data: "},{"score":{"name":"@s","objective":"energy.data"}}]
execute if entity @s[tag=mechanization.cable] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Rate: "},{"score":{"name":"@s","objective":"energy.transfer_rate"}}]

# debug fluid tank
execute if entity @s[tag=fluid.tank] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":""}]
execute if entity @s[tag=fluid.tank] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Rate: "},{"score":{"name":"@s","objective":"fluid.transfer_rate"}}]
execute if entity @s[tag=fluid.tank] run tellraw @p[tag=mechanization.debug,distance=..10] [{"translate":"Storage: [%s, %s, %s, %s]","with":[{"score":{"name":"@s","objective":"fluid.storage.0"}},{"score":{"name":"@s","objective":"fluid.storage.1"}},{"score":{"name":"@s","objective":"fluid.storage.2"}},{"score":{"name":"@s","objective":"fluid.storage.3"}}]}]
execute if entity @s[tag=fluid.tank] run tellraw @p[tag=mechanization.debug,distance=..10] [{"translate":"Max Storage: [%s, %s, %s, %s]","with":[{"score":{"name":"@s","objective":"fluid.max_storage.0"}},{"score":{"name":"@s","objective":"fluid.max_storage.1"}},{"score":{"name":"@s","objective":"fluid.max_storage.2"}},{"score":{"name":"@s","objective":"fluid.max_storage.3"}}]}]
execute if entity @s[tag=fluid.tank] run tellraw @p[tag=mechanization.debug,distance=..10] [{"translate":"IO data: [%s, %s, %s, %s, %s, %s]","with":[{"score":{"name":"@s","objective":"fluid.io.up"}},{"score":{"name":"@s","objective":"fluid.io.down"}},{"score":{"name":"@s","objective":"fluid.io.north"}},{"score":{"name":"@s","objective":"fluid.io.south"}},{"score":{"name":"@s","objective":"fluid.io.east"}},{"score":{"name":"@s","objective":"fluid.io.west"}}]}]
execute if entity @s[tag=fluid.tank] run tellraw @p[tag=mechanization.debug,distance=..10] [{"translate":"Network IDs: [%s, %s, %s, %s, %s, %s]","with":[{"score":{"name":"@s","objective":"fluid.network_id.up"}},{"score":{"name":"@s","objective":"fluid.network_id.down"}},{"score":{"name":"@s","objective":"fluid.network_id.north"}},{"score":{"name":"@s","objective":"fluid.network_id.south"}},{"score":{"name":"@s","objective":"fluid.network_id.east"}},{"score":{"name":"@s","objective":"fluid.network_id.west"}}]}]

# debug pipe
execute if entity @s[tag=fluid.pipe] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":""}]
execute if entity @s[tag=fluid.pipe] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"ID: "},{"score":{"name":"@s","objective":"fluid.network_id"}}]
execute if entity @s[tag=fluid.pipe] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Data: "},{"score":{"name":"@s","objective":"fluid.data"}}]
execute if entity @s[tag=fluid.pipe] run tellraw @p[tag=mechanization.debug,distance=..10] [{"text":"Rate: "},{"score":{"name":"@s","objective":"fluid.transfer_rate"}}]
