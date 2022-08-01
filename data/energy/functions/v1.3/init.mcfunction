
scoreboard objectives add energy.data dummy
scoreboard objectives add energy.change_rate dummy

scoreboard objectives add energy.storage dummy
scoreboard objectives add energy.max_storage dummy
scoreboard objectives add energy.transfer_rate dummy

scoreboard objectives add energy.transfer_capacity dummy
scoreboard objectives add energy.network_id dummy
scoreboard objectives add energy.network_id_up dummy
scoreboard objectives add energy.network_id_down dummy
scoreboard objectives add energy.network_id_north dummy
scoreboard objectives add energy.network_id_south dummy
scoreboard objectives add energy.network_id_east dummy
scoreboard objectives add energy.network_id_west dummy
scoreboard objectives add energy.update_queue dummy

scoreboard players set #20 energy.data 20

schedule function energy:v1.3/tick 3t replace
