data modify entity @s item.id set from storage custom_blocks:current_block id
data modify entity @s item.tag.display.CustomName set from storage custom_blocks:current_block DisplayName
data modify entity @s item.tag.display.Lore set from storage custom_blocks:current_block Lore

# Set Model
execute as @s run function custom_blocks:place/apply_model

data modify entity @s item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
data modify entity @s item.tag.BlockProperties.CustomName set from storage custom_blocks:current_block CustomName
data modify entity @s item.tag.BlockProperties.Tags set from storage custom_blocks:current_block Tags
data modify entity @s CustomName set from storage custom_blocks:current_block CustomName
data modify entity @s item.tag.BlockProperties.SetblockCommand set from storage custom_blocks:current_block SetblockCommand
