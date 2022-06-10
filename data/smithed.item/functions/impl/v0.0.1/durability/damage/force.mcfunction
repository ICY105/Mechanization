# @public

execute store result score $temp smithed.data run data get storage smithed.item:main item.tag.Enchantments[{id: "minecraft:unbreaking"}].lvl

execute if score $temp smithed.data matches 0 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 1 if predicate smithed.item:chance/50 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 2 if predicate smithed.item:chance/33 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 3 if predicate smithed.item:chance/25 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 4 if predicate smithed.item:chance/20 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 5 if predicate smithed.item:chance/16 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 6 if predicate smithed.item:chance/14 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 7 if predicate smithed.item:chance/12 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 8 if predicate smithed.item:chance/11 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 9 if predicate smithed.item:chance/10 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
execute if score $temp smithed.data matches 10.. if predicate smithed.item:chance/9 run function smithed.item:impl/v0.0.1/durability/damage/force/sub
