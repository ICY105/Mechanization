
#item filter
execute if entity @s[tag=mech_right_click,scores={mechanization.player.used_item_id=5100}] if predicate du:entity/is_sneaking run function mechanization:assembly/tools/item_filter/start

#clear bad items
execute if data entity @s Inventory[].tag.mss run function mechanization:assembly/machines/mss/clear_items
