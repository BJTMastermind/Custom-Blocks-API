data modify entity @s item.id set from storage custom_blocks:current_block id
data modify entity @s item.tag.display.CustomName set from storage custom_blocks:current_block DisplayName
data modify entity @s item.tag.display.Lore set from storage custom_blocks:current_block Lore

# Set Model
data modify entity @s item.tag.CustomModelData set from storage custom_blocks:current_block CustomModelData
data modify entity @s item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
data modify entity @s item.tag.BlockProperties.Tags set from storage custom_blocks:current_block Tags
data modify entity @s Tags set from storage custom_blocks:current_block Tags
tag @s add customBlock
data modify entity @s item.tag.BlockProperties.BaseBlock set from storage custom_blocks:current_block BaseBlock
