
#store data
scoreboard players set #broken mechanization.data 0
data modify storage mechanization:temp list set from block -30000000 0 3201 Items[0].tag.mechanization.upgrades.items

#add damage
execute store result score #durability mechanization.data run data get storage mechanization:temp list[{id:"minecraft:elytra"}].tag.Damage
execute if score #durability mechanization.data matches ..431 run scoreboard players add #durability mechanization.data 1
execute unless data storage mechanization:temp list[{id:"minecraft:elytra"}].tag{Unbreakable:1b} store result storage mechanization:temp list[{id:"minecraft:elytra"}].tag.Damage int 1 run scoreboard players get #durability mechanization.data
execute if score #durability mechanization.data matches 432.. run scoreboard players set #broken mechanization.data 1

#set data
data modify block -30000000 0 3201 Items[0].tag.mechanization.upgrades.items set from storage mechanization:temp list
execute if score #broken mechanization.data matches 1 run playsound minecraft:entity.item.break player @s
execute if score #broken mechanization.data matches 1 run data modify block -30000000 0 3201 Items[0].id set value "minecraft:leather_chestplate"
