# Places The Base Block Armor Stand
execute if block ~ ~ ~ command_block[facing=north] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Item:{id:"minecraft:stone",Count:1b},Facing:2b,Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=south] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Item:{id:"minecraft:stone",Count:1b},Facing:3b,Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=east] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Item:{id:"minecraft:stone",Count:1b},Facing:5b,Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=west] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Item:{id:"minecraft:stone",Count:1b},Facing:4b,Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=up] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Item:{id:"minecraft:stone",Count:1b},Facing:0b,Tags:["customBlock","placing","up"]} 
execute if block ~ ~ ~ command_block[facing=down] align xyz positioned ~0.5 ~ ~0.5 run summon glow_item_frame ~ ~ ~ {Fixed:1b,Invisible:1b,Item:{id:"minecraft:stone",Count:1b},Facing:1b,Tags:["customBlock","placing","down"]} 

# Updates The Base Block To Include All The Block Info From Storage
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Item.id set from storage custom_blocks:current_block id
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Item.tag.display.CustomName set from storage custom_blocks:current_block DisplayName
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Item.tag.display.Lore set from storage custom_blocks:current_block Lore
# Set Model If Normal
execute as @e[type=glow_item_frame,tag=placing,tag=!up,tag=!down] at @s run data modify entity @s Item.tag.CustomModelData set from storage custom_blocks:current_block CustomModelData
execute as @e[type=glow_item_frame,tag=placing,tag=!up,tag=!down] at @s run data modify entity @s Item.tag.CustomModelDataVertical set from storage custom_blocks:current_block CustomModelDataVertical
# Set Model If Facing Up
execute as @e[type=glow_item_frame,tag=placing,tag=up,tag=!down] at @s run data modify entity @s Item.tag.CustomModelDataNorm set from storage custom_blocks:current_block CustomModelData
execute as @e[type=glow_item_frame,tag=placing,tag=up,tag=!down] at @s run data modify entity @s Item.tag.CustomModelData set from storage custom_blocks:current_block CustomModelDataVertical
# Set Model If Facing Down
execute as @e[type=glow_item_frame,tag=placing,tag=!up,tag=down] at @s run data modify entity @s Item.tag.CustomModelDataNorm set from storage custom_blocks:current_block CustomModelData
execute as @e[type=glow_item_frame,tag=placing,tag=!up,tag=down] at @s run data modify entity @s Item.tag.CustomModelData set from storage custom_blocks:current_block CustomModelDataVertical

execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Items.tag.BlockProperties.CustomName set from storage custom_blocks:current_block CustomName
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Items.tag.BlockProperties.Tags set from storage custom_blocks:current_block Tags
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s CustomName set from storage custom_blocks:current_block CustomName
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify entity @s Item.tag.BlockProperties.SetblockCommand set from storage custom_blocks:current_block SetblockCommand

# Remove Temporary Tag And Set Base Block
setblock ~ ~ ~ stone
setblock ~ ~ ~ command_block{Command:""}
execute as @e[type=glow_item_frame,tag=placing] at @s run data modify block ~ ~ ~ Command set from storage custom_blocks:current_block SetblockCommand
execute as @e[type=glow_item_frame,tag=placing] at @s run data merge block ~ ~ ~ {auto:1b}
execute as @e[type=glow_item_frame,tag=placing] at @s run tag @e[type=glow_item_frame,tag=placing] remove placing

# Resets Storage After Player Places Custom Block Or Deselects It
execute as @a[gamemode=!creative,predicate=!custom_blocks:selected_placer] run function custom_blocks:place/reset_storage

