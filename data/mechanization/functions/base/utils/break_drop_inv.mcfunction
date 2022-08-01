
data remove block -30000000 0 3201 Items
execute if block ~ ~ ~ #mechanization:inv run data modify block -30000000 0 3201 Items set from block ~ ~ ~ Items
execute if block ~ ~ ~ #mechanization:inv run data remove block -30000000 0 3201 Items[{tag:{mechanization:{gui_item:1b}}}]
execute if data block -30000000 0 3201 Items run loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}
