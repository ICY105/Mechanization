
data modify storage mechanization:registry recipes.alloy_furnace append value {input:[{type:"fluid", id:""},{type:"dict",id:""}], output:[{type:"fluid",id:""}], machine_upgrade:0b, bonus_mode:0b}

# bonus mode: 0 = none, 1 = ender, 2 = nether
data modify storage mechanization:registry recipes.alloy_furnace append value {input:[{type:"fluid", id:"molten_iron",   amount: 288},{type:"fluid", id:"molten_coal",   amount: 288},{type:"item",id:"minecraft:flint",        count: 2}], output:[{type:"fluid",id:"molten_steel",            amount: 144}], machine_upgrade:0b, bonus_mode:1b}
data modify storage mechanization:registry recipes.alloy_furnace append value {input:[{type:"fluid", id:"molten_tin",    amount: 288},{type:"fluid", id:"molten_quartz", amount: 288},{type:"item",id:"minecraft:lapis_lazuli", count: 4}], output:[{type:"fluid",id:"molten_structural_alloy", amount: 144}], machine_upgrade:0b, bonus_mode:1b}
data modify storage mechanization:registry recipes.alloy_furnace append value {input:[{type:"fluid", id:"molten_copper", amount: 576},{type:"fluid", id:"molten_gold",   amount: 288},{type:"item",id:"minecraft:redstone",     count: 8}], output:[{type:"fluid",id:"molten_conductive_alloy", amount: 144}], machine_upgrade:0b, bonus_mode:1b}
