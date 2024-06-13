# Resets Storage After Player Places Custom Block Or Deselects It
execute as @a[gamemode=creative,predicate=!custom_blocks:selected_placer] run function custom_blocks:place/reset_storage

# Saves All Block Info Into A Storage For When Placing
data modify storage custom_blocks:current_block custom_model_data set from entity @s SelectedItem.components.minecraft:custom_model_data
execute if entity @s[predicate=custom_blocks:selected_placer] run data modify storage custom_blocks:current_block id set from entity @s SelectedItem.id
data modify storage custom_blocks:current_block item_name set from entity @s SelectedItem.components.minecraft:item_name
data modify storage custom_blocks:current_block lore set from entity @s SelectedItem.components.minecraft:lore
data modify storage custom_blocks:current_block Tags set from entity @s SelectedItem.components.minecraft:custom_data.block_properties.Tags
data modify storage custom_blocks:current_block base_block set from entity @s SelectedItem.components.minecraft:custom_data.block_properties.base_block

# Runs The Check Block Function
function custom_blocks:place/check_for_block
