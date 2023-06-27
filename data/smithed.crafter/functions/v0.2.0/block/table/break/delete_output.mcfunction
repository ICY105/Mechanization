
data modify storage smithed.crafter:main temp.output_item_temp set from storage smithed.crafter:main temp.output_item
execute store success score @s smithed.data run data modify storage smithed.crafter:main temp.output_item_temp set from entity @s Item
kill @s[scores={smithed.data=0}]
