# Detects Custom Block And Places It
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=north]{auto:1b,Command:"function custom_blocks:place/place_block with storage custom_blocks:current_block base_block"} replace #custom_blocks:placers[facing=north]{lock:{components:{"minecraft:custom_name":'"custom_blocks:block"'}}}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=south]{auto:1b,Command:"function custom_blocks:place/place_block with storage custom_blocks:current_block base_block"} replace #custom_blocks:placers[facing=south]{lock:{components:{"minecraft:custom_name":'"custom_blocks:block"'}}}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=east]{auto:1b,Command:"function custom_blocks:place/place_block with storage custom_blocks:current_block base_block"} replace #custom_blocks:placers[facing=east]{lock:{components:{"minecraft:custom_name":'"custom_blocks:block"'}}}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=west]{auto:1b,Command:"function custom_blocks:place/place_block with storage custom_blocks:current_block base_block"} replace #custom_blocks:placers[facing=west]{lock:{components:{"minecraft:custom_name":'"custom_blocks:block"'}}}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=up]{auto:1b,Command:"function custom_blocks:place/place_block with storage custom_blocks:current_block base_block"} replace #custom_blocks:placers[facing=up]{lock:{components:{"minecraft:custom_name":'"custom_blocks:block"'}}}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=down]{auto:1b,Command:"function custom_blocks:place/place_block with storage custom_blocks:current_block base_block"} replace #custom_blocks:placers[facing=down]{lock:{components:{"minecraft:custom_name":'"custom_blocks:block"'}}}
