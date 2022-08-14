
schedule clear chunk_scan:v2.3/init
schedule clear chunk_scan:v2.3/tick_2
schedule clear chunk_scan:v2.3/tick_20

execute if score #chunk_scan.major load.status matches 2 if score #chunk_scan.minor load.status matches 3 run function chunk_scan:v2.3/init
