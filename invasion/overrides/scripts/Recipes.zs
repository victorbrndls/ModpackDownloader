//recipes.remove(<>);
//recipes.addShaped(<>, [[<>, <>, <>], [<>, <>, <>], [<>, <>, <>]]);

//Can Opener Recipe
recipes.remove(<littlelooter:can_opener>);
recipes.addShaped(<littlelooter:can_opener>, [[<ore:nuggetTin>, null], [<ore:stickWood>, <ore:nuggetTin>]]);

//String Recipe
recipes.addShaped(<minecraft:string> * 2, [[null, null, <minecraft:wheat>], [null, <minecraft:wheat>, null], [<minecraft:wheat>, null, null]]);
recipes.addShaped(<minecraft:string> * 2, [[<minecraft:wheat>, null, null], [null, <minecraft:wheat>, null], [null, null, <minecraft:wheat>]]);

//Bucket Recipe
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<minecraft:string>, <ore:stickIron>, <minecraft:string>], [<ore:plateIron>, null, <ore:plateIron>], [null, <ore:plateIron>, null]]);

recipes.addShaped(<basemetals:iron_rod> * 4, [[<minecraft:iron_ingot>], [<minecraft:iron_ingot>]]);

//Wirecutter
recipes.addShaped(<littlelooter:wire_cutter>, [[null, <minecraft:shears>, null], [<ore:rodIron>, null, <ore:rodIron>], [<minecraft:redstone>, null, <minecraft:redstone>]]);

//Watering Can
recipes.remove(<extrautils2:wateringcan:*>);
recipes.addShaped(<extrautils2:wateringcan:1000>, [[null, <ore:rodBronze>, <ore:plateInvar>], [<ore:plateInvar>, <mob_grinding_utils:tank>, <ore:plateInvar>], [null, <ore:plateInvar>, null]]);

//Breakable Tables Recipes and replacing vanilla tables with breakable tables
recipes.remove(<breakabletables:workbench_basic>);
recipes.remove(<cyberware:engineeringTable>);
recipes.addShaped(<cyberware:engineeringTable>, [[null, <minecraft:piston>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <breakabletables:workbench_basic>, <ore:ingotIron>]]);
recipes.remove(<immersiveengineering:woodenDevice0:2>);
recipes.addShaped(<immersiveengineering:woodenDevice0:2>, [[null, null, null], [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], [<breakabletables:workbench_basic>, null, <ore:fenceTreatedWood>]]);
recipes.remove(<advancedrocketry:suitWorkStation>);
recipes.addShaped(<advancedrocketry:suitWorkStation>, [[null, <breakabletables:workbench_basic>, null], [null, <libvulpes:structureMachine>, null], [null, null, null]]);

//Quark Chest OreDict Fix
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<ore:barsIron>, null, <ore:barsIron>], [<ore:plankWood>, <minecraft:hopper>, <ore:plankWood>], [<ore:plankWood>, <ore:chest>, <ore:plankWood>]]);

//Dungeon Tactics Fixes
recipes.remove(<dungeontactics:wooden_knife>);
recipes.remove(<dungeontactics:stone_knife>);
recipes.remove(<dungeontactics:iron_knife>);
recipes.remove(<dungeontactics:golden_knife>);
recipes.remove(<dungeontactics:diamond_knife>);
recipes.addShaped(<dungeontactics:wooden_knife>, [[null, <ore:plankWood>], [<minecraft:stick>, null]]);
recipes.addShaped(<dungeontactics:stone_knife>, [[null, <ore:cobblestone>], [<minecraft:stick>, null]]);
recipes.addShaped(<dungeontactics:iron_knife>, [[null, <ore:ingotIron>], [<minecraft:stick>, null]]);
recipes.addShaped(<dungeontactics:golden_knife>, [[null, <ore:ingotGold>], [<minecraft:stick>, null]]);
recipes.addShaped(<dungeontactics:diamond_knife>, [[null, <ore:gemDiamond>], [<minecraft:stick>, null]]);

//Environmental Tech needs to be harder
recipes.remove(<environmentaltech:controller_solar_1>);
recipes.addShaped(<environmentaltech:controller_solar_1>, [[<enderio:itemAlloy>, <minecraft:gold_block>, <enderio:itemAlloy>], [<minecraft:gold_block>, <environmentaltech:solar_1>, <minecraft:gold_block>], [<enderio:itemAlloy>, <minecraft:gold_block>, <enderio:itemAlloy>]]);

recipes.remove(<environmentaltech:controller_solar_2>);
recipes.addShaped(<environmentaltech:controller_solar_2>, [[<enderio:itemAlloy:1>, <minecraft:diamond_block>, <enderio:itemAlloy:1>], [<minecraft:diamond_block>, <environmentaltech:controller_solar_1>, <minecraft:diamond_block>], [<enderio:itemAlloy:1>, <minecraft:diamond_block>, <enderio:itemAlloy:1>]]);

//Mob Grinder Utils Fan Upgrades
recipes.remove(<mob_grinding_utils:fan_upgrade:0>);
recipes.remove(<mob_grinding_utils:fan_upgrade:1>);
recipes.remove(<mob_grinding_utils:fan_upgrade:2>);
recipes.remove(<mob_grinding_utils:absorption_upgrade>);

recipes.addShaped(<mob_grinding_utils:fan_upgrade>, [[null, <immersiveengineering:material:3>, null], [<immersiveengineering:material:3>, <ore:blockAluminum>, <immersiveengineering:material:3>], [null, <immersiveengineering:material:3>, null]]);
recipes.addShaped(<mob_grinding_utils:fan_upgrade:1>, [[null, <immersiveengineering:material:1>, null], [<immersiveengineering:material:1>,  <ore:blockIron>, <immersiveengineering:material:1>], [null, <immersiveengineering:material:1>, null]]);

recipes.addShaped(<mob_grinding_utils:fan_upgrade:2>, [[null, <immersiveengineering:material:2>, null], [<immersiveengineering:material:2>,  <ore:blockSteel>, <immersiveengineering:material:2>], [null, <immersiveengineering:material:2>, null]]);

recipes.addShaped(<mob_grinding_utils:absorption_upgrade>, [[<minecraft:obsidian>, <minecraft:ender_pearl>, <minecraft:obsidian>], [<minecraft:ender_pearl>, <minecraft:redstone_block>, <minecraft:ender_pearl>], [<minecraft:obsidian>, <minecraft:ender_pearl>, <minecraft:obsidian>]]);

recipes.remove(<mob_grinding_utils:spikes>);
recipes.addShaped(<mob_grinding_utils:spikes> * 4, [[null, null, null], [null, <minecraft:iron_sword>], [<minecraft:iron_sword>, <minecraft:iron_block>, <minecraft:iron_sword>]]);

//Cotton Swab is out for balance reasons
recipes.remove(<mob_grinding_utils:mob_swab>);

//Wither Muffler Recipe
recipes.remove(<mob_grinding_utils:wither_muffler>);
recipes.addShaped(<mob_grinding_utils:wither_muffler>, [[<minecraft:wool>, <minecraft:wool>, <minecraft:wool>], [<minecraft:wool>, <minecraft:skull:1>, <minecraft:wool>], [<minecraft:wool>, <minecraft:wool>, <minecraft:wool>]]);

//Dragon Muffler Recipe <--- although, not really neccesary. 
recipes.remove(<mob_grinding_utils:dragon_muffler>);
recipes.addShaped(<mob_grinding_utils:dragon_muffler>, [[<extrautils2:soundmuffler>, <extrautils2:soundmuffler>, <extrautils2:soundmuffler>], [<minecraft:dragon_breath>, <minecraft:dragon_egg>, <minecraft:dragon_breath>], [<extrautils2:soundmuffler>, <extrautils2:soundmuffler>, <extrautils2:soundmuffler>]]);

//Void Ore Miner Nether Quartz Replacement
recipes.remove(<environmentaltech:controller_void_ore_miner_1>);
recipes.addShaped(<environmentaltech:controller_void_ore_miner_1>, [[<minecraft:gold_block>, <minecraft:quartz_block>, <minecraft:gold_block>], [<minecraft:gold_block>, <environmentaltech:lens>, <minecraft:gold_block>], [<minecraft:iron_ore>, <environmentaltech:laser_core>, <minecraft:diamond_ore>]]);

//Nether Items
recipes.addShaped(<minecraft:soul_sand> * 4, [[<ore:sand>, <ore:sand>, <ore:sand>], [<ore:sand>, <enderio:itemSoulVessel:1>.withTag({isStub: 1 as byte, entityId: "playerraiders.Raiders"}), <ore:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]], null, function(output, crafting, player){player.give(<enderio:itemSoulVessel>);});
recipes.remove(<minecraft:blaze_rod>);
recipes.addShaped(<minecraft:blaze_rod>, [[null, null, <minecraft:blaze_powder>], [null, <ore:rodSteel>, null], [<minecraft:blaze_powder>, <dungeontactics:ducttape>, null]]);
recipes.remove(<enderio:itemSoulVessel>);
recipes.addShaped(<enderio:itemSoulVessel>, [[null, <ore:ingotInvar>, null], [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>], [null, <ore:blockGlassHardened>, null]]);

recipes.addShaped(<littlelooter:wire>, [[null, <immersiveengineering:material:22>, null], [<immersiveengineering:material:22>, null, <immersiveengineering:material:22>], [null, <immersiveengineering:material:22>, null]]);

//Harder Probe Goggles
recipes.remove(<theoneprobe:probe_goggles>);
recipes.addShaped(<theoneprobe:probe_goggles>, [[null, <theoneprobe:iron_helmet_probe>, null], [<theoneprobe:gold_helmet_probe>, <extrautils2:screen>, <theoneprobe:iron_helmet_probe>], [null, <enderio:itemConduitProbe>, null]]);

//EnderIO Needs plates Now Muhahahahahhaahahaha
recipes.remove(<enderio:itemMachinePart>);
recipes.addShaped(<enderio:itemMachinePart>, [[<ore:barsIron>, <ore:plateIron>, <ore:barsIron>], [<ore:plateIron>, <enderio:itemBasicCapacitor>, <ore:plateIron>], [<ore:barsIron>, <ore:plateIron>, <ore:barsIron>]]);

//Soul Binder Replacements
recipes.addShaped(<enderio:itemMaterial:15>, [[<extrautils2:endershard>, <enderio:itemAlloy:1>, <extrautils2:endershard>], [<enderio:itemAlloy:1>, <enderio:itemMaterial:6>, <enderio:itemAlloy:1>], [<extrautils2:endershard>, <enderio:itemAlloy:1>, <extrautils2:endershard>]]);
recipes.addShaped(<enderio:itemMaterial:8>, [[<extrautils2:endershard>, <minecraft:ender_eye>, <extrautils2:endershard>], [<enderio:itemMaterial:8>, <enderio:itemMaterial:6>, <enderio:itemMaterial:8>], [<extrautils2:endershard>, <minecraft:ender_eye>, <extrautils2:endershard>]]);

recipes.remove(<enderio:blockSoulBinder>);
recipes.addShaped(<enderio:blockSoulBinder>, [[<enderio:itemAlloy:7>, <minecraft:skull:*>, <enderio:itemAlloy:7>], [<minecraft:skull:*>, <enderio:itemMachinePart>, <minecraft:skull:*>], [<enderio:itemAlloy:7>, <minecraft:skull:*>, <enderio:itemAlloy:7>]]);

//New Recipe for Fused Quartz
recipes.addShaped(<enderio:blockFusedQuartz> * 3, [[<minecraft:quartz>, <minecraft:glass>, <minecraft:quartz>], [<minecraft:glass>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}), <minecraft:glass>], [<minecraft:quartz>, <minecraft:glass>, <minecraft:quartz>]]);

recipes.addShaped(<enderio:blockFusedQuartz> * 3, [[<minecraft:quartz>, <minecraft:glass>, <minecraft:quartz>], [<minecraft:glass>, <forge:bucketFilled>.withTag({FluidName: "creosote", Amount: 1000}), <minecraft:glass>], [<minecraft:quartz>, <minecraft:glass>, <minecraft:quartz>]]);

recipes.addShaped(<enderio:blockFusedQuartz> * 3, [[<minecraft:glass>, <minecraft:quartz>, <minecraft:glass>], [<minecraft:quartz>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}), <minecraft:quartz>], [<minecraft:glass>, <minecraft:quartz>, <minecraft:glass>]]);

recipes.addShaped(<enderio:blockFusedQuartz> * 3, [[<minecraft:glass>, <minecraft:quartz>, <minecraft:glass>], [<minecraft:quartz>, <forge:bucketFilled>.withTag({FluidName: "creosote", Amount: 1000}), <minecraft:quartz>], [<minecraft:glass>, <minecraft:quartz>, <minecraft:glass>]]);

//Healing Items
recipes.remove(<roughtweaks:plaster>);
recipes.addShaped(<roughtweaks:plaster>, [[<minecraft:carpet>, <minecraft:stick>, null], [null, <minecraft:slime_ball>, <minecraft:stick>], [null, null, <minecraft:carpet>]]);

recipes.remove(<roughtweaks:bandage>);
recipes.addShaped(<roughtweaks:bandage>, [[<ore:itemClay>, <ore:paper>, <ore:itemClay>], [null, <ore:paper>, null], [<ore:itemClay>, <ore:paper>, <ore:itemClay>]]);

recipes.remove(<roughtweaks:medikit>);
recipes.addShaped(<roughtweaks:medikit>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<roughtweaks:plaster>, <roughtweaks:salve>, <roughtweaks:bandage>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

//Bakeware actually uses Porcelain Clay
recipes.remove(<harvestcraft:bakewareItem>);
recipes.addShaped(<harvestcraft:bakewareItem>, [[<exnihiloadscensio:itemMaterial:1>, <exnihiloadscensio:itemMaterial:1>, <exnihiloadscensio:itemMaterial:1>], [<exnihiloadscensio:itemMaterial:1>,null ,<exnihiloadscensio:itemMaterial:1>], [<exnihiloadscensio:itemMaterial:1>, <exnihiloadscensio:itemMaterial:1>, <exnihiloadscensio:itemMaterial:1>]]);

recipes.remove(<openmodularturrets:ammo_meta:1>);
recipes.addShaped(<openmodularturrets:ammo_meta:1> * 16, [[null, <ore:nuggetCopper>, <ore:nuggetCopper>], [<ore:nuggetLead>, <minecraft:gunpowder>, <ore:nuggetCopper>], [<ore:nuggetLead>, <ore:nuggetLead>, null]]);

//Fixed Molds Needing Plates
recipes.remove(<immersiveengineering:mold>);
recipes.addShaped(<immersiveengineering:mold>, [[<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>], [<ore:ingotSteel>, null, <ore:ingotSteel>], [<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>]]);
recipes.remove(<immersiveengineering:mold:2>);
recipes.addShaped(<immersiveengineering:mold:2>, [[<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>], [<ore:ingotSteel>, <immersiveengineering:material:1>, <ore:ingotSteel>], [<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>]]);
recipes.remove(<immersiveengineering:mold:1>);
recipes.addShaped(<immersiveengineering:mold:1>, [[<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>], [<ore:ingotSteel>, <enderio:itemMachinePart:1>, <ore:ingotSteel>], [<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>]]);
recipes.remove(<immersiveengineering:mold:3>);
recipes.addShaped(<immersiveengineering:mold:3>, [[<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>], [<ore:ingotSteel>, <immersiveengineering:bullet>, <ore:ingotSteel>], [<minecraft:iron_ingot>, <ore:ingotSteel>, <minecraft:iron_ingot>]]);

//More Wire Cutter Materials
recipes.remove(<littlelooter:wire_cutter>);
recipes.addShaped(<littlelooter:wire_cutter>, [[<minecraft:iron_ingot>, <minecraft:stick>, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<littlelooter:wire_cutter>, [[<ore:ingotTin>, <minecraft:stick>, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<littlelooter:wire_cutter>, [[<ore:ingotLead>, <minecraft:stick>, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<littlelooter:wire_cutter>, [[<ore:ingotCopper>, <minecraft:stick>, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<immersiveengineering:tool:1>, [[<minecraft:stick>, <ore:ingotTin>, null], [null, <minecraft:stick>, null], [null, null, null]]);
recipes.addShaped(<immersiveengineering:tool:1>, [[<minecraft:stick>, <ore:ingotLead>, null], [null, <minecraft:stick>, null], [null, null, null]]);
recipes.addShaped(<immersiveengineering:tool:1>, [[<minecraft:stick>, <ore:ingotCopper>, null], [null, <minecraft:stick>, null], [null, null, null]]);

//Simple Generators use Plates
recipes.remove(<simplegenerators:ender_generator>);
recipes.remove(<simplegenerators:culinary_generator>);
recipes.remove(<simplegenerators:lava_generator>);
recipes.remove(<simplegenerators:furnace_generator>);
recipes.addShaped(<simplegenerators:furnace_generator>, [[<ore:stone>, <ore:cobblestone>, <ore:stone>], [<ore:cobblestone>, <minecraft:furnace>, <ore:cobblestone>], [<ore:stone>, <minecraft:redstone_block>, <ore:stone>]]);
recipes.addShaped(<simplegenerators:culinary_generator>, [[<ore:plateIron>, <minecraft:flint_and_steel>, <ore:plateIron>], [<minecraft:fishing_rod>, <immersiveengineering:metalDecoration0:1>, <minecraft:iron_hoe>], [<ore:plateIron>, <minecraft:redstone_block>, <ore:plateIron>]]);
recipes.addShaped(<simplegenerators:culinary_generator>, [[<ore:plateAluminum>, <minecraft:flint_and_steel>, <ore:plateAluminum>], [<minecraft:fishing_rod>, <immersiveengineering:metalDecoration0:1>, <minecraft:iron_hoe>], [<ore:plateAluminum>, <minecraft:redstone_block>, <ore:plateAluminum>]]);
recipes.addShaped(<simplegenerators:ender_generator>, [[<ore:plateElectrum>, <minecraft:ender_eye>, <ore:plateElectrum>], [<minecraft:ender_eye>, <immersiveengineering:metalDecoration0:1>, <minecraft:ender_eye>], [<ore:plateElectrum>, <minecraft:redstone_block>, <ore:plateElectrum>]]);
recipes.addShaped(<simplegenerators:lava_generator>, [[<ore:plateElectrum>, <ore:ingotCopper>, <ore:plateElectrum>], [<ore:ingotCopper>, <immersiveengineering:metalDecoration0:1>, <ore:ingotCopper>], [<ore:plateElectrum>, <minecraft:redstone_block>, <ore:plateElectrum>]]);

//ExUtils Quarry recipe change
recipes.remove(<extrautils2:quarryproxy>);
recipes.addShaped(<extrautils2:quarryproxy>, [[<actuallyadditions:itemDrill:*>, <libvulpes:productplate:7>, <actuallyadditions:itemDrill:*>], [<libvulpes:productplate:7>, <minecraft:nether_star>, <libvulpes:productplate:7>], [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]]);

//Pulvus now uses oredictionared sandstone and more ingot types
recipes.remove(<furnus:pulvus>);
recipes.addShaped(<furnus:pulvus>, [[<ore:ingotIron>, <ore:sandstone>, <ore:ingotIron>], [<ore:sandstone>, <minecraft:furnace>, <ore:sandstone>], [<minecraft:flint>, <ore:sandstone>, <minecraft:flint>]]);
recipes.addShaped(<furnus:pulvus>, [[<ore:ingotTin>, <ore:sandstone>, <ore:ingotTin>], [<ore:sandstone>, <minecraft:furnace>, <ore:sandstone>], [<minecraft:flint>, <ore:sandstone>, <minecraft:flint>]]);
recipes.addShaped(<furnus:pulvus>, [[<ore:ingotLead>, <ore:sandstone>, <ore:ingotLead>], [<ore:sandstone>, <minecraft:furnace>, <ore:sandstone>], [<minecraft:flint>, <ore:sandstone>, <minecraft:flint>]]);
recipes.addShaped(<furnus:pulvus>, [[<ore:ingotSilver>, <ore:sandstone>, <ore:ingotSilver>], [<ore:sandstone>, <minecraft:furnace>, <ore:sandstone>], [<minecraft:flint>, <ore:sandstone>, <minecraft:flint>]]);
recipes.addShaped(<furnus:pulvus>, [[<ore:ingotCopper>, <ore:sandstone>, <ore:ingotCopper>], [<ore:sandstone>, <minecraft:furnace>, <ore:sandstone>], [<minecraft:flint>, <ore:sandstone>, <minecraft:flint>]]);
recipes.addShaped(<furnus:pulvus>, [[<ore:ingotAluminum>, <ore:sandstone>, <ore:ingotAluminum>], [<ore:sandstone>, <minecraft:furnace>, <ore:sandstone>], [<minecraft:flint>, <ore:sandstone>, <minecraft:flint>]]);

//Cooking for Blockheads Tier 2 book and other special snowflake recipes
recipes.remove(<cookingforblockheads:recipeBook:2>);
recipes.addShaped(<cookingforblockheads:recipeBook:2>, [[null, <breakabletables:workbench_basic>, null], [<minecraft:diamond>, <cookingforblockheads:recipeBook:1>, <minecraft:diamond>], [null, <breakabletables:workbench_basic>, null]]);
recipes.addShaped(<cookingforblockheads:recipeBook:2>, [[null, <minecraft:diamond>, null], [<breakabletables:workbench_basic>, <cookingforblockheads:recipeBook:1>, <breakabletables:workbench_basic>], [null, <minecraft:diamond>, null]]);

recipes.addShaped(<cookingforblockheads:sink>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:logWood>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

//No Gunpowder for rope bridge and more types of ingots
recipes.remove(<ropebridge:bridge_builder_material.handle>);
recipes.addShaped(<ropebridge:bridge_builder_material.handle>, [[<ore:ingotTin>, null, <minecraft:flint_and_steel>], [<minecraft:string>, null, null], [<ore:ingotTin>, <ore:plankWood>, <ore:plankWood>]]);
recipes.addShaped(<ropebridge:bridge_builder_material.handle>, [[<ore:ingotLead>, null, <minecraft:flint_and_steel>], [<minecraft:string>, null, null], [<ore:ingotLead>, <ore:plankWood>, <ore:plankWood>]]);
recipes.addShaped(<ropebridge:bridge_builder_material.handle>, [[<ore:ingotCopper>, null, <minecraft:flint_and_steel>], [<minecraft:string>, null, null], [<ore:ingotCopper>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<ropebridge:bridge_builder_material.barrel>);
recipes.addShaped(<ropebridge:bridge_builder_material.barrel>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<minecraft:string>, <minecraft:string>, <minecraft:string>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
recipes.addShaped(<ropebridge:bridge_builder_material.barrel>, [[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>], [<minecraft:string>, <minecraft:string>, <minecraft:string>], [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]]);
recipes.addShaped(<ropebridge:bridge_builder_material.barrel>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<minecraft:string>, <minecraft:string>, <minecraft:string>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);
recipes.remove(<ropebridge:bridge_builder_material.hook>);
recipes.addShaped(<ropebridge:bridge_builder_material.hook>, [[<ore:ingotTin>, null, null], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, null, null]]);
recipes.addShaped(<ropebridge:bridge_builder_material.hook>, [[<ore:ingotLead>, null, null], [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>], [<ore:ingotLead>, null, null]]);
recipes.addShaped(<ropebridge:bridge_builder_material.hook>, [[<ore:ingotCopper>, null, null], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotCopper>, null, null]]);
recipes.remove(<ropebridge:ladder_hook>);
recipes.addShaped(<ropebridge:ladder_hook>, [[<minecraft:ladder>, null, null], [<minecraft:ladder>, <ore:ingotTin>, <ore:ingotTin>], [<minecraft:ladder>, null, null]]);
recipes.addShaped(<ropebridge:ladder_hook>, [[<minecraft:ladder>, null, null], [<minecraft:ladder>, <ore:ingotLead>, <ore:ingotLead>], [<minecraft:ladder>, null, null]]);
recipes.addShaped(<ropebridge:ladder_hook>, [[<minecraft:ladder>, null, null], [<minecraft:ladder>, <ore:ingotCopper>, <ore:ingotCopper>], [<minecraft:ladder>, null, null]]);
recipes.remove(<ropebridge:rope>);
recipes.addShaped(<ropebridge:rope>, [[<minecraft:string>, <minecraft:leather>, null], [<minecraft:leather>, <minecraft:string>, null], [<minecraft:string>, <minecraft:leather>, null]]);

recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<ore:bars>, null, <ore:bars>], [<ore:plankWood>, <minecraft:chest>, <ore:plankWood>], [<ore:plankWood>, <minecraft:chest>, <ore:plankWood>]]);

recipes.remove(<ompd:hardened:2>);
recipes.addShaped(<ompd:hardened:2> * 16, [[<minecraft:brick_block>, <ompd:hardened>, <minecraft:brick_block>], [<ompd:hardened>, <ompd:hardened>, <ompd:hardened>], [<minecraft:brick_block>, <ompd:hardened>, <minecraft:brick_block>]]);
recipes.remove(<ompd:hardened:4>);
recipes.addShaped(<ompd:hardened:4> * 16, [[<minecraft:obsidian>, <ompd:hardened:2>, <minecraft:obsidian>], [<ompd:hardened:2>, <ompd:hardened:2>, <ompd:hardened:2>], [<minecraft:obsidian>, <ompd:hardened:2>, <minecraft:obsidian>]]);

recipes.addShaped(<extrautils2:grocket:2>, [[null, null, null], [<minecraft:redstone>, <extrautils2:pipe>, <minecraft:redstone>], [<ore:stone>, <ceramics:clay_bucket>, <ore:stone>]]);

//New Advanced Rocketry Motor
recipes.remove(<libvulpes:motor>);
recipes.addShaped(<libvulpes:motor>, [[null, <immersiveengineering:metalDecoration0>, <ore:plateCopper>], [<ore:stickCopper>, <ore:stickCopper>, <ore:plateCopper>], [null, <immersiveengineering:metalDecoration0>, <ore:plateCopper>]]);

recipes.remove(<advancedrocketry:sawBlade>);
recipes.addShaped(<advancedrocketry:sawBlade>, [[<ore:stickCopper>, null, <ore:stickCopper>], [<ore:plateCopper>, <advancedrocketry:sawBladeIron>, <ore:plateCopper>], [<ore:plateCopper>, null, <ore:plateCopper>]]);

recipes.remove(<environmentaltech:controller_void_ore_miner_1>);
recipes.addShaped(<environmentaltech:controller_void_ore_miner_1>, [[<ore:blockGold>, <minecraft:quartz_block>, <ore:blockGold>], [<ore:blockGold>, <environmentaltech:lens>, <ore:blockGold>], [<ore:blockIron>, <environmentaltech:laser_core>, <ore:blockDiamond>]]);

//Redstone Ore
recipes.remove(<minecraft:redstone_ore>);
recipes.addShaped(<minecraft:redstone_ore>, [[<minecraft:dye:1>, <minecraft:stone>, <minecraft:dye:1>], [<minecraft:stone>, <extrautils2:ingredients>, <minecraft:stone>], [<minecraft:dye:1>, <minecraft:stone>, <minecraft:dye:1>]]);
recipes.remove(<extrautils2:ingredients>);
recipes.addShaped(<extrautils2:ingredients>, [[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [<minecraft:redstone>, <extrautils2:endershard>, <minecraft:redstone>], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

//Air Drop remotes
recipes.remove(<air_support:circuit_board>);
recipes.addShaped(<air_support:circuit_board>, [[<ore:dyeGreen>, <actuallyadditions:itemMisc:5>, <ore:dyeGreen>], [<ore:nuggetSilver>, <extrautils2:ingredients>, <ore:nuggetSilver>], [<ore:dyeGreen>, <actuallyadditions:itemMisc:5>, <ore:dyeGreen>]]);
recipes.addShaped(<air_support:circuit_board>, [[<ore:dyeGreen>, <actuallyadditions:itemMisc:5>, <ore:dyeGreen>], [<ore:nuggetAluminum>, <extrautils2:ingredients>, <ore:nuggetAluminum>], [<ore:dyeGreen>, <actuallyadditions:itemMisc:5>, <ore:dyeGreen>]]);

recipes.remove(<air_support:utility_crate_drop_remote>);
recipes.addShaped(<air_support:utility_crate_drop_remote>, [[null, <minecraft:redstone>, null], [<minecraft:dye:4>, <air_support:circuit_board>, <minecraft:dye:4>], [<minecraft:dye:4>, <enderio:itemBasicCapacitor>, <minecraft:dye:4>]]);

recipes.remove(<drones:drone_constructor>);
recipes.addShaped(<drones:drone_constructor>, [[<minecraft:redstone>, <minecraft:dye:2>, <minecraft:redstone>], [<minecraft:dye:2>, <air_support:circuit_board>, <minecraft:dye:2>], [<minecraft:redstone>, <minecraft:dye:2>, <minecraft:redstone>]]);

//There I fixed the concrete recipe overlap for you!@
recipes.remove(<minecraft:clay>);
recipes.addShaped(<minecraft:clay>, [[<ore:itemClay>, <ore:itemClay>], [<ore:itemClay>, <ore:itemClay>]]);
recipes.remove(<advancedrocketry:concrete>);
recipes.addShaped(<advancedrocketry:concrete> * 16, [[<ore:listAllwater>, <ore:sand>, <ore:gravel>], [null, null, null], [null, null, null]]);

//Capacitor Bank changes
recipes.remove(<enderio:blockCapBank:2>);
recipes.addShaped(<enderio:blockCapBank:2>, [[<enderio:itemAlloy:1>, <enderio:itemBasicCapacitor:1>, <enderio:itemAlloy:1>], [<enderio:itemBasicCapacitor:1>, <actuallyadditions:itemCrystalEmpowered>, <enderio:itemBasicCapacitor:1>], [<enderio:itemAlloy:1>, <enderio:itemBasicCapacitor:1>, <enderio:itemAlloy:1>]]);
recipes.remove(<enderio:blockCapBank:3>);
recipes.addShaped(<enderio:blockCapBank:3>, [[<enderio:itemAlloy:2>, <enderio:itemBasicCapacitor:2>, <enderio:itemAlloy:2>], [<enderio:itemBasicCapacitor:2>, <actuallyadditions:itemCrystalEmpowered:4>, <enderio:itemBasicCapacitor:2>], [<enderio:itemAlloy:2>, <enderio:itemBasicCapacitor:2>, <enderio:itemAlloy:2>]]);

//Snow Blocks require 3x3 now for Smoothiey (I totally spelled it the write way for chat, your welcome) recipe difficulty
recipes.remove(<minecraft:snow>);
recipes.addShaped(<minecraft:snow>, [[<minecraft:snowball>, <minecraft:snowball>, <minecraft:snowball>], [<minecraft:snowball>, <minecraft:snowball>, <minecraft:snowball>], [<minecraft:snowball>, <minecraft:snowball>, <minecraft:snowball>]]);

//Less bolts for your resources. Thanks Obama, I mean Trump... >.>
recipes.remove(<crossbowmod:IronBolt>);
recipes.addShaped(<crossbowmod:IronBolt> * 4, [[null, <minecraft:iron_ingot>, null], [null, <minecraft:stick>, null]]);
recipes.remove(<crossbowmod:GoldBolt>);
recipes.addShaped(<crossbowmod:GoldBolt> * 4, [[null, <minecraft:gold_ingot>, null], [null, <minecraft:stick>, null]]);
recipes.remove(<crossbowmod:DiamondBolt>);
recipes.addShaped(<crossbowmod:DiamondBolt> * 4, [[null, <minecraft:diamond>, null], [null, <minecraft:stick>, null]]);
recipes.remove(<crossbowmod:FlameBolt>);
recipes.addShaped(<crossbowmod:FlameBolt> * 4, [[null, <minecraft:flint_and_steel>, null], [null, <minecraft:stick>, null]]);
recipes.remove(<crossbowmod:SpectralBolt>);
recipes.addShaped(<crossbowmod:SpectralBolt> * 4, [[null, <minecraft:glowstone>, null], [null, <minecraft:stick>, null]]);

recipes.remove(<littlelooter:kitchen_knife>);
recipes.addShaped(<littlelooter:kitchen_knife>, [[null, <ore:nuggetIron>], [<minecraft:stick>, null]]);

//Fryer More Ingot Types
recipes.remove(<ediblebugs:EBfryerIdle>);
recipes.addShaped(<ediblebugs:EBfryerIdle>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ediblebugs:vegetableoil>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<ediblebugs:EBfryerIdle>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [<ore:ingotTin>, <ediblebugs:vegetableoil>, <ore:ingotTin>], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
recipes.addShaped(<ediblebugs:EBfryerIdle>, [[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>], [<ore:ingotLead>, <ediblebugs:vegetableoil>, <ore:ingotLead>], [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]]);
recipes.addShaped(<ediblebugs:EBfryerIdle>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<ore:ingotCopper>, <ediblebugs:vegetableoil>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);
recipes.addShaped(<ediblebugs:EBfryerIdle>, [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ediblebugs:vegetableoil>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);

//Turret fixes to eliminate nested recipes for good stuffs
recipes.remove(<openmodularturrets:turret_base>);
recipes.addShaped(<openmodularturrets:turret_base>, [[<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>], [<ore:plankWood>, <openmodularturrets:intermediate_tiered>, <ore:plankWood>], [<ore:cobblestone>, <ore:plankWood>, <ore:cobblestone>]]);
recipes.remove(<openmodularturrets:turret_base:1>);
recipes.addShaped(<openmodularturrets:turret_base:1>, [[<ore:ingotIron>, <openmodularturrets:intermediate_regular>, <ore:ingotIron>], [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:1>, <openmodularturrets:intermediate_regular>], [<ore:ingotIron>, <openmodularturrets:intermediate_regular>, <ore:ingotIron>]]);
recipes.remove(<openmodularturrets:turret_base:2>);
recipes.addShaped(<openmodularturrets:turret_base:2>, [[<ore:ingotGold>, <openmodularturrets:intermediate_regular>, <ore:ingotGold>], [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:2>, <openmodularturrets:intermediate_regular>], [<ore:ingotGold>, <openmodularturrets:intermediate_regular>, <ore:ingotGold>]]);
recipes.remove(<openmodularturrets:turret_base:3>);
recipes.addShaped(<openmodularturrets:turret_base:3>, [[<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>], [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:3>, <openmodularturrets:intermediate_regular>], [<minecraft:diamond>, <openmodularturrets:intermediate_regular>, <minecraft:diamond>]]);
recipes.remove(<openmodularturrets:turret_base:4>);
recipes.addShaped(<openmodularturrets:turret_base:4>, [[<minecraft:emerald>, <openmodularturrets:intermediate_regular>, <minecraft:emerald>], [<openmodularturrets:intermediate_regular>, <openmodularturrets:intermediate_tiered:4>, <openmodularturrets:intermediate_regular>], [<minecraft:emerald>, <openmodularturrets:intermediate_regular>, <minecraft:emerald>]]);

recipes.remove(<openmodularturrets:intermediate_regular>);
recipes.addShaped(<openmodularturrets:intermediate_regular>, [[null, <ore:ingotGold>, null], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [null, <ore:ingotIron>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_regular>, [[null, <ore:ingotGold>, null], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [null, <ore:ingotTin>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_regular>, [[null, <ore:ingotGold>, null], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [null, <ore:ingotLead>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_regular>, [[null, <ore:ingotGold>, null], [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>], [null, <ore:ingotCopper>, null]]);

recipes.remove(<openmodularturrets:intermediate_tiered:11>);
recipes.addShaped(<openmodularturrets:intermediate_tiered:11>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <openmodularturrets:intermediate_tiered:10>, null], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:11>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [null, <openmodularturrets:intermediate_tiered:10>, null], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:11>, [[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>], [null, <openmodularturrets:intermediate_tiered:10>, null], [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:11>, [[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>], [null, <openmodularturrets:intermediate_tiered:10>, null], [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);

//Extra recipe cleanup
recipes.remove(<minecraft:shears>);
recipes.addShaped(<minecraft:shears>, [[null, <minecraft:iron_ingot>, null], [<minecraft:iron_ingot>, null, null]]);

//Turrets Sensors now don't take an act of god to craft!
recipes.remove(<openmodularturrets:intermediate_tiered>);
recipes.remove(<openmodularturrets:intermediate_tiered:1>);
recipes.remove(<openmodularturrets:intermediate_tiered:2>);
recipes.remove(<openmodularturrets:intermediate_tiered:3>);
recipes.remove(<openmodularturrets:intermediate_tiered:4>);
recipes.addShaped(<openmodularturrets:intermediate_tiered>, [[null, <minecraft:redstone>, null], [<minecraft:redstone>, <ore:plankWood>, <minecraft:redstone>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:1>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, <minecraft:comparator>, <ore:ingotIron>], [null, <openmodularturrets:intermediate_regular>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:2>, [[null, <openmodularturrets:intermediate_regular>, null], [<ore:ingotGold>, <minecraft:comparator>, <ore:ingotGold>], [null, <openmodularturrets:intermediate_regular>, null]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:3>, [[<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>], [<openmodularturrets:intermediate_regular>, <air_support:circuit_board>, <openmodularturrets:intermediate_regular>], [<minecraft:quartz>, <minecraft:diamond>, <minecraft:quartz>]]);
recipes.addShaped(<openmodularturrets:intermediate_tiered:4>, [[<minecraft:obsidian>, <minecraft:glowstone_dust>, <minecraft:obsidian>], [<openmodularturrets:intermediate_regular>, <air_support:circuit_board>, <openmodularturrets:intermediate_regular>], [<minecraft:obsidian>, <minecraft:glowstone_dust>, <minecraft:obsidian>]]);

recipes.remove(<harvestcraft:shippingbin>);
recipes.addShaped(<harvestcraft:shippingbin>, [[<ore:plateBronze>, <extrautils2:decorativesolidwood:1>, <ore:plateBronze>], [<extrautils2:decorativesolidwood:1>, <actuallyadditions:blockCrystal:4>, <extrautils2:decorativesolidwood:1>], [<ore:plateBronze>, <extrautils2:decorativesolidwood:1>, <ore:plateBronze>]]);

recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>, [[<breakabletables:workbench_basic>, <breakabletables:workbench_basic>, <breakabletables:workbench_basic>], [<breakabletables:workbench_basic>, <breakabletables:workbench_basic>, <breakabletables:workbench_basic>], [<breakabletables:workbench_basic>, <breakabletables:workbench_basic>, <breakabletables:workbench_basic>]]);

//Mob Soul Vials
recipes.addShaped(<enderio:itemSoulVessel:1>.withTag({entityId: "Witch"}), [[null, <minecraft:glowstone_dust>, null], [null, <enderio:itemSoulVessel:1>, null], [null, <minecraft:potion>.withTag({Potion: "minecraft:mundane"}), null]]);

recipes.addShaped(<enderio:itemSoulVessel:1>.withTag({isVariant: 0 as short, entityId: "Zombie"}), [[null, <minecraft:skull:2>, null], [null, <enderio:itemSoulVessel:1>, null], [null, <minecraft:potion>, null]]);

recipes.addShaped(<minecraft:skull:2>, [[null, <minecraft:rotten_flesh>, null], [<minecraft:rotten_flesh>, <minecraft:skull:3>, <minecraft:rotten_flesh>], [null, <minecraft:rotten_flesh>, null]]);

//Treated Wood Recipe to show clay buckets as usable
recipes.addShaped(<immersiveengineering:treatedWood> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}}), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

recipes.remove(<minecolonies:scepterSteel>);
recipes.addShaped(<minecolonies:scepterSteel>, [[null, null, <ore:ingotIron>], [null, <ore:logWood>, null], [<ore:logWood>, null, null]]);
recipes.remove(<minecolonies:scepterGold>);
recipes.addShaped(<minecolonies:scepterGold>, [[null, null, <ore:cobblestone>], [null, <ore:plankWood>, null], [<ore:plankWood>, null, null]]);

//Chromogen said the duct tape was OP, now you get this! >:D
recipes.remove(<dungeontactics:ducttape>);
recipes.addShaped(<dungeontactics:ducttape>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], [<actuallyadditions:itemMisc:23>, <actuallyadditions:itemMisc:23>, <actuallyadditions:itemMisc:23>], [<roughtweaks:plaster>, <roughtweaks:plaster>, <roughtweaks:plaster>]]);

recipes.remove(<enderio:itemMaterial:8>);
recipes.addShaped(<enderio:itemMaterial:8>, [[<extrautils2:endershard>, <minecraft:ender_eye>, <extrautils2:endershard>], [<extrautils2:endershard>, <environmentaltech:ender_stabilized>, <extrautils2:endershard>], [<extrautils2:endershard>, <minecraft:ender_eye>, <extrautils2:endershard>]]);

//Coal Dupe Fix
recipes.remove(<minecraft:coal_block>);
recipes.addShaped(<minecraft:coal_block>, [[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>], [<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]]);

//Fix Overlap
recipes.remove(<literalascension:wood_carving_tool>);
recipes.addShaped(<literalascension:wood_carving_tool>, [[null, null, <ore:plankWood>], [null, <ore:plankWood>, null], [<ore:plankWood>, null, null]]);
recipes.remove(<literalascension:stone_carving_tool>);
recipes.addShaped(<literalascension:stone_carving_tool>, [[null, null, <ore:cobblestone>], [null, <ore:cobblestone>, null], [<ore:plankWood>, null, null]]);
recipes.remove(<literalascension:iron_carving_tool>);
recipes.addShaped(<literalascension:iron_carving_tool>, [[null, null, <ore:ingotIron>], [null, <ore:ingotIron>, null], [<ore:plankWood>, null, null]]);
recipes.remove(<literalascension:diamond_carving_tool>);
recipes.addShaped(<literalascension:diamond_carving_tool>, [[null, null, <minecraft:diamond>], [null, <minecraft:diamond>, null], [<ore:plankWood>, null, null]]);
recipes.remove(<literalascension:gold_carving_tool>);
recipes.addShaped(<literalascension:gold_carving_tool>, [[null, null, <ore:ingotGold>], [null, <ore:ingotGold>, null], [<ore:plankWood>, null, null]]);

recipes.remove(<morefurnaces:upgrade:2>);
recipes.addShaped(<morefurnaces:upgrade:2>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <immersiveengineering:metal:29>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);


recipes.remove(<earthworks:block_timber_dark_oak>);
recipes.addShaped(<earthworks:block_timber_dark_oak> * 2, [[null, null, null], [null, <minecraft:log2:1>, null], [null, <minecraft:log2:1>, null]]);
recipes.remove(<earthworks:block_timber_birch>);
recipes.addShaped(<earthworks:block_timber_birch> * 2, [[null, null, null], [null, <minecraft:log:2>, null], [null, <minecraft:log:2>, null]]);
recipes.remove(<earthworks:block_timber_spruce>);
recipes.addShaped(<earthworks:block_timber_spruce> * 2, [[null, null, null], [null, <minecraft:log:1>, null], [null, <minecraft:log:1>, null]]);
recipes.remove(<earthworks:block_timber_jungle>);
recipes.addShaped(<earthworks:block_timber_jungle> * 2, [[null, null, null], [null, <minecraft:log:3>, null], [null, <minecraft:log:3>, null]]);
recipes.remove(<earthworks:block_timber_acacia>);
recipes.addShaped(<earthworks:block_timber_acacia> * 2, [[null, null, null], [null, <minecraft:log2>, null], [null, <minecraft:log2>, null]]);
recipes.remove(<earthworks:block_timber>);
recipes.addShaped(<earthworks:block_timber> * 2, [[null, null, null], [null, <minecraft:log>, null], [null, <minecraft:log>, null]]);

//Fixing other people's lack of OreDictionary
recipes.remove(<mfs:WheelSmall>);
recipes.addShaped(<mfs:WheelSmall>, [[<minecraft:wool:*>, <ore:dyeBlack>, <minecraft:wool:*>], [<minecraft:wool:*>, <ore:ingotIron>, <minecraft:wool:*>], [<minecraft:wool:*>, <ore:dyeBlack>, <minecraft:wool:*>]]);
recipes.remove(<mfs:WheelLarge>);
recipes.addShaped(<mfs:WheelLarge>, [[<minecraft:wool:*>, <ore:dyeBlack>, <minecraft:wool:*>], [<ore:dyeBlack>, <ore:ingotIron>, <ore:dyeBlack>], [<minecraft:wool:*>, <ore:dyeBlack>, <minecraft:wool:*>]]);
recipes.remove(<mfs:Vulcanair:5>);
recipes.addShaped(<mfs:Vulcanair:5>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<ore:dyeBlack>, <minecraft:iron_ingot>, <ore:dyeBlack>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.remove(<mfs:PointerShort>);
recipes.addShaped(<mfs:PointerShort>, [[null, <ore:dyeWhite>, <ore:dyeWhite>], [null, <ore:dyeWhite>, <ore:dyeWhite>], [<ore:dyeBlack>, null, null]]);
recipes.remove(<mfs:PointerLong>);
recipes.addShaped(<mfs:PointerLong>, [[null, null, <ore:dyeWhite>], [null, <ore:dyeBlack>, null], [<ore:stickWood>, null, null]]);
recipes.remove(<lcrdrfs:spray_can_black>);
recipes.addShaped(<lcrdrfs:spray_can_black>, [[null, <minecraft:wooden_button>, null], [<minecraft:iron_ingot>, <ore:dyeBlack>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

recipes.addShaped(<progressiveautomation:CobbleUpgrade>, [[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>], [<ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}}), <progressiveautomation:MinerStone>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "lava", Amount: 1000}})], [<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);

recipes.remove(<advgenerators:IronTubing>);
recipes.addShaped(<advgenerators:IronTubing>, [[null, <ore:ingotIron>, null], [null, <ore:stickWood>, null], [null, <ore:ingotIron>, null]]);

recipes.remove(<betterbuilderswands:wandIron>);
recipes.addShaped(<betterbuilderswands:wandIron>, [[null, null, <ore:ingotIron>], [null, <ore:plankWood>, null], [<ore:plankWood>, null, null]]);

recipes.remove(<betterbuilderswands:wandDiamond>);
recipes.addShaped(<betterbuilderswands:wandDiamond>, [[null, null, <minecraft:diamond>], [null, <ore:plankWood>, null], [<ore:plankWood>, null, null]]);


recipes.remove(<advancedrocketry:pressureTank>);
recipes.addShaped(<advancedrocketry:pressureTank>, [[<ore:plateIron>, <mob_grinding_utils:tank>, <ore:plateIron>], [<ore:plateIron>, <mob_grinding_utils:tank>, <ore:plateIron>], [<ore:plateIron>, <mob_grinding_utils:tank>, <ore:plateIron>]]);

recipes.remove(<advancedrocketry:pressureTank:1>);
recipes.addShaped(<advancedrocketry:pressureTank:1>, [[<ore:plateSteel>, null, <ore:plateSteel>], [null, <advancedrocketry:pressureTank>, null], [<ore:plateSteel>, null, <ore:plateSteel>]]);

recipes.remove(<advancedrocketry:pressureTank:2>);
recipes.addShaped(<advancedrocketry:pressureTank:2>, [[<minecraft:diamond>, null, <minecraft:diamond>], [null, <advancedrocketry:pressureTank:1>, null], [<minecraft:diamond>, null, <minecraft:diamond>]]);

recipes.remove(<advancedrocketry:pressureTank:3>);
recipes.addShaped(<advancedrocketry:pressureTank:3>, [[<ore:plateTitanium>, null, <ore:plateTitanium>], [null, <advancedrocketry:pressureTank:2>, null], [<ore:plateTitanium>, null, <ore:plateTitanium>]]);

recipes.remove(<mob_grinding_utils:saw>);
recipes.addShaped(<mob_grinding_utils:saw>, [[<minecraft:iron_sword>, <minecraft:diamond>, <minecraft:iron_sword>], [<mob_grinding_utils:spikes>, <minecraft:redstone_block>, <mob_grinding_utils:spikes>], [<minecraft:diamond>, <minecraft:iron_block>, <minecraft:diamond>]]);

//Iron Sheet Fixes
recipes.remove(<advancedrocketry:carbonScrubberCartridge>);
recipes.addShaped(<advancedrocketry:carbonScrubberCartridge>, [[<ore:plateIron>, <ore:bars>, <ore:plateIron>], [<ore:plateIron>, <ore:bars>, <ore:plateIron>], [<ore:plateIron>, <ore:bars>, <ore:plateIron>]]);


recipes.remove(<advancedrocketry:beacon>);
recipes.addShaped(<advancedrocketry:beacon>, [[null, <ore:coilCopper>, null], [<advancedrocketry:ic:3>, <libvulpes:structureMachine>, <advancedrocketry:ic:1>], [<ore:plateIron>, <ore:coilCopper>, <ore:plateIron>]]);

recipes.remove(<advancedrocketry:circleLight>);
recipes.addShaped(<advancedrocketry:circleLight>, [[<ore:plateIron>, null], [null, <minecraft:glowstone>]]);

recipes.remove(<advancedrocketry:satellitePrimaryFunction:4>);
recipes.addShaped(<advancedrocketry:satellitePrimaryFunction:4>, [[null, <ore:stickCopper>, null], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<advancedrocketry:ic:1>, <advancedrocketry:oreScanner>, <advancedrocketry:ic:1>]]);

