execute if score #smithed.item.major load.status matches ..0 unless score #smithed.item.major load.status matches 0 run function smithed.item:calls/v0.0.1/technical/enumerate/set_version
execute unless score #smithed.item.set load.status matches 1 if score #smithed.item.major load.status matches ..0 if score #smithed.item.major load.status matches 0 run function smithed.item:calls/v0.0.1/technical/enumerate/minor