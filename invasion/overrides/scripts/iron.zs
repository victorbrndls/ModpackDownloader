//Shorthand
val ip = <ore:plateIron>;
val cp = <ore:plateCopper>;
val lp = <ore:plateLead>;
val np = <ore:plateNickel>;
val tp = <ore:plateTin>;
val sp = <ore:plateSteel>;
val gp = <ore:plateGold>;

//Pam's Stuff
recipes.remove(<harvestcraft:skilletItem>);
recipes.addShaped(<harvestcraft:skilletItem>, [[ip, null, null], [null, ip, null], [null, null, <minecraft:stick>]]);
recipes.addShaped(<harvestcraft:skilletItem>, [[cp, null, null], [null, cp, null], [null, null, <minecraft:stick>]]);
recipes.addShaped(<harvestcraft:skilletItem>, [[lp, null, null], [null, lp, null], [null, null, <minecraft:stick>]]);
recipes.addShaped(<harvestcraft:skilletItem>, [[tp, null, null], [null, tp, null], [null, null, <minecraft:stick>]]);
recipes.addShaped(<harvestcraft:skilletItem>, [[np, null, null], [null, np, null], [null, null, <minecraft:stick>]]);
recipes.remove(<harvestcraft:saucepanItem>);
recipes.addShaped(<harvestcraft:saucepanItem>, [[ip, null, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<harvestcraft:saucepanItem>, [[cp, null, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<harvestcraft:saucepanItem>, [[lp, null, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<harvestcraft:saucepanItem>, [[tp, null, null], [<minecraft:stick>, null, null]]);
recipes.addShaped(<harvestcraft:saucepanItem>, [[np, null, null], [<minecraft:stick>, null, null]]);
recipes.remove(<harvestcraft:cuttingboardItem>);
recipes.addShaped(<harvestcraft:cuttingboardItem>, [[ip, null, null], [null, <minecraft:stick>, null], [null, null, <ore:plankWood>]]);
recipes.addShaped(<harvestcraft:cuttingboardItem>, [[cp, null, null], [null, <minecraft:stick>, null], [null, null, <ore:plankWood>]]);
recipes.addShaped(<harvestcraft:cuttingboardItem>, [[lp, null, null], [null, <minecraft:stick>, null], [null, null, <ore:plankWood>]]);
recipes.addShaped(<harvestcraft:cuttingboardItem>, [[tp, null, null], [null, <minecraft:stick>, null], [null, null, <ore:plankWood>]]);
recipes.addShaped(<harvestcraft:cuttingboardItem>, [[np, null, null], [null, <minecraft:stick>, null], [null, null, <ore:plankWood>]]);
recipes.remove(<harvestcraft:potItem>);
recipes.addShaped(<harvestcraft:potItem>, [[<minecraft:stick>, ip, ip], [null, ip, ip]]);
recipes.addShaped(<harvestcraft:potItem>, [[<minecraft:stick>, cp, cp], [null, cp, cp]]);
recipes.addShaped(<harvestcraft:potItem>, [[<minecraft:stick>, lp, lp], [null, lp, lp]]);
recipes.addShaped(<harvestcraft:potItem>, [[<minecraft:stick>, tp, tp], [null, tp, tp]]);
recipes.addShaped(<harvestcraft:potItem>, [[<minecraft:stick>, np, np], [null, np, np]]);

//New Vanilla Item Recipes
recipes.remove(<minecraft:anvil>);
recipes.remove(<minecraft:hopper>);
recipes.remove(<minecraft:piston>);
recipes.remove(<minecraft:iron_door>);
recipes.remove(<minecraft:minecart>);

recipes.addShaped(<minecraft:anvil>, [[<ore:blockIron>, <ore:blockIron>, <ore:blockIron>], [null, sp, null], [sp, sp, sp]]);
recipes.addShaped(<minecraft:hopper>, [[tp, null, tp], [tp, <minecraft:chest>, tp], [null, tp, null]]);

recipes.addShaped(<minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <ore:stickIron>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);
recipes.addShaped(<minecraft:iron_door>, [[ip, ip, null], [ip, ip, null], [ip, ip, null]]);
recipes.addShaped(<minecraft:minecart>, [[ip, null, ip], [ip, ip, ip]]);

//EnderIO Capacitors
recipes.remove(<enderio:blockCapBank:1>);
recipes.addShaped(<enderio:blockCapBank:1>, [[ip, <enderio:itemBasicCapacitor>, ip], [<enderio:itemBasicCapacitor>, <minecraft:redstone_block>, <enderio:itemBasicCapacitor>], [ip, <enderio:itemBasicCapacitor>, ip]]);

//Genetics Harder Recipes Using Plates
recipes.remove(<geneticsreborn:CellAnalyser>);
recipes.addShaped(<geneticsreborn:CellAnalyser>, [[ip, ip, ip], [ip, <ore:paneGlass>, ip], [ip, <minecraft:redstone>, ip]]);

recipes.remove(<geneticsreborn:DNAExtractor>);
recipes.addShaped(<geneticsreborn:DNAExtractor>, [[ip, ip, ip], [<minecraft:sticky_piston>, <geneticsreborn:Cell>, <minecraft:sticky_piston>], [ip, ip, ip]]);

recipes.remove(<geneticsreborn:DNADecrypter>);
recipes.addShaped(<geneticsreborn:DNADecrypter>, [[ip, <ore:blockGlass>, ip], [<geneticsreborn:DNAHelix>, gp, <geneticsreborn:DNAHelix>], [ip, <ore:blockGlass>, ip]]);

recipes.remove(<geneticsreborn:PlasmidInfuser>);
recipes.addShaped(<geneticsreborn:PlasmidInfuser>, [[ip, ip, ip], [<geneticsreborn:Plasmid>, <minecraft:piston>, <geneticsreborn:Plasmid>], [ip, <minecraft:diamond>, ip]]);

recipes.remove(<geneticsreborn:BloodPurifier>);
recipes.addShaped(<geneticsreborn:BloodPurifier>, [[ip, <minecraft:wool:*>, ip], [<geneticsreborn:GlassSyringe>, <minecraft:bucket>, <geneticsreborn:GlassSyringe>], [ip, <minecraft:wool:*>, ip]]);

recipes.remove(<geneticsreborn:PlasmidInjector>);
recipes.addShaped(<geneticsreborn:PlasmidInjector>, [[ip, <geneticsreborn:GlassSyringe>, ip], [<geneticsreborn:GlassSyringe>, <minecraft:bucket>, <geneticsreborn:GlassSyringe>], [ip, <geneticsreborn:GlassSyringe>, ip]]);

recipes.remove(<actuallyadditions:blockMisc:9>);
recipes.addShaped(<actuallyadditions:blockMisc:9>, [[ip, <minecraft:stone_slab>, ip], [<minecraft:stone_slab>, <actuallyadditions:itemMisc:5>, <minecraft:stone_slab>], [ip, <minecraft:stone_slab>, ip]]);