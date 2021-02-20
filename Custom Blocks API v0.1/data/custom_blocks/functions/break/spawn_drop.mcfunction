# Reset Storage
data remove storage custom_blocks:drop_block id
data remove storage custom_blocks:drop_block DisplayName
data remove storage custom_blocks:drop_block Lore
data remove storage custom_blocks:drop_block CustomModelData
data remove storage custom_blocks:drop_block CustomName
data remove storage custom_blocks:drop_block Tags
data remove storage custom_blocks:drop_block SetblockCommand

# Check If Custom Block Has Been Broken Then Store Block Info In Storage
execute as @e[type=armor_stand,tag=customBlock] at @s if block ~ ~ ~ air run tag @s add spawn_drop
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block id set from entity @s ArmorItems[3].id
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block DisplayName set from entity @s ArmorItems[3].tag.display.Name
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block Lore set from entity @s ArmorItems[3].tag.display.Lore
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block CustomModelData set from entity @s ArmorItems[3].tag.CustomModelData
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block CustomName set from entity @s CustomName
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block Tags set from entity @s ArmorItems[3].tag.BlockProperties.Tags
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,predicate=custom_blocks:is_placer] at @s run data modify storage custom_blocks:drop_block SetblockCommand set from entity @s ArmorItems[3].tag.BlockProperties.SetblockCommand

# Apply Block Info To Item
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.id set from storage custom_blocks:drop_block id
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Name set from storage custom_blocks:drop_block DisplayName
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.display.Lore set from storage custom_blocks:drop_block Lore
# Set Model If Normal
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=!up,tag=!down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData
# Set Model To Normal If Up
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=up,tag=!down] at @s store result score +ModelID SetModel run data get storage custom_blocks:drop_block CustomModelData
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=up,tag=!down] at @s run scoreboard players operation +ModelID SetModel -= +Plus1 cbapiConstent
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=up,tag=!down] at @s store result storage custom_blocks:drop_block CustomModelData int 1 run scoreboard players get +ModelID SetModel
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=up,tag=!down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData
# Set Model To Normal If Down
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=!up,tag=down] at @s store result score +ModelID SetModel run data get storage custom_blocks:drop_block CustomModelData
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=!up,tag=down] at @s run scoreboard players operation +ModelID SetModel -= +Plus2 cbapiConstent
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=!up,tag=down] at @s store result storage custom_blocks:drop_block CustomModelData int 1 run scoreboard players get +ModelID SetModel
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop,tag=!up,tag=down] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.CustomModelData set from storage custom_blocks:drop_block CustomModelData

execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockEntityTag.Lock set value "CustomBlocks:Block"
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.CustomName set from storage custom_blocks:drop_block CustomName
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.Tags set from storage custom_blocks:drop_block Tags
execute as @e[type=armor_stand,tag=customBlock,tag=spawn_drop] at @s run data modify entity @e[type=item,distance=..1,sort=nearest,limit=1] Item.tag.BlockProperties.SetblockCommand set from storage custom_blocks:drop_block SetblockCommand

# Kill Armor Stand
execute as @e[type=armor_stand,tag=customBlock] at @s if block ~ ~ ~ air run kill @s


