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
execute as @e[type=glow_item_frame,tag=customBlock] at @s if block ~ ~ ~ air run tag @s add spawn_drop
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block id set from entity @s Item.id
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block DisplayName set from entity @s Item.tag.display.CustomName
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block Lore set from entity @s Item.tag.display.Lore
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block CustomModelDataVertical set from entity @s Item.tag.CustomModelDataVertical
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block CustomModelData set from entity @s Item.tag.CustomModelData
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block CustomModelData set from entity @s Item.tag.CustomModelDataNorm
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block CustomName set from entity @s CustomName
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block Tags set from entity @s Item.tag.BlockProperties.Tags
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block SetblockCommand set from entity @s Item.tag.BlockProperties.SetblockCommand

# Apply Block Info To Item
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.id set from storage custom_blocks:drop_block id
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Name set from storage custom_blocks:drop_block DisplayName
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Lore set from storage custom_blocks:drop_block Lore
# Set Model If Normal
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,tag=!up,tag=!down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelDataVertical set from storage custom_blocks:drop_block CustomModelDataVertical
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,tag=!up,tag=!down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData
# Set Model To Normal If Up
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,tag=up,tag=!down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelDataVertical set from storage custom_blocks:drop_block CustomModelDataVertical
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,tag=up,tag=!down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData
# Set Model To Normal If Down
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,tag=!up,tag=down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelDataVertical set from storage custom_blocks:drop_block CustomModelDataVertical
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop,tag=!up,tag=down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData

execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.CustomName set from storage custom_blocks:drop_block CustomName
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.Tags set from storage custom_blocks:drop_block Tags
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.SetblockCommand set from storage custom_blocks:drop_block SetblockCommand

# Kill Glow Item Frame
execute as @e[type=glow_item_frame,tag=customBlock,tag=spawn_drop] at @s if block ~ ~ ~ air run kill @s


