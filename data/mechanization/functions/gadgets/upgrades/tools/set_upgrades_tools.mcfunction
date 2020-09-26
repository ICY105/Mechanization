
execute store success score temp_0 mech_data run data get entity @s SelectedItem.tag.mech_modifiers[{tag:{OreDict:["upgradeEmpowered"]}}]
execute if data entity @s SelectedItem.tag.mech_modifiers[].tag{OreDict:["upgradeEmpowered"]} if score temp_0 mech_data matches 1 run tag @s add mech_upgrade_empower_1
execute if data entity @s SelectedItem.tag.mech_modifiers[].tag{OreDict:["upgradeEmpowered"]} if score temp_0 mech_data matches 0 run tag @s add mech_upgrade_empower_2

tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeMagnetic"]}}]}}}] add mech_upgrade_magnetic
tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeTrash"]}}]}}}] add mech_upgrade_trash
tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeSmash"]}}]}}}] add mech_upgrade_smash
