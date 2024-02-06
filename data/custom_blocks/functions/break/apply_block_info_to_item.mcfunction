data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.id set from storage custom_blocks:drop_block id
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Name set from storage custom_blocks:drop_block DisplayName
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Lore set from storage custom_blocks:drop_block Lore
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.Tags set from storage custom_blocks:drop_block Tags
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.BaseBlock set from storage custom_blocks:drop_block BaseBlock

execute if block ~ ~ ~ air run kill @s
