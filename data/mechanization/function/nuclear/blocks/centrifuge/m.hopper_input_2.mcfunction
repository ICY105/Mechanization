
$item replace block -30000000 0 3216 container.0 from block ~ ~ ~ container.$(slot)
item modify block -30000000 0 3216 container.0 {"function":"minecraft:set_count","count":1}
loot insert -30000000 0 3201 mine -30000000 0 3216 minecraft:debug_stick[minecraft:custom_data={drop_contents:1b}]

$execute unless items block -30000000 0 3201 container.3 * run item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:set_count","count":-1,"add":true}
execute unless items block -30000000 0 3201 container.3 * run scoreboard players set #success mechanization.data 1
item replace block -30000000 0 3201 container.3 with minecraft:air
