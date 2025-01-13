
scoreboard players remove #loop2 mechanization.data 1

execute store result storage mechanization:temp obj.pointer int 1 run scoreboard players get #loop2 mechanization.data
execute store result score #result mechanization.data run function mechanization:machines/blocks/enchanting_station/enchant_item/m.check_conflicting_2 with storage mechanization:temp obj
execute if score #result mechanization.data matches 1 run return fail

execute if score #loop2 mechanization.data matches 1.. run return run function mechanization:machines/blocks/enchanting_station/enchant_item/check_conflicting
return 1
