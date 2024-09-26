
data modify storage mechanization:temp list set value []
$data modify storage mechanization:temp list append from storage mechanization:registry recipes.alloy_furnace[{input:[{type:fluid,id:"$(id)"}]}]
