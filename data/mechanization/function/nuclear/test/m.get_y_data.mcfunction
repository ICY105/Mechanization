
$execute if score #debug mechanization.data matches 1 run say math.intersection_y[$(y)][$(rot)]
$data modify storage mechanization:temp obj.data set from storage mechanization:registry math.intersection_y[$(y)][$(rot)]
