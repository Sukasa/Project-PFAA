//------ IC2 GENERATOR ARMOR ------
recipes.remove(<IC2:itemSolarHelmet>);
recipes.addShaped(<IC2:itemSolarHelmet>, 
  [[<minecraft:air>, <IC2:blockGenerator:3>, <minecraft:air>], 
  [<ore:stickSteel>, <terrafirmacraft:item.Wrought Iron Helmet>, <ore:stickSteel>],
  [<IC2:itemCable>, <IC2:itemCable>, <IC2:itemCable>]]);
  
recipes.remove(<IC2:itemStaticBoots>);
recipes.addShaped(<IC2:itemStaticBoots>,
  [[<minecraft:air>, <terrafirmacraft:item.Wrought Iron Boots>, <minecraft:air>], 
  [<ore:blockWool>, <IC2:itemArmorRubBoots>, <ore:blockWool>],
  [<IC2:itemCable>, <IC2:itemCable>, <IC2:itemCable>]]);

//you should not be forced to use white wool in your boots
recipes.remove(<IC2:itemArmorRubBoots>);
recipes.addShaped(<IC2:itemArmorRubBoots>,
  [[<ore:itemRubber>, <minecraft:air>, <ore:itemRubber>], 
  [<ore:itemRubber>, <minecraft:air>, <ore:itemRubber>],
  [<ore:itemRubber>, <ore:blockWool>, <ore:itemRubber>]]);

 
//------ IC2 UNBREAKABLE HAZMAT ------
mods.techreborn.assemblingMachine.addRecipe(<IC2:itemArmorHazmatHelmet>.withTag({ench:[{lvl:10 as short, id: 34 as short}], Unbreakable: 1, Unbreaking: 10, display: {Name: "Lead-Lined Scuba Helmet"}}), <IC2:itemArmorHazmatHelmet>, <ihl:item.ihlSimpleItem:152>*64, 600, 64);
mods.techreborn.assemblingMachine.addRecipe(<IC2:itemArmorHazmatChestplate>.withTag({ench:[{lvl:10 as short, id: 34 as short}], Unbreakable: 1, Unbreaking: 10, display: {Name: "Lead-Lined Hazmat Suit"}}), <IC2:itemArmorHazmatChestplate>, <ihl:item.ihlSimpleItem:152>*64, 600, 64);
mods.techreborn.assemblingMachine.addRecipe(<IC2:itemArmorHazmatLeggings>.withTag({ench:[{lvl:10 as short, id: 34 as short}], Unbreakable: 1, Unbreaking: 10, display: {Name: "Lead-Lined Hazmat Suit Leggings"}}), <IC2:itemArmorHazmatLeggings>, <ihl:item.ihlSimpleItem:152>*64, 600, 64);
mods.techreborn.assemblingMachine.addRecipe(<IC2:itemArmorRubBoots>.withTag({ench:[{lvl:10 as short, id: 34 as short}], Unbreakable: 1, Unbreaking: 10, display: {Name: "Lead-Lined Rubber Boots"}}), <IC2:itemArmorRubBoots>, <ihl:item.ihlSimpleItem:152>*64, 600, 64);

//------ MISC. METAL FORMER RECIPES ------
mods.ic2.MetalFormer.addRollingRecipe(<libVulpes:libVulpesproductplate:2>, <terrafirmacraft:item.Gold Ingot>);

mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Tin Wire>, <tfctech:item.Tin Stripe>);
mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Aluminum Wire>, <tfctech:item.Aluminum Stripe>);
mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Copper Wire>, <tfctech:item.Copper Stripe>);
mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Gold Wire>, <tfctech:item.Gold Stripe>);
mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Electrum Wire>, <tfctech:item.Electrum Stripe>);
mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Wrought Iron Wire>, <tfctech:item.Wrought Iron Stripe>);
mods.ic2.MetalFormer.addExtrudingRecipe(<tfctech:item.Steel Wire>, <tfctech:item.Steel Stripe>);

