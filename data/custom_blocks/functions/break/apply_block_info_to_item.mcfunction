data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.id set from storage custom_blocks:drop_block id
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Name set from storage custom_blocks:drop_block DisplayName
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Lore set from storage custom_blocks:drop_block Lore
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelDataVertical set from storage custom_blocks:drop_block CustomModelDataVertical
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.CustomName set from storage custom_blocks:drop_block CustomName
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.Tags set from storage custom_blocks:drop_block Tags
data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.SetblockCommand set from storage custom_blocks:drop_block SetblockCommand

execute if block ~ ~ ~ air run kill @s
