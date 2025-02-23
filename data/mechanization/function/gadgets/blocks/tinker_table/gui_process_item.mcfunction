
$data modify storage mechanization:temp list append from block ~ ~ ~ Items[{Slot:$(index)b}]
$execute store result score #upgrade_type mechanization.data run data get storage mechanization:temp list[{Slot:$(index)b}].components."minecraft:custom_data".mechanization.upgrade.type
$execute if score #upgrade_type mechanization.data matches 0 if data storage mechanization:temp Items[{Slot:$(index)b,id:"minecraft:elytra"}] run scoreboard players set #upgrade_type mechanization.data 3
$execute unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block -30000000 0 3201 container.$(index) from block ~ ~ ~ container.$(index)
$execute unless score #upgrade_type mechanization.data = #type mechanization.data run item replace block ~ ~ ~ container.$(index) with minecraft:air
