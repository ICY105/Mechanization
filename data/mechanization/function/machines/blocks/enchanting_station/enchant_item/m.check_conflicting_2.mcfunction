
$data modify storage mechanization:temp obj.id set from storage mechanization:temp obj.enchantment.exclusive[$(pointer)]
return run function mechanization:machines/blocks/enchanting_station/enchant_item/m.check_conflicting_3 with storage mechanization:temp obj
