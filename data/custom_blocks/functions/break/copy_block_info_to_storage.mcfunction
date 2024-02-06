data modify storage custom_blocks:drop_block id set from entity @s item.id
data modify storage custom_blocks:drop_block DisplayName set from entity @s item.tag.display.CustomName
data modify storage custom_blocks:drop_block Lore set from entity @s item.tag.display.Lore
data modify storage custom_blocks:drop_block CustomModelData set from entity @s item.tag.CustomModelData
data modify storage custom_blocks:drop_block Tags set from entity @s item.tag.BlockProperties.Tags
data modify storage custom_blocks:drop_block BaseBlock set from entity @s item.tag.BlockProperties.BaseBlock
