
$data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:$(index)b}]
$execute store result score #upgrade_type mechanization.data run data get storage mechanization:temp list[{Slot:$(index)b}].components."minecraft:custom_data".mechanization.upgrade.type
$execute if score #upgrade_type mechanization.data matches 0 if data storage mechanization:temp list[{Slot:$(index)b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
$execute unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.$(index) from block ~ ~ ~ container.$(index)
$execute unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.$(index) with minecraft:air

$execute if score #upgrade_type mechanization.data = #type mechanization.data store result score #count mechanization.data run data get storage mechanization:temp list[{Slot:$(index)b}].count
$execute if score #upgrade_type mechanization.data = #type mechanization.data if score #count mechanization.data matches 2.. run item replace block -30000000 0 3201 container.$(index) from block ~ ~ ~ container.$(index)
$execute if score #upgrade_type mechanization.data = #type mechanization.data if score #count mechanization.data matches 2.. run item modify block -30000000 0 3201 container.$(index) mechanization:decrement_count
$execute if score #upgrade_type mechanization.data = #type mechanization.data if score #count mechanization.data matches 2.. run data modify storage mechanization:temp list[{Slot:$(index)b}].count set value 1
$execute if score #upgrade_type mechanization.data = #type mechanization.data if score #count mechanization.data matches 2.. run item modify block ~ ~ ~ container.$(index) {"function":"minecraft:set_count","count":1}
