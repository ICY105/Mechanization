





















































































data modify storage smithed.item:main lore.attr set from storage smithed.item:main lore.temp[-1]
data remove storage smithed.item:main lore.temp[-1]
scoreboard players remove $iter smithed.data 1


execute if data storage smithed.item:main lore.attr{AttributeName: "generic.max_health"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.max_health"}'

execute if data storage smithed.item:main lore.attr{AttributeName: "generic.follow_range"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.follow_range"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.knockback_resistance"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.knockback_resistance"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.movement_speed"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.movement_speed"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.flying_speed"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.flying_speed"}'

execute if data storage smithed.item:main lore.attr{AttributeName: "generic.attack_damage"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.attack_damage"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.attack_knockback"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.attack_knockback"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.attack_speed"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.attack_speed"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.luck"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.luck"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.armor"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.armor"}'
execute if data storage smithed.item:main lore.attr{AttributeName: "generic.armor_toughness"} run data modify storage smithed.item:main lore.attr.AttributeName set value '{"translate": "attribute.name.generic.armor_toughness"}'
execute store result score $oper smithed.data run data get storage smithed.item:main lore.attr.Operation 1
scoreboard players set $scale smithed.data 100
execute if score $oper smithed.data matches 1.. run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/set_scale
execute store result score $whole smithed.data run data get storage smithed.item:main lore.attr.Amount 100

scoreboard players operation $whole smithed.data /= $scale smithed.data
scoreboard players operation $whole smithed.data *= $10000 bolt.expr.const
execute store result score $decimal smithed.data run data get storage smithed.item:main lore.attr.Amount 1000000
scoreboard players operation $decimal smithed.data /= $scale smithed.data
scoreboard players operation $decimal smithed.data -= $whole smithed.data

scoreboard players operation $whole smithed.data /= $10000 bolt.expr.const
execute if score $decimal smithed.data matches 1.. run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/simplify
execute unless score $decimal smithed.data matches 0 run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/high_low
execute if score $decimal smithed.data matches 0 run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/high
execute store result storage smithed.item:main lore.attr.AmountHigh int 1 run scoreboard players get $whole smithed.data
execute store result storage smithed.item:main lore.attr.AmountLow int 1 run scoreboard players get $decimal smithed.data




execute if data storage smithed.item:main lore.attr{base: 1b} run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/equals

execute unless data storage smithed.item:main lore.attr{base: 1b} run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/not_equals





data modify storage smithed.item:main item.tag.display.Lore append from block -30000000 0 1603 Text1

execute if score $iter smithed.data matches 1.. run function smithed.item:impl/v0.0.1/lore/attributes/add_lore/feet/loop
