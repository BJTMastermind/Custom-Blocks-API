# Resets compare storage
data remove storage custom_blocks:nbt_compare

# Get nbt tags to compare and save result to #match in cbCompareResult
execute at @e[type=#custom_blocks:item_frames,tag=updated,predicate=!custom_blocks:frame_item_player_placed] as @e[type=item,predicate=custom_blocks:is_placer,distance=..3,limit=1] run data modify storage custom_blocks:nbt_compare nbt set from entity @s Item.tag.CustomModelData
execute store success score #match cbCompareResult at @e[type=#custom_blocks:item_frames,tag=updated,predicate=!custom_blocks:frame_item_player_placed] as @e[type=item,predicate=custom_blocks:is_placer,distance=..3,limit=1] run data modify storage custom_blocks:nbt_compare nbt set from entity @s Item.tag.BlockProperties.FrameModel

# Update item back to its default state
execute if score #match cbCompareResult matches 0 at @e[type=#custom_blocks:item_frames,tag=updated,predicate=!custom_blocks:frame_item_player_placed] as @e[type=item,predicate=custom_blocks:is_placer,distance=..3,limit=1] run function custom_blocks:item_frame/update_item_out_frame

# Reset cbCompareResult and remove tag from item frame
scoreboard players set #match cbCompareResult 1
execute as @e[type=#custom_blocks:item_frames,tag=updated,predicate=!custom_blocks:frame_item_player_placed] run tag @s remove updated
