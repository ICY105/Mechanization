execute store result score temp_0 du_data run data get entity @s SelectedItem.tag.AttributeModifiers[0].Amount
scoreboard players remove temp_0 du_data 1
execute store result entity @s SelectedItem.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get temp_0 du_data

execute if score temp_0 du_data matches ..0 run replaceitem entity @s weapon.mainhand air
execute if score temp_0 du_data matches ..0 run playsound minecraft:item.shield.break player @s