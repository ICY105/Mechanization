
data modify entity @s Item.tag.dest set from entity @p[distance=..16,nbt={SelectedItem:{tag:{mechanization:{id:"gps"}}}}] SelectedItem.tag.pos
tellraw @p [{"translate":"mech.text.gps.set_pos","color":"dark_green","with":[{"score":{"name":"#x","objective":"mechanization.data"},"color":"dark_aqua"},{"score":{"name":"#y","objective":"mechanization.data"},"color":"dark_aqua"},{"score":{"name":"#z","objective":"mechanization.data"},"color":"dark_aqua"},{"nbt":"obj.dimension","storage":"mechanization:temp","color":"dark_aqua"}]}]
