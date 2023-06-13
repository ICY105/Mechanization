
execute if data storage mechanization:temp obj.tag.manic{id:"music_disc_respite"} run playsound manic:item.record.respite record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.manic{id:"music_disc_respite"} run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"Potassium - Respite","color":"light_purple","italic":false}]'}
execute if data storage mechanization:temp obj.tag.manic{id:"music_disc_respite"} as @a[distance=..32] at @s run function #smithed.actionbar:message
execute if data storage mechanization:temp obj.tag.manic{id:"music_disc_respite"} run scoreboard players set #custom_disc mechanization.data 1
