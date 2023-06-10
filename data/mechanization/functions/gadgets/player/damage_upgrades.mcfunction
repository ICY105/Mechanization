
# store data
data modify storage mechanization:temp list set from block -30000000 0 3201 Items[0].tag.mechanization.upgrades.items
scoreboard players set #broken mechanization.data 0

scoreboard players set #reinforced mechanization.data 0
execute if data storage mechanization:temp list[].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players set #reinforced mechanization.data 1

execute if score #reinforced mechanization.data matches 1 store result score #reinforced_damage mechanization.data run data get storage mechanization:temp list
execute if score #reinforced mechanization.data matches 1 run scoreboard players operation #reinforced_damage mechanization.data *= #damage mechanization.data

# add damage
execute store result score #durability mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.max_durability
execute store result score #max_durability mechanization.data run data get storage mechanization:temp list[5].tag.mechanization.upgrade.durability
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[5].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[5].tag.display.Lore append value [{"text":""}]
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[5].tag.mechanization.upgrade.durability run scoreboard players operation #max_durability mechanization.data = #durability mechanization.data
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[5].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[5].tag.mechanization.upgrade merge value {durability:0}
execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #max_durability mechanization.data -= #damage mechanization.data
execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp list[5].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #durability mechanization.data matches 1.. store result storage mechanization:temp list[5].tag.mechanization.upgrade.durability int 1 run scoreboard players get #max_durability mechanization.data
execute if score #durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"score":{"name":"#durability","objective":"mechanization.data"}}]}'
execute if score #durability mechanization.data matches 1.. run data modify storage mechanization:temp list[5].tag.display.Lore[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run data remove storage mechanization:temp list[5]

execute store result score #durability mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.max_durability
execute store result score #max_durability mechanization.data run data get storage mechanization:temp list[4].tag.mechanization.upgrade.durability
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[4].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[4].tag.display.Lore append value [{"text":""}]
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[4].tag.mechanization.upgrade.durability run scoreboard players operation #max_durability mechanization.data = #durability mechanization.data
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[4].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[4].tag.mechanization.upgrade merge value {durability:0}
execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #max_durability mechanization.data -= #damage mechanization.data
execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp list[4].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #durability mechanization.data matches 1.. store result storage mechanization:temp list[4].tag.mechanization.upgrade.durability int 1 run scoreboard players get #max_durability mechanization.data
execute if score #durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"score":{"name":"#durability","objective":"mechanization.data"}}]}'
execute if score #durability mechanization.data matches 1.. run data modify storage mechanization:temp list[4].tag.display.Lore[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run data remove storage mechanization:temp list[4]

execute store result score #durability mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.max_durability
execute store result score #max_durability mechanization.data run data get storage mechanization:temp list[3].tag.mechanization.upgrade.durability
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[3].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[3].tag.display.Lore append value [{"text":""}]
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[3].tag.mechanization.upgrade.durability run scoreboard players operation #max_durability mechanization.data = #durability mechanization.data
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[3].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[3].tag.mechanization.upgrade merge value {durability:0}
execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #max_durability mechanization.data -= #damage mechanization.data
execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp list[3].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #durability mechanization.data matches 1.. store result storage mechanization:temp list[3].tag.mechanization.upgrade.durability int 1 run scoreboard players get #max_durability mechanization.data
execute if score #durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"score":{"name":"#durability","objective":"mechanization.data"}}]}'
execute if score #durability mechanization.data matches 1.. run data modify storage mechanization:temp list[3].tag.display.Lore[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run data remove storage mechanization:temp list[3]

execute store result score #durability mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.max_durability
execute store result score #max_durability mechanization.data run data get storage mechanization:temp list[2].tag.mechanization.upgrade.durability
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[2].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[2].tag.display.Lore append value [{"text":""}]
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[2].tag.mechanization.upgrade.durability run scoreboard players operation #max_durability mechanization.data = #durability mechanization.data
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[2].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[2].tag.mechanization.upgrade merge value {durability:0}
execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #max_durability mechanization.data -= #damage mechanization.data
execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp list[2].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #durability mechanization.data matches 1.. store result storage mechanization:temp list[2].tag.mechanization.upgrade.durability int 1 run scoreboard players get #max_durability mechanization.data
execute if score #durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"score":{"name":"#durability","objective":"mechanization.data"}}]}'
execute if score #durability mechanization.data matches 1.. run data modify storage mechanization:temp list[2].tag.display.Lore[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run data remove storage mechanization:temp list[2]

execute store result score #durability mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.max_durability
execute store result score #max_durability mechanization.data run data get storage mechanization:temp list[1].tag.mechanization.upgrade.durability
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[1].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[1].tag.display.Lore append value [{"text":""}]
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[1].tag.mechanization.upgrade.durability run scoreboard players operation #max_durability mechanization.data = #durability mechanization.data
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[1].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[1].tag.mechanization.upgrade merge value {durability:0}
execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #max_durability mechanization.data -= #damage mechanization.data
execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp list[1].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #reinforced mechanization.data matches 2 if data storage mechanization:temp list[1].tag.mechanization.upgrade{effect:"repair"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #reinforced mechanization.data matches 2 unless data storage mechanization:temp list[1].tag.mechanization.upgrade{effect:"repair"} if score #max_durability mechanization.data < #durability mechanization.data run scoreboard players operation #max_durability mechanization.data += #damage mechanization.data
execute if score #durability mechanization.data matches 1.. store result storage mechanization:temp list[1].tag.mechanization.upgrade.durability int 1 run scoreboard players get #max_durability mechanization.data
execute if score #durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"score":{"name":"#durability","objective":"mechanization.data"}}]}'
execute if score #durability mechanization.data matches 1.. run data modify storage mechanization:temp list[1].tag.display.Lore[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run data remove storage mechanization:temp list[1]

execute store result score #durability mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.max_durability
execute store result score #max_durability mechanization.data run data get storage mechanization:temp list[0].tag.mechanization.upgrade.durability
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[0].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[0].tag.display.Lore append value [{"text":""}]
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[0].tag.mechanization.upgrade.durability run scoreboard players operation #max_durability mechanization.data = #durability mechanization.data
execute if score #durability mechanization.data matches 1.. unless data storage mechanization:temp list[0].tag.mechanization.upgrade.durability run data modify storage mechanization:temp list[0].tag.mechanization.upgrade merge value {durability:0}
execute if score #reinforced mechanization.data matches 0 run scoreboard players operation #max_durability mechanization.data -= #damage mechanization.data
execute if score #reinforced mechanization.data matches 1 if data storage mechanization:temp list[0].tag.mechanization.upgrade{effect:"reinforced"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #reinforced mechanization.data matches 2 if data storage mechanization:temp list[0].tag.mechanization.upgrade{effect:"repair"} run scoreboard players operation #max_durability mechanization.data -= #reinforced_damage mechanization.data
execute if score #reinforced mechanization.data matches 2 unless data storage mechanization:temp list[0].tag.mechanization.upgrade{effect:"repair"} if score #max_durability mechanization.data < #durability mechanization.data run scoreboard players operation #max_durability mechanization.data += #damage mechanization.data
execute if score #durability mechanization.data matches 1.. store result storage mechanization:temp list[0].tag.mechanization.upgrade.durability int 1 run scoreboard players get #max_durability mechanization.data
execute if score #durability mechanization.data matches 1.. run data modify block -30000000 0 3202 front_text.messages[0] set value '{"translate":"item.durability","color":"gray","italic":false,"with":[{"score":{"name":"#max_durability","objective":"mechanization.data"}},{"score":{"name":"#durability","objective":"mechanization.data"}}]}'
execute if score #durability mechanization.data matches 1.. run data modify storage mechanization:temp list[0].tag.display.Lore[1] set from block -30000000 0 3202 front_text.messages[0]
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run scoreboard players set #broken mechanization.data 1
execute if score #durability mechanization.data matches 1.. if score #max_durability mechanization.data matches ..0 run data remove storage mechanization:temp list[0]

# set data
execute if score #broken mechanization.data matches 0 run data modify block -30000000 0 3201 Items[0].tag.mechanization.upgrades.items set from storage mechanization:temp list

execute if score #broken mechanization.data matches 1 run playsound minecraft:entity.item.break player @s
data modify storage mechanization:temp obj set from block -30000000 0 3201 Items[0]
function mechanization:gadgets/blocks/tinker_table/add_modifiers
data modify block -30000000 0 3201 Items[0] set from storage mechanization:temp obj 
