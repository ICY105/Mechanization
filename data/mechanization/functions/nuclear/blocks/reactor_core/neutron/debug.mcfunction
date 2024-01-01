
tag @s remove mechanization.debug

execute store result score #temp mechanization.data run data get entity @s data.fission[0]
scoreboard players operation #fission mechanization.data = #temp mechanization.data
scoreboard players operation fission test += #temp mechanization.data
execute store result score #temp mechanization.data run data get entity @s data.fission[1]
scoreboard players operation #fission mechanization.data += #temp mechanization.data
scoreboard players operation fission test += #temp mechanization.data
execute store result score #temp mechanization.data run data get entity @s data.summon
scoreboard players operation total test += #temp mechanization.data
scoreboard players operation #fission mechanization.data *= #cons.100 mechanization.data
scoreboard players operation #fission mechanization.data /= #temp mechanization.data

scoreboard players operation percent test = fission test
scoreboard players operation percent test *= #cons.100 mechanization.data
scoreboard players operation percent test /= total test

execute if score #fission mechanization.data matches 33.. run tellraw @p [ \
  {"color": "green", "text":"⬤ "}, \
  {"color":"white","translate":"Neutron: %s -> [%s, %s], %s%% <S=%s, C=[%s, %s], R=[%s, %s], F=[%s, %s]>", "with":[ \
    {"nbt":"data.summon","entity":"@s"}, \
    {"score":{"name":"@s","objective":"mechanization.fluid.in"}}, \
    {"score":{"name":"@s","objective":"mechanization.fluid.out"}}, \
    {"score":{"name":"#fission","objective":"mechanization.data"}}, \
    {"nbt":"data.scatter","entity":"@s"}, \
    {"nbt":"data.capture[0]","entity":"@s"}, \
    {"nbt":"data.capture[1]","entity":"@s"}, \
    {"nbt":"data.reflection[0]","entity":"@s"}, \
    {"nbt":"data.reflection[1]","entity":"@s"}, \
    {"nbt":"data.fission[0]","entity":"@s"}, \
    {"nbt":"data.fission[1]","entity":"@s"} \
]}]

execute if score #fission mechanization.data matches ..32 run tellraw @p [ \
  {"color": "red", "text":"⬤ "}, \
  {"color":"white","translate":"Neutron: %s -> [%s, %s], %s%% <S=%s, C=[%s, %s], R=[%s, %s], F=[%s, %s]>", "with":[ \
    {"nbt":"data.summon","entity":"@s"}, \
    {"score":{"name":"@s","objective":"mechanization.fluid.in"}}, \
    {"score":{"name":"@s","objective":"mechanization.fluid.out"}}, \
    {"score":{"name":"#fission","objective":"mechanization.data"}}, \
    {"nbt":"data.scatter","entity":"@s"}, \
    {"nbt":"data.capture[0]","entity":"@s"}, \
    {"nbt":"data.capture[1]","entity":"@s"}, \
    {"nbt":"data.reflection[0]","entity":"@s"}, \
    {"nbt":"data.reflection[1]","entity":"@s"}, \
    {"nbt":"data.fission[0]","entity":"@s"}, \
    {"nbt":"data.fission[1]","entity":"@s"} \
]}]
