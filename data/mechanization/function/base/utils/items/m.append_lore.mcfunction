
$data modify block -30000000 0 3202 front_text.messages[0] set value '$(lore)'
data modify storage mechanization:temp obj.lore set from block -30000000 0 3202 front_text.messages[0]
function mechanization:base/utils/items/m.modify_lore_2 with storage mechanization:temp obj
