<h1 align="center">Custom Blocks API</h1>

  Allows you to create custom blocks in Minecraft Easier with great performance!                                                                                         

## Plan To Add / To Do

- [ ] Replace Armor Stands with Item Frames in 1.17+

## How To Use

### Give Command
```mcfunction
give @p dropper{display:{Name:'{"text":"A Name","italic":false}',Lore:['{"text":"A Lore","italic":false,"color":"red"}']},CustomModelData:0000001,BlockEntityTag:{Lock:"CustomBlocks:Block"},BlockProperties:{CustomName:'{"text":"Block"}',SetblockCommand:"setblock ~ ~ ~ stone"}}
```
You first put your placer block (Must be: Furnace, Dropper, or Dispenser as non rotating block) then spcify its properites like the display name, an option lore, the custom model data value, the lock <b>Must be CustomBlocks:Block</b> which tells the pack that its a custom block, then inside "BlockProperties" you add any extra info to give the armor stand and set the base block for when placed in the world.

## Minimum Minecraft Version

* 1.16.4 

## About This Project

This is a small datapack that allows you to merge all your custom blocks into 1 with greatly improves performance

# Screen Shots

Coming Soon.
