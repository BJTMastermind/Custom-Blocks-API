# Resets Storage After Player Places Custom Block Or Deselects It
execute as @a[gamemode=creative,predicate=!custom_blocks:selected_placer] run function custom_blocks:place/reset_storage

# Saves All Block Info Into A Storage For When Placing
data modify storage custom_blocks:current_block CustomModelData set from entity @s SelectedItem.tag.CustomModelData
data modify storage custom_blocks:current_block CustomModelDataVertical set from entity @s SelectedItem.tag.CustomModelDataVertical
execute if entity @s[predicate=custom_blocks:selected_placer] run data modify storage custom_blocks:current_block id set from entity @s SelectedItem.id
data modify storage custom_blocks:current_block DisplayName set from entity @s SelectedItem.tag.display.Name
data modify storage custom_blocks:current_block Lore set from entity @s SelectedItem.tag.display.Lore
data modify storage custom_blocks:current_block CustomName set from entity @s SelectedItem.tag.BlockProperties.CustomName
data modify storage custom_blocks:current_block Tags set from entity @s SelectedItem.tag.BlockProperties.Tags
data modify storage custom_blocks:current_block SetblockCommand set from entity @s SelectedItem.tag.BlockProperties.SetblockCommand


# Runs The Check Block Function
function custom_blocks:place/check_for_block


