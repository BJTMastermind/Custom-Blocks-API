# Called from check_removed_item_from_frame.mcfunction

# Update item back to its default state
data modify entity @s Item.tag.CustomModelData set from entity @s Item.tag.CustomModelDataNorm
data modify entity @s Item.tag.display.Name set from entity @s Item.tag.displayName
data remove entity @s Item.tag.CustomModelDataNorm
data remove entity @s Item.tag.displayName
