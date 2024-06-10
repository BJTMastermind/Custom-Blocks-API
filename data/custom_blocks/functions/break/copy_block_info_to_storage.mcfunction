data modify storage custom_blocks:drop_block id set from entity @s item.id
data modify storage custom_blocks:drop_block item_name set from entity @s item.components.minecraft:item_name
data modify storage custom_blocks:drop_block lore set from entity @s item.components.minecraft:lore
data modify storage custom_blocks:drop_block custom_model_data set from entity @s item.components.minecraft:custom_model_data
data modify storage custom_blocks:drop_block Tags set from entity @s item.components.minecraft:custom_data.block_properties.Tags
data modify storage custom_blocks:drop_block base_block set from entity @s item.components.minecraft:custom_data.block_properties.base_block
