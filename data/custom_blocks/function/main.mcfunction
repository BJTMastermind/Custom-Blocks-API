execute as @a run function custom_blocks:place/set_storage

# Update old lock "CustomBlocks:Block" to "custom_blocks:block"
execute as @a if items entity @s weapon.* #custom_blocks:placers[minecraft:lock="CustomBlocks:Block"] run item modify entity @s weapon.mainhand custom_blocks:update_lock
