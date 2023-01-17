data modify entity @s Item.id set from storage custom_blocks:current_block id
data modify entity @s Item.tag.display.CustomName set from storage custom_blocks:current_block DisplayName
data modify entity @s Item.tag.display.Lore set from storage custom_blocks:current_block Lore

# Set Model If Normal
execute as @s[tag=!up,tag=!down] run function custom_blocks:place/apply_model_normal

# Set Model If Vertical
execute as @s[tag=up,tag=!down] run function custom_blocks:place/apply_model_vertical
execute as @s[tag=!up,tag=down] run function custom_blocks:place/apply_model_vertical

data modify entity @s Item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
data modify entity @s Items.tag.BlockProperties.CustomName set from storage custom_blocks:current_block CustomName
data modify entity @s Items.tag.BlockProperties.Tags set from storage custom_blocks:current_block Tags
data modify entity @s CustomName set from storage custom_blocks:current_block CustomName
data modify entity @s Item.tag.BlockProperties.SetblockCommand set from storage custom_blocks:current_block SetblockCommand
