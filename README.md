<h1 align="center">Custom Blocks API</h1>

  Allows you to create custom blocks in Minecraft Easier with great performance!                                                                                         

## Plan To Add / To Do

- [ ] Replace Armor Stands with Glow Item Frames in 1.17+

## How To Use

### Give Command
```mcfunction
give @p dropper{display:{Name:'{"text":"A Name","italic":false}',Lore:['{"text":"A Lore","italic":false,"color":"red"}']},CustomModelData:0000001,BlockEntityTag:{Lock:"CustomBlocks:Block"},BlockProperties:{CustomName:'{"text":"Block"}',SetblockCommand:"setblock ~ ~ ~ stone"}}
```
<p align="center">You first put your placer block (Must be: Furnace, Dropper, or Dispenser as non rotating block) then spcify its properites like the display name, an option lore, the custom model data value, the lock <b>Must be CustomBlocks:Block</b> which tells the pack that its a custom block, then inside "BlockProperties" you add any extra info<br> to give the armor stand and set the base block for when placed in the world.</p>

More Info Coming Soon...

## Minimum Minecraft Version

* 1.16.4 

## About This Project

This is a small datapack that allows you to merge all your custom blocks into 1 with greatly improves performance

# Screen Shots

### TPS with 16 Custom Blocks loaded Before:
![before](https://user-images.githubusercontent.com/18742837/108583496-b14ae780-7331-11eb-8714-2c579de636e3.png)

<hr>

### TPS with 16 Custom Blocks loaded After using this datapack:
![2021-02-19_23 09 03](https://user-images.githubusercontent.com/18742837/108583497-b445d800-7331-11eb-883c-6cede3e5ec75.png)
