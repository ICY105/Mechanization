
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_march_of_the_ocean_king"} run playsound ocean_additions:music_disc.march_of_the_ocean_king record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_march_of_the_ocean_king"} run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"oa.item.music_disc_march_of_the_ocean_king.now_playing","color":"#00D1CA","italic":false}]'}
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_march_of_the_ocean_king"} as @a[distance=..32] at @s run function #smithed.actionbar:message
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_march_of_the_ocean_king"} run scoreboard players set #custom_disc mechanization.data 1

execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_aionios_thanatos"} run playsound ocean_additions:music_disc.aionios_thanatos record @a ~ ~ ~ 6
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_aionios_thanatos"} run data modify storage smithed.actionbar:input message set value {priority:"notification",json:'[{"translate":"oa.item.music_disc_aionios_thanatos.now_playing","color":"#00D1CA","italic":false}]'}
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_aionios_thanatos"} as @a[distance=..32] at @s run function #smithed.actionbar:message
execute if data storage mechanization:temp obj.tag.oa{id:"music_disc_aionios_thanatos"} run scoreboard players set #custom_disc mechanization.data 1
