
scoreboard players set #complete.1 mechanization.data 64
data modify entity @s HandItems[0] set from storage mechanization:temp obj
execute if predicate mechanization:is_stacksize_16 run scoreboard players set #complete.1 mechanization.data 16
execute if predicate mechanization:is_unstackable run scoreboard players set #complete.1 mechanization.data 1
kill @s
