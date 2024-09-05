
$data modify block -30000000 0 3202 front_text.messages[0] set value '$(name)'
data modify storage mechanization:temp obj.name set from block -30000000 0 3202 front_text.messages[0]
function mechanization:base/utils/items/m.modify_name_2 with storage mechanization:temp obj
