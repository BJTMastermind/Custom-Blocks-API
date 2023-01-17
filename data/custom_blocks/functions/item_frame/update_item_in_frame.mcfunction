# Called from item_frame_check.mcfunction

# Updates item display for item frame and adds a tag to prevent loop
data modify entity @s Item.tag.CustomModelDataNorm set from entity @s Item.tag.CustomModelData
data modify entity @s Item.tag.CustomModelData set from entity @s Item.tag.BlockProperties.FrameModel
data modify entity @s Item.tag.displayName set from entity @s Item.tag.display.Name
data modify entity @s Item.tag.display.Name set value ""
tag @s add updated
