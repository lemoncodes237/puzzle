Multistates Datapack

The first thing to do when creating a level is to set the current level value. THIS IS IMPORTANT. NEVER FORGET THIS.
- To set the level number, use `/scoreboard players set @s puz-level [level]`.
Each level should have a new level number (duh).
- Check the next unique level number in the Level Codes section of this doc.

After you make a level, count the number of blocks in the level. `/data get storage puzzle:blocks blocks` will give you an array that denotes the number of blocks in each level (starting from level 0). Once the level is created, you will need to append the number of blocks in the new level using `/data modify storage puzzle:blocks blocks append value [num_blocks]`. Check that it was added properly with the original command.
- If you want to just modify the number of blocks in a level after it was appended, use `/data modify storage puzzle:blocks blocks[(level_num)] set value [num_blocks]`.
- Add block counts to the Block Counts section of this doc.

Another important thing to do when creating a level is to make sure you don’t interact with the level you are building. To ensure this happens, use `/tag @s add creating`. This tag prevents you from entering a state/sublevel.

States (or Sublevels) can be created using `/function puzzle:spawn/sublevel/(type)`. 
- For example, `/function puzzle:spawn/sublevel/diamond` creates a pyramid that starts the Diamond Block state.
- You can delete a single nearby state using `/function puzzle:kill_sublevel`.

Blocks can be created using `/function puzzle:spawn/block/(block_name)`.
- You can delete a single nearby block using `/function puzzle:kill_custom_block`.
- Custom blocks created using this are the only ones that can be moved in a state. Placing down vanilla blocks will not allow them to be moved even in a state.

Always make sure to backup levels as the backup is loaded when resetting or quitting a level.
- Backups can be created using `/function puzzle:spawn/backup`.
- Backups can be deleted with `/function puzzle:spawn/kill_backup`.
- Backups can be loaded (in other words, reset the level) by using `/function puzzle:spawn/load_backup`.
- Create backups frequently. You will need to kill the current backup before you can create another one.

Level Endings can be created using `/function puzzle:spawn/create_end`. This creates a marker on the block you are standing on that detects if a diamond block is placed on it. You should only use this command on sea lanterns as they denote the end of a level.
- The event that happens after each ending needs to be coded in by hand, so after you place down an ending, write down the behavior you want. Samuel will need to add the behavior in himself and then upload it to the world.

To test a level you created, get to the starting position and use `/tag @s remove creating`. This allows you to enter states once again. Also make sure to go into adventure mode.

You can delete an entire level using `/function puzzle:delete_level`. This gets rid of all custom blocks, all sublevel pyramids, and level endings for the current level. Make sure to double-check your current `puz-level` score before you do this.