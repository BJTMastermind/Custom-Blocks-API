# Places The Base Block Armor Stand
execute if block ~ ~ ~ command_block[facing=north] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run data merge entity @s {item:{id:"minecraft:stone",Count:1b},brightness:{block:0,sky:15},transformation:{scale:[1.003,1.003,1.003]},Rotation:[0.0f,0.0f],Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=south] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run data merge entity @s {item:{id:"minecraft:stone",Count:1b},brightness:{block:0,sky:15},transformation:{scale:[1.003,1.003,1.003]},Rotation:[-180.0f,0.0f],Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=east] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run data merge entity @s {item:{id:"minecraft:stone",Count:1b},brightness:{block:0,sky:15},transformation:{scale:[1.003,1.003,1.003]},Rotation:[90.0f,0.0f],Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=west] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run data merge entity @s {item:{id:"minecraft:stone",Count:1b},brightness:{block:0,sky:15},transformation:{scale:[1.003,1.003,1.003]},Rotation:[-90.0f,0.0f],Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=up] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run data merge entity @s {item:{id:"minecraft:stone",Count:1b},brightness:{block:0,sky:15},transformation:{scale:[1.003,1.003,1.003]},Rotation:[0.0f,90.0f],Tags:["customBlock","placing","up"]}
execute if block ~ ~ ~ command_block[facing=down] align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run data merge entity @s {item:{id:"minecraft:stone",Count:1b},brightness:{block:0,sky:15},transformation:{scale:[1.003,1.003,1.003]},Rotation:[0.0f,-90.0f],Tags:["customBlock","placing","down"]}

# Updates The Base Block To Include All The Block Info From Storage
execute as @e[type=item_display,tag=placing] at @s run function custom_blocks:place/apply_block_info_from_storage

# Remove Temporary Tag And Set Base Block
setblock ~ ~ ~ stone
execute as @e[type=item_display,tag=placing] at @s run function custom_blocks:place/set_base_block with storage custom_blocks:current_block BaseBlock

# Resets Storage After Player Places Custom Block Or Deselects It
execute as @a[gamemode=!creative,predicate=!custom_blocks:selected_placer] run function custom_blocks:place/reset_storage
