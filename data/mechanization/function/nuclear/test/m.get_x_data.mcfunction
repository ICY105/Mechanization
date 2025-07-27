
$execute if score #debug mechanization.data matches 1 run say math.intersection_x[$(x)][$(rot)]
$data modify storage mechanization:temp obj.data set from storage mechanization:registry math.intersection_x[$(x)][$(rot)]
