//mods.actuallyadditions.AtomicReconstructor.addRecipe(input, output, energy);

mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:itemDust:2>, <actuallyadditions:itemDust:3>, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:itemDust:3>, <actuallyadditions:itemDust:2>, 5000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:clay_ball>, <minecraft:dye:4>, 10000);

//Upgrade Vanilla armor to Actually Additions Armor
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:iron_helmet>, <actuallyadditions:itemHelmCrystalWhite>, 25000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:iron_chestplate>, <actuallyadditions:itemChestCrystalWhite>, 25000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:iron_leggings>, <actuallyadditions:itemPantsCrystalWhite>, 25000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:iron_boots>, <actuallyadditions:itemBootsCrystalWhite>, 25000);

mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:diamond_helmet>, <actuallyadditions:itemHelmCrystalLightBlue>, 40000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:diamond_chestplate>, <actuallyadditions:itemChestCrystalLightBlue>, 40000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:diamond_leggings>, <actuallyadditions:itemPantsCrystalLightBlue>, 40000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:diamond_boots>, <actuallyadditions:itemBootsCrystalLightBlue>, 40000);

mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:itemHelmEmerald>, <actuallyadditions:itemHelmCrystalGreen>, 80000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:itemChestEmerald>, <actuallyadditions:itemChestCrystalGreen>, 80000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:itemPantsEmerald>, <actuallyadditions:itemPantsCrystalGreen>, 80000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:itemBootsEmerald>, <actuallyadditions:itemBootsCrystalGreen>, 80000);

recipes.remove(<actuallyadditions:itemHelmCrystalGreen>);
recipes.remove(<actuallyadditions:itemChestCrystalGreen>);
recipes.remove(<actuallyadditions:itemPantsCrystalGreen>);
recipes.remove(<actuallyadditions:itemBootsCrystalGreen>);
recipes.remove(<actuallyadditions:itemBootsCrystalWhite>);
recipes.remove(<actuallyadditions:itemPantsCrystalWhite>);
recipes.remove(<actuallyadditions:itemChestCrystalWhite>);
recipes.remove(<actuallyadditions:itemHelmCrystalWhite>);
recipes.remove(<actuallyadditions:itemHelmCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemChestCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemPantsCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemBootsCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemHelmCrystalBlue>);
recipes.remove(<actuallyadditions:itemChestCrystalBlue>);
recipes.remove(<actuallyadditions:itemPantsCrystalBlue>);
recipes.remove(<actuallyadditions:itemBootsCrystalBlue>);
recipes.remove(<actuallyadditions:itemHelmCrystalBlack>);
recipes.remove(<actuallyadditions:itemChestCrystalBlack>);
recipes.remove(<actuallyadditions:itemPantsCrystalBlack>);
recipes.remove(<actuallyadditions:itemBootsCrystalBlack>);
recipes.remove(<actuallyadditions:itemBootsCrystalRed>);
recipes.remove(<actuallyadditions:itemPantsCrystalRed>);
recipes.remove(<actuallyadditions:itemChestCrystalRed>);
recipes.remove(<actuallyadditions:itemHelmCrystalRed>);
recipes.remove(<actuallyadditions:itemSwordEmerald>);
recipes.remove(<actuallyadditions:itemAxeEmerald>);
recipes.remove(<actuallyadditions:itemShovelEmerald>);
recipes.remove(<actuallyadditions:itemAxeCrystalGreen>);
recipes.remove(<actuallyadditions:itemShovelCrystalGreen>);
recipes.remove(<actuallyadditions:itemSwordCrystalGreen>);
recipes.remove(<actuallyadditions:itemHoeCrystalGreen>);
recipes.remove(<actuallyadditions:itemAxeCrystalWhite>);
recipes.remove(<actuallyadditions:itemShovelCrystalWhite>);
recipes.remove(<actuallyadditions:itemSwordCrystalWhite>);
recipes.remove(<actuallyadditions:itemHoeCrystalWhite>);
recipes.remove(<actuallyadditions:itemAxeCrystalRed>);
recipes.remove(<actuallyadditions:itemShovelCrystalRed>);
recipes.remove(<actuallyadditions:itemHoeCrystalRed>);
recipes.remove(<actuallyadditions:itemHoeCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemShovelCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemAxeCrystalLightBlue>);
recipes.remove(<actuallyadditions:obsidianPaxel>);
recipes.remove(<actuallyadditions:itemDrillUpgradeSilkTouch>);
recipes.remove(<actuallyadditions:itemPaxelCrystalLightBlue>);
recipes.remove(<actuallyadditions:itemPaxelCrystalGreen>);
recipes.remove(<actuallyadditions:itemPaxelCrystalWhite>);
recipes.remove(<actuallyadditions:emeraldPaxel>);
recipes.remove(<actuallyadditions:itemPaxelCrystalRed>);


//Greenhouse recipe change
recipes.remove(<actuallyadditions:blockGreenhouseGlass>);
recipes.addShaped(<actuallyadditions:blockGreenhouseGlass> * 8, [[<ore:blockGlass>, <ore:treeSapling>, <ore:blockGlass>], [<ore:treeSapling>, <actuallyadditions:blockCrystalEmpowered:1>, <ore:treeSapling>], [<ore:blockGlass>, <ore:treeSapling>, <ore:blockGlass>]]);

//AIOT Fixes
recipes.remove(<actuallyadditions:woodenPaxel>);
recipes.addShaped(<actuallyadditions:woodenPaxel>, [[<minecraft:wooden_axe>, <minecraft:wooden_pickaxe>, <minecraft:wooden_shovel>], [<minecraft:wooden_sword>, <minecraft:wooden_hoe>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:stonePaxel>);
recipes.addShaped(<actuallyadditions:stonePaxel>, [[<minecraft:stone_axe>, <minecraft:stone_pickaxe>, <minecraft:stone_shovel>], [<minecraft:stone_sword>, <minecraft:stone_hoe>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:ironPaxel>);
recipes.addShaped(<actuallyadditions:ironPaxel>, [[<minecraft:iron_axe>, <minecraft:iron_pickaxe>, <minecraft:iron_shovel>], [<minecraft:iron_sword>, <minecraft:iron_hoe>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:goldPaxel>);
recipes.addShaped(<actuallyadditions:goldPaxel>, [[<minecraft:golden_axe>, <minecraft:golden_pickaxe>, <minecraft:golden_shovel>], [<minecraft:golden_sword>, <minecraft:golden_hoe>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:diamondPaxel>);
recipes.addShaped(<actuallyadditions:diamondPaxel>, [[<minecraft:diamond_axe>, <minecraft:diamond_pickaxe>, <minecraft:diamond_shovel>], [<minecraft:diamond_sword>, <minecraft:diamond_hoe>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:quartzPaxel>);
recipes.addShaped(<actuallyadditions:quartzPaxel>, [[<actuallyadditions:itemAxeQuartz>, <actuallyadditions:itemPickaxeQuartz>, <actuallyadditions:itemShovelQuartz>], [<actuallyadditions:itemSwordQuartz>, <actuallyadditions:itemHoeQuartz>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:itemPaxelCrystalBlue>);
recipes.addShaped(<actuallyadditions:itemPaxelCrystalBlue>, [[<actuallyadditions:itemAxeCrystalBlue>, <actuallyadditions:itemPickaxeCrystalBlue>, <actuallyadditions:itemShovelCrystalBlue>], [<actuallyadditions:itemSwordCrystalBlue>, <actuallyadditions:itemHoeCrystalBlue>, null], [null, null, null]]);
recipes.remove(<actuallyadditions:itemPaxelCrystalBlack>);
recipes.addShaped(<actuallyadditions:itemPaxelCrystalBlack>, [[<actuallyadditions:itemAxeCrystalBlack>, <actuallyadditions:itemPickaxeCrystalBlack>, <actuallyadditions:itemShovelCrystalBlack>], [<actuallyadditions:itemSwordCrystalBlack>, <actuallyadditions:itemHoeCrystalBlack>, null], [null, null, null]]);

//Actually Additions Changes
recipes.remove(<actuallyadditions:itemHelmCrystalRed>);
recipes.addShaped(<actuallyadditions:itemHelmCrystalRed>, [[<enderio:itemAlloy:3>, <minecraft:diamond>, <enderio:itemAlloy:3>], [<actuallyadditions:itemCrystal>, null, <actuallyadditions:itemCrystal>], [null, null, null]]);
recipes.remove(<actuallyadditions:itemChestCrystalRed>);
recipes.addShaped(<actuallyadditions:itemChestCrystalRed>, [[<enderio:itemAlloy:3>, null, <enderio:itemAlloy:3>], [<enderio:itemAlloy:3>, <minecraft:diamond>, <enderio:itemAlloy:3>], [<actuallyadditions:itemCrystal>, <actuallyadditions:itemCrystal>, <actuallyadditions:itemCrystal>]]);
recipes.remove(<actuallyadditions:itemPantsCrystalRed>);
recipes.addShaped(<actuallyadditions:itemPantsCrystalRed>, [[<enderio:itemAlloy:3>, <minecraft:diamond>, <enderio:itemAlloy:3>], [<actuallyadditions:itemCrystal>, null, <actuallyadditions:itemCrystal>], [<actuallyadditions:itemCrystal>, null, <actuallyadditions:itemCrystal>]]);
recipes.remove(<actuallyadditions:itemBootsCrystalRed>);
recipes.addShaped(<actuallyadditions:itemBootsCrystalRed>, [[null, null, null], [<minecraft:diamond>, null, <enderio:itemAlloy:3>], [<actuallyadditions:itemCrystal>, null, <actuallyadditions:itemCrystal>]]);
recipes.remove(<actuallyadditions:itemHelmQuartz>);
recipes.addShaped(<actuallyadditions:itemMisc:5>, [[<actuallyadditions:itemMisc:5>, <minecraft:diamond>, <actuallyadditions:itemMisc:5>], [<actuallyadditions:itemMisc:5>, null, <actuallyadditions:itemMisc:5>], [null, null, null]]);
recipes.remove(<actuallyadditions:itemChestQuartz>);
recipes.addShaped(<actuallyadditions:itemChestQuartz>, [[<actuallyadditions:itemMisc:5>, null, <actuallyadditions:itemMisc:5>], [<actuallyadditions:itemMisc:5>, <minecraft:diamond>, <actuallyadditions:itemMisc:5>], [<actuallyadditions:itemMisc:5>, <actuallyadditions:itemMisc:5>, <actuallyadditions:itemMisc:5>]]);
recipes.remove(<actuallyadditions:itemPantsQuartz>);
recipes.addShaped(<actuallyadditions:itemPantsQuartz>, [[<actuallyadditions:itemMisc:5>, <minecraft:diamond>, <actuallyadditions:itemMisc:5>], [<actuallyadditions:itemMisc:5>, null, <actuallyadditions:itemMisc:5>], [<actuallyadditions:itemMisc:5>, null, <actuallyadditions:itemMisc:5>]]);
recipes.remove(<actuallyadditions:itemBootsQuartz>);
recipes.addShaped(<actuallyadditions:itemBootsQuartz>, [[null, null, null], [<minecraft:diamond>, null, <actuallyadditions:itemMisc:5>], [<actuallyadditions:itemMisc:5>, null, <actuallyadditions:itemMisc:5>]]);
recipes.remove(<actuallyadditions:blockAtomicReconstructor>);
recipes.addShaped(<actuallyadditions:blockAtomicReconstructor>, [[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>], [<minecraft:redstone>, <air_support:circuit_board>, <minecraft:redstone>], [<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>]]);
recipes.remove(<actuallyadditions:blockSmileyCloud>);
recipes.addShaped(<actuallyadditions:blockSmileyCloud>, [[null, <minecraft:wool:*>, null], [<minecraft:wool:*>, <forge:bucketFilled>.withTag({FluidName: "xpjuice", Amount: 1000}), <minecraft:wool:*>], [null, <minecraft:wool:*>, null]]);
recipes.addShaped(<actuallyadditions:blockSmileyCloud>, [[null, <minecraft:wool:*>, null], [<minecraft:wool:*>, <ceramics:clay_bucket>.withTag({fluids: {FluidName: "xpjuice", Amount: 1000}}), <minecraft:wool:*>], [null, <minecraft:wool:*>, null]]);
recipes.remove(<actuallyadditions:itemMisc:7>);
recipes.addShaped(<actuallyadditions:itemMisc:7>, [[null, <actuallyadditions:itemCrystal:1>, null], [<actuallyadditions:itemCrystal:1>, <actuallyadditions:itemMisc:5>, <actuallyadditions:itemCrystal:1>], [null, <actuallyadditions:itemCrystal:1>, null]]);

//Coffee maker is accesible a bit earlier in progression
recipes.remove(<actuallyadditions:blockCoffeeMachine>);
recipes.addShaped(<actuallyadditions:blockCoffeeMachine>, [[null, <actuallyadditions:itemCoffeeBeans>, null], [null, <ore:bars>, null], [<actuallyadditions:itemMisc:7>, <minecraft:blaze_powder>, <actuallyadditions:itemMisc:7>]]);