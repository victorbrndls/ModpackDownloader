
# This will remove all loot from the table
//mods.ltt.LootTable.clearTable("tablename");

# This will remove all loot in a specific pool on a specific table
//mods.ltt.LootTable.removePool("tablename", "poolname");

# This will remove a specific entry on a specific pool, in a specific table
//mods.ltt.LootTable.removeEntry("tablename", "poolname", "entryname");

#Remove LootTable
#mods.ltt.LootTable.clearTable("minecraft:chests/spawn_bonus_chest");

#Remove LootPool
#mods.ltt.LootTable.removePool("minecraft:chests/spawn_bonus_chest", "pool3");
#mods.ltt.LootTable.removePool("minecraft:chests/spawn_bonus_chest", "pool2");

#Remove LootEntry
//mods.ltt.LootTable.removeEntry("minecraft:chests/spawn_bonus_chest", "pool2", "minecraft:apple");
//mods.ltt.LootTable.removeEntry("minecraft:chests/spawn_bonus_chest", "pool3", "minecraft:stick");
//mods.ltt.LootTable.removeEntry("minecraft:chests/spawn_bonus_chest", "pool3", "minecraft:planks");

mods.ltt.LootTable.removeEntry("minecraft:chests/village_blacksmith", "main", "loottable:wcicTable");
mods.ltt.LootTable.removeEntry("minecraft:chests/village_blacksmith", "main", "actuallyadditions:booklet");

mods.ltt.LootTable.removeEntry("minecraft:chests/simple_dungeon", "main", "actuallyadditions:crystalItems");
mods.ltt.LootTable.removeEntry("minecraft:chests/simple_dungeon", "main", "actuallyadditions:crystalBlocks");

mods.ltt.LootTable.removeEntry("minecraft:chests/desert_pyramid", "main", "actuallyadditions:batWings");
mods.ltt.LootTable.removeEntry("actuallyadditions:lushCaves", "main", "actuallyadditions:batWings");


mods.ltt.LootTable.removeEntry("levelup:fishing/fishing_loot", "main", "minecraft:bucket");