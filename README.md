<h1 align="center">Custom Blocks API</h1>

  Allows you to create custom blocks in Minecraft easier with great performance!

## How To Use
To use the Custom Blocks API simply include it alongside your datapack and ensure to use the following for your custom blocks.

### Give Command
If your pack includes a custom give command this is what the function should look like with this API:
```mcfunction
give @s dropper[item_name='{"text":"A Name"}',\
    lore=['{"text":"A Lore","italic":false,"color":"red"}'],\
    custom_model_data={floats:[1]},\
    lock={"minecraft:custom_name": "'custom_blocks:block'"},\
    custom_data={\
        block_properties:{\
            Tags:["some_tag_for_this_block"],\
            base_block:{value:"stone"}\
        }\
    }\
]
```

To set up your custom blocks with this API simple add the custom models to one of the following blocks with "custom_model_data" (Supports all custom model data types):

* Dispenser = Your custom block has no rotation.
* Furnace = Your custom block can face in the 4 cardinal directions.
* Dropper = Your custom block can face in all 6 directions.

<hr>

<b>Make Sure To Include</b> the lock component and set its value to <b>"'custom_blocks:block'"</b><br>
This tells the API that your block uses this Custom Blocks API system.

Then add your custom block name, an optional lore for the block, and add your custom blocks custom_model_data value.

Finally, add any extra information about the block for when it's placed in the "block_properties" tag. All the information in this tag will be copied to the Item Display, the "base_block" in block_properties says what you want your base block to be, the value must be a valid block id.

For help on how to set these up see the above give command for an example.

## Minimum Minecraft Version

* 1.21.4

## About This Project

This is a small datapack that allows you to merge all your custom blocks into 1 which greatly improves performance

# Screen Shots

### TPS with 16 Custom Blocks loaded Before:
![before](https://user-images.githubusercontent.com/18742837/108583496-b14ae780-7331-11eb-8714-2c579de636e3.png)

<hr>

### TPS with 16 Custom Blocks loaded After using this datapack:
![2021-02-19_23 09 03](https://user-images.githubusercontent.com/18742837/108583497-b445d800-7331-11eb-883c-6cede3e5ec75.png)
