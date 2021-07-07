
function du:player/inv/get_equipment
execute store success block -29999999 0 1601 Items[0].tag.mech_itemid int 2201 if entity @s
execute store success block -29999999 0 1601 Items[0].tag.CustomModelData int 6422201 if entity @s
data modify block -29999999 0 1601 Items[0].tag.spawner_data set from block ~ ~ ~
data modify block -29999999 0 1602 Text1 set value '[{"text":"Entity: ","color":"gray","italic":false},{"nbt":"Items[0].tag.spawner_data.SpawnData.id","block":"-29999999 0 1601","color":"gray","italic":false}]'
data modify block -29999999 0 1601 Items[0].tag.display.Lore set value []
data modify block -29999999 0 1601 Items[0].tag.display.Lore prepend from block -29999999 0 1602 Text1
function du:player/inv/restore_equipment

scoreboard players set in_0 mech_data -1
setblock ~ ~ ~ air