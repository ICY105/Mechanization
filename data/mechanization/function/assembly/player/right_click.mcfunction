
execute if entity @s[tag=player_action.sneaking] if items entity @s weapon.mainhand *[custom_data~{mechanization:{id:"item_filter"}}] run function mechanization:assembly/player/item_filter/start
