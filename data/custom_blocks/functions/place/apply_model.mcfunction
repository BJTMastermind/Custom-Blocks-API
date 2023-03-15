# Non-Vertical Facing
data modify entity @s item.tag.CustomModelData set from storage custom_blocks:current_block CustomModelData
data modify entity @s item.tag.CustomModelDataNorm set from storage custom_blocks:current_block CustomModelData

# Facing up
execute store result score @s[tag=up] cbCalcModel run data get entity @s item.tag.CustomModelData
scoreboard players add @s[tag=up] cbCalcModel 1
execute store result entity @s[tag=up] item.tag.CustomModelData int 1 run scoreboard players get @s cbCalcModel

# Facing down
execute store result score @s[tag=down] cbCalcModel run data get entity @s item.tag.CustomModelData
scoreboard players add @s[tag=down] cbCalcModel 2
execute store result entity @s[tag=down] item.tag.CustomModelData int 1 run scoreboard players get @s cbCalcModel
