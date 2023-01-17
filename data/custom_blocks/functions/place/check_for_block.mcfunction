# Detects Custom Block And Places It
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=north]{auto:1b,Command:"function custom_blocks:place/place_block"} replace #custom_blocks:placers[facing=north]{Lock:"CustomBlocks:Block"}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=south]{auto:1b,Command:"function custom_blocks:place/place_block"} replace #custom_blocks:placers[facing=south]{Lock:"CustomBlocks:Block"}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=east]{auto:1b,Command:"function custom_blocks:place/place_block"} replace #custom_blocks:placers[facing=east]{Lock:"CustomBlocks:Block"}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=west]{auto:1b,Command:"function custom_blocks:place/place_block"} replace #custom_blocks:placers[facing=west]{Lock:"CustomBlocks:Block"}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=up]{auto:1b,Command:"function custom_blocks:place/place_block"} replace #custom_blocks:placers[facing=up]{Lock:"CustomBlocks:Block"}
execute at @a run fill ~5 ~6 ~5 ~-5 ~-4 ~-5 command_block[facing=down]{auto:1b,Command:"function custom_blocks:place/place_block"} replace #custom_blocks:placers[facing=down]{Lock:"CustomBlocks:Block"}
