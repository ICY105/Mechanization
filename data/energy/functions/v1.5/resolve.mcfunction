
schedule clear energy:v1.5/init
schedule clear energy:v1.5/tick

execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches 5 run function energy:v1.5/init
