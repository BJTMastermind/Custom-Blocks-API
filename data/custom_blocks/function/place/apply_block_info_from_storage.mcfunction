data modify entity @s item.id set from storage custom_blocks:current_block id
data modify entity @s item.components.minecraft:item_name set from storage custom_blocks:current_block item_name
data modify entity @s item.components.minecraft:lore set from storage custom_blocks:current_block lore

# Set Model
data modify entity @s item.components.minecraft:custom_model_data set from storage custom_blocks:current_block custom_model_data
data modify entity @s item.components.minecraft:lock set value "custom_blocks:block"
data modify entity @s item.components.minecraft:custom_data.block_properties.Tags set from storage custom_blocks:current_block Tags
data modify entity @s Tags set from storage custom_blocks:current_block Tags
tag @s add customBlock
data modify entity @s item.components.minecraft:custom_data.block_properties.base_block set from storage custom_blocks:current_block base_block
