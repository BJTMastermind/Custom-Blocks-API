data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.id set from storage custom_blocks:drop_block id
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.minecraft:item_name set from storage custom_blocks:drop_block item_name
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.minecraft:lore set from storage custom_blocks:drop_block lore
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.minecraft:custom_model_data set from storage custom_blocks:drop_block custom_model_data
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.minecraft:lock set value "custom_blocks:block"
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.minecraft:custom_data.block_properties.Tags set from storage custom_blocks:drop_block Tags
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.components.minecraft:custom_data.block_properties.base_block set from storage custom_blocks:drop_block base_block

execute if block ~ ~ ~ air run kill @s
