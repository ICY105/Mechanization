
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"spawner_mover", has_spawner:1b}}] run function mechanization:machines/player/spawner_mover/spawner_place
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"spawner_mover", has_spawner:0b}}] run function mechanization:machines/player/spawner_mover/spawner_box
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{mechanization:{id:"spawner_controller"}}] run function mechanization:machines/blocks/spawner_controller/place
