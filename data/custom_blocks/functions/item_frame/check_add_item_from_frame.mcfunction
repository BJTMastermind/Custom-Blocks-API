# Checks if the item frame has a custom block placed by the player in it then updates the item
execute as @e[type=#custom_blocks:item_frames,tag=!updated,predicate=custom_blocks:frame_item_player_placed] run function custom_blocks:item_frame/update_item_in_frame


