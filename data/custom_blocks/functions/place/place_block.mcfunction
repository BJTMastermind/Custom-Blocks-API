# Places The Base Block Armor Stand
execute if block ~ ~ ~ command_block[facing=north] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:stone",Count:1b},Facing:2b,Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=south] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:stone",Count:1b},Facing:3b,Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=east] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:stone",Count:1b},Facing:5b,Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=west] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:stone",Count:1b},Facing:4b,Tags:["customBlock","placing"]}
execute if block ~ ~ ~ command_block[facing=up] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:stone",Count:1b},Facing:0b,Tags:["customBlock","placing","up"]}
execute if block ~ ~ ~ command_block[facing=down] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:stone",Count:1b},Facing:1b,Tags:["customBlock","placing","down"]}

# Updates The Base Block To Include All The Block Info From Storage
execute as @e[type=glow_item_frame,tag=placing] at @s run function custom_blocks:place/apply_block_info_from_storage

# Remove Temporary Tag And Set Base Block
setblock ~ ~ ~ stone
setblock ~ ~ ~ command_block{Command:""}
execute as @e[type=glow_item_frame,tag=placing] at @s run function custom_blocks:place/set_base_block

# Resets Storage After Player Places Custom Block Or Deselects It
execute as @a[gamemode=!creative,predicate=!custom_blocks:selected_placer] run function custom_blocks:place/reset_storage

