
execute if entity @s[nbt={Dimension:-1}] run function #du:chunk_gen_nether
execute if entity @s[nbt={Dimension:0}] run function #du:chunk_gen
execute if entity @s[nbt={Dimension:1}] run function #du:chunk_gen_end

