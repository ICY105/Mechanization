
data modify storage mechanization:temp obj set value {item:{}, drive_item:{}, drive_contents:[], converted_drive:[], block_contents:[]}
data modify storage mechanization:temp obj.item set from block ~ ~ ~ Items[0]

function mechanization:assembly/blocks/mss/item_management/inject_item

data remove block ~ ~ ~ Items[0]
