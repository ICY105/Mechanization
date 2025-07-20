
data modify block ~ ~-1 ~ TransferCooldown set value 30
execute if items block ~ ~-1 ~ container.* *[minecraft:custom_data~{mechanization:{gui_item: 1b}}] run data remove block ~ ~-1 ~ Items[{components:{"minecraft:custom_data":{mechanization:{gui_item: 1b}}}}]
execute unless items block ~ ~ ~ container.7 * run return fail

setblock -30000000 0 3216 minecraft:yellow_shulker_box replace

item replace block -30000000 0 3201 container.0 from block ~ ~-1 ~ container.0
item replace block -30000000 0 3201 container.1 from block ~ ~-1 ~ container.1
item replace block -30000000 0 3201 container.2 from block ~ ~-1 ~ container.2
item replace block -30000000 0 3201 container.3 from block ~ ~-1 ~ container.3
item replace block -30000000 0 3201 container.4 from block ~ ~-1 ~ container.4
item replace block -30000000 0 3201 container.5 with minecraft:air

execute if items block ~ ~ ~ container.7 * run function mechanization:nuclear/blocks/alchemy_chamber/hopper/m.hopper_output_2 {slot: 7}
execute unless items block -30000000 0 3201 container.5 * positioned ~ ~-1 ~ run return run function mechanization:nuclear/blocks/alchemy_chamber/hopper/hopper_output_3
item replace block -30000000 0 3201 container.5 with minecraft:air
