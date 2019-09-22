function mechanization:gadgets/upgrades/remove_upgrades_tools

tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeEmpowered"]}}]}}}] add mech_upgrade_empower
tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeMagnetic"]}}]}}}] add mech_upgrade_magnetic
tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeTrash"]}}]}}}] add mech_upgrade_trash
tag @s[nbt={SelectedItem:{ tag:{mech_modifiers:[{tag:{OreDict:["upgradeSmash"]}}]}}}] add mech_upgrade_smash
