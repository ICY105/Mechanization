
data remove block -30000000 0 3201 Items
execute if block ~ ~ ~ #mechanization:inv run data modify block -30000000 0 3201 Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #mechanization:inv run data remove block -30000000 0 3201 Items[{components:{"minecraft:custom_data":{mechanization:{gui_item:1b}}}}]
execute if data block -30000000 0 3201 Items run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]
