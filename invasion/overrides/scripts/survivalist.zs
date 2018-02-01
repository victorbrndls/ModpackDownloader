//gigaherz.survivalist.Dryable.addRecipe(<minecraft:fish>,<survivalist:jerky>,500);
//gigaherz.survivalist.Choppable.addRecipe(<minecraft:bone>,<minecraft:dye:15>,1);

gigaherz.survivalist.Dryable.addRecipe(<minecraft:rotten_flesh>,<minecraft:leather>,3200);
gigaherz.survivalist.Dryable.addRecipe(<animalium:wild_dog_pelt>,<minecraft:leather>,3200);
gigaherz.survivalist.Dryable.addRecipe(<minecraft:rabbit_hide>,<minecraft:leather>,3200);

gigaherz.survivalist.Choppable.addRecipe(<littlelooter:air_drop>,<exnihiloadscensio:itemOreIron>,1);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:cauldron>,<exnihiloadscensio:itemOreIron>,1);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:chest>,<minecraft:planks>,1);
gigaherz.survivalist.Choppable.addRecipe(<minecraft:furnace>,<minecraft:cobblestone>,1);


gigaherz.survivalist.Choppable.addRecipe(<immersiveengineering:stoneDecoration:3>,<translocator:diamondNugget>);

//gigaherz.survivalist.Choppable.addRecipe(<littlelooter:can_dog_food>,<littlelooter:can_dog_food:1>);

//Crafting Grid Recipes
//More Stone Recipe
recipes.remove(<minecraft:cobblestone>);
recipes.addShapeless(<minecraft:cobblestone> * 9, [<extrautils2:compressedcobblestone>]);
recipes.removeShaped(<minecraft:cobblestone>, [[<survivalist:rock>, <survivalist:rock>, <survivalist:rock>], [<survivalist:rock>, <minecraft:clay_ball>, <survivalist:rock>], [<survivalist:rock>, <survivalist:rock>, <survivalist:rock>]]);
recipes.addShaped(<minecraft:cobblestone> * 4, [[<survivalist:rock>, <minecraft:clay_ball>], [<survivalist:rock>, <survivalist:rock>]]);
recipes.removeShaped(<minecraft:stone:5>, [[<survivalist:rock:1>, <survivalist:rock:1>, <survivalist:rock:1>], [<survivalist:rock:1>, <minecraft:clay_ball>, <survivalist:rock:1>], [<survivalist:rock:1>, <survivalist:rock:1>, <survivalist:rock:1>]]);
recipes.addShaped(<minecraft:stone:5> * 4, [[<survivalist:rock:1>, <minecraft:clay_ball>], [<survivalist:rock:1>, <survivalist:rock:1>]]);
recipes.removeShaped(<minecraft:stone:3>, [[<survivalist:rock:2>, <survivalist:rock:2>, <survivalist:rock:2>], [<survivalist:rock:2>, <minecraft:clay_ball>, <survivalist:rock:2>], [<survivalist:rock:2>, <survivalist:rock:2>, <survivalist:rock:2>]]);
recipes.addShaped(<minecraft:stone:3> * 4, [[<survivalist:rock:2>, <minecraft:clay_ball>], [<survivalist:rock:2>, <survivalist:rock:2>]]);
recipes.removeShaped(<minecraft:stone:1>, [[<survivalist:rock:3>, <survivalist:rock:3>, <survivalist:rock:3>], [<survivalist:rock:3>, <minecraft:clay_ball>, <survivalist:rock:3>], [<survivalist:rock:3>, <survivalist:rock:3>, <survivalist:rock:3>]]);
recipes.addShaped(<minecraft:stone:1> * 4, [[<survivalist:rock:3>, <minecraft:clay_ball>], [<survivalist:rock:3>, <survivalist:rock:3>]]);