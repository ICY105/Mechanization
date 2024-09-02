
data modify storage mechanization:temp list set value []
data modify storage mechanization:temp list append from entity @s Inventory[{tag:{mss:{}}}]

data remove storage mechanization:temp list[].tag{mss:{display:3b}}.display.Lore[0]
data remove storage mechanization:temp list[].tag{mss:{display:2b}}.display.Lore
data remove storage mechanization:temp list[].tag{mss:{display:1b}}.display
data remove storage mechanization:temp list[].tag{mss:{display:0b}}
data remove storage mechanization:temp list[].tag.mss

function mechanization:assembly/blocks/mss/clear_item_data_2
