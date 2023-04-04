
schedule clear chunk_scan:v2.4/init
schedule clear chunk_scan:v2.4/tick_2
schedule clear chunk_scan:v2.4/tick_20

execute if score #chunk_scan.major load.status matches 2 if score #chunk_scan.minor load.status matches 4 run function chunk_scan:v2.4/init
