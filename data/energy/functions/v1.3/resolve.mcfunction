
schedule clear energy:v1.3/init
schedule clear energy:v1.3/tick

execute if score #energy.major load.status matches 1 if score #energy.minor load.status matches 3 run function energy:v1.3/init
