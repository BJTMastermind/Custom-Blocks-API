# Reset Storage
data remove storage custom_blocks:drop_block id
data remove storage custom_blocks:drop_block DisplayName
data remove storage custom_blocks:drop_block Lore
data remove storage custom_blocks:drop_block CustomModelData
data remove storage custom_blocks:drop_block CustomModelDataVertical
data remove storage custom_blocks:drop_block CustomName
data remove storage custom_blocks:drop_block Tags
data remove storage custom_blocks:drop_block SetblockCommand

# Check If Custom Block Has Been Broken Then Store Block Info In Storage
execute as @e[type=item_display,tag=customBlock] at @s if block ~ ~ ~ air run tag @s add spawn_drop
execute as @e[type=item_display,tag=customBlock,tag=spawn_drop] at @s run function custom_blocks:break/copy_block_info_to_storage

# Apply Block Info To Item
execute as @e[type=item_display,tag=customBlock,tag=spawn_drop] at @s run function custom_blocks:break/apply_block_info_to_item
