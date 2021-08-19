# Places The Base Block Armor Stand
execute if block ~ ~ ~ command_block[facing=north] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Rotation:[0.0f,0.0f],Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=south] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Rotation:[180.0f,0.0f],Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=east] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Rotation:[90.0f,0.0f],Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=west] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Rotation:[-90.0f,0.0f],Tags:["customBlock","placing"]} 
execute if block ~ ~ ~ command_block[facing=up] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Rotation:[0.0f,0.0f],Tags:["customBlock","placing","up"]} 
execute if block ~ ~ ~ command_block[facing=down] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}],Rotation:[0.0f,0.0f],Tags:["customBlock","placing","down"]} 

# Updates The Base Block To Include All The Block Info From Storage
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].id set from storage custom_blocks:current_block id
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].tag.display.Name set from storage custom_blocks:current_block DisplayName
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].tag.display.Lore set from storage custom_blocks:current_block Lore
# Set Model If Normal
execute as @e[type=armor_stand,tag=placing,tag=!up,tag=!down] at @s run data modify entity @s ArmorItems[3].tag.CustomModelData set from storage custom_blocks:current_block CustomModelData
# Set Model If Facing Up
execute as @e[type=armor_stand,tag=placing,tag=up,tag=!down] at @s store result score +ModelID SetModel run data get storage custom_blocks:current_block CustomModelData
execute as @e[type=armor_stand,tag=placing,tag=up,tag=!down] at @s run scoreboard players operation +ModelID SetModel += +Plus1 cbapiConstent
execute as @e[type=armor_stand,tag=placing,tag=up,tag=!down] at @s store result storage custom_blocks:current_block CustomModelData int 1 run scoreboard players get +ModelID SetModel
execute as @e[type=armor_stand,tag=placing,tag=up,tag=!down] at @s run data modify entity @s ArmorItems[3].tag.CustomModelData set from storage custom_blocks:current_block CustomModelData
# Set Model If Facing Down
execute as @e[type=armor_stand,tag=placing,tag=!up,tag=down] at @s store result score +ModelID SetModel run data get storage custom_blocks:current_block CustomModelData
execute as @e[type=armor_stand,tag=placing,tag=!up,tag=down] at @s run scoreboard players operation +ModelID SetModel += +Plus2 cbapiConstent
execute as @e[type=armor_stand,tag=placing,tag=!up,tag=down] at @s store result storage custom_blocks:current_block CustomModelData int 1 run scoreboard players get +ModelID SetModel
execute as @e[type=armor_stand,tag=placing,tag=!up,tag=down] at @s run data modify entity @s ArmorItems[3].tag.CustomModelData set from storage custom_blocks:current_block CustomModelData

execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].tag.BlockProperties.CustomName set from storage custom_blocks:current_block CustomName
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].tag.BlockProperties.Tags set from storage custom_blocks:current_block Tags
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s CustomName set from storage custom_blocks:current_block CustomName
execute as @e[type=armor_stand,tag=placing] at @s run data modify entity @s ArmorItems[3].tag.BlockProperties.SetblockCommand set from storage custom_blocks:current_block SetblockCommand

# Remove Temporary Tag And Set Base Block
setblock ~ ~ ~ stone
setblock ~ ~ ~ command_block{Command:""}
execute as @e[type=armor_stand,tag=placing] at @s run data modify block ~ ~ ~ Command set from storage custom_blocks:current_block SetblockCommand
execute as @e[type=armor_stand,tag=placing] at @s run data merge block ~ ~ ~ {auto:1b}
execute as @e[type=armor_stand,tag=placing] at @s run tag @e[type=armor_stand,tag=placing] remove placing

# Resets Storage After Player Places Custom Block Or Deselects It
execute as @a[gamemode=!creative,predicate=custom_blocks:selected_placer] run function custom_blocks:place/reset_storage

