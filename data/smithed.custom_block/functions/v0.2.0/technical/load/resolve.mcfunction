schedule clear smithed.custom_block:v0.2.0/technical/tick
execute if score #smithed.custom_block.major load.status matches 0 if score #smithed.custom_block.minor load.status matches 2 if score #smithed.custom_block.patch load.status matches 0 run function smithed.custom_block:v0.2.0/technical/load
