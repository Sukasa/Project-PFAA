// Dense plates in metal press
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Steel Plate>, <libVulpes:libVulpesproductplate:6>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Red Steel Plate>, <tfctech:item.Red Steel Plate>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Black Steel Plate>, <tfctech:item.Black Steel Plate>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Blue Steel Plate>, <tfctech:item.Blue Steel Plate>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Wrought Iron Plate>, <libVulpes:libVulpesproductplate:1>*2, <ImmersiveEngineering:mold>, 1500);

// Lots of lead plates for some reason...
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Lead Plate>, <tfctech:item.Lead Plate>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Lead Plate>, <IC2:itemPlates:6>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Lead Plate>, <Railcraft:part.plate:4>*2, <ImmersiveEngineering:mold>, 1500);
mods.immersiveengineering.MetalPress.addRecipe(<tfctech:item.Dense Lead Plate>, <Techguns:TechgunsAmmo:104>*2, <ImmersiveEngineering:mold>, 1500);

// Missing wool + lime paint recipes
recipes.addShapeless(<minecraft:wool:3>, [<tfctech:item.Lime Paint:12>, <minecraft:wool:0>]); // light blue
recipes.addShapeless(<minecraft:wool:8>, [<tfctech:item.Lime Paint:7>, <minecraft:wool:0>]); // silver / light grey
recipes.addShapeless(<minecraft:wool:10>, [<tfctech:item.Lime Paint:5>, <minecraft:wool:0>]); // purple
recipes.addShapeless(<minecraft:wool:13>, [<tfctech:item.Lime Paint:2>, <minecraft:wool:0>]); // green

// Missing IC2 painter + lime paint recipes
recipes.addShapeless(<IC2:itemToolPainterCloud>, [<tfctech:item.Lime Paint:12>, <IC2:itemToolPainter>]); // light blue
recipes.addShapeless(<IC2:itemToolPainterLightGrey>, [<tfctech:item.Lime Paint:7>, <IC2:itemToolPainter>]); // light grey

// Remove amadron tablet and add new crafting recipes for PnC bits
recipes.remove(<PneumaticCraft:amadronTablet>);

recipes.addShapeless(<PneumaticCraft:assemblyProgram>, [<PneumaticCraft:printedCircuitBoard>, <Magneticraft:item.drill>]);
recipes.addShapeless(<PneumaticCraft:assemblyProgram:1>, [<PneumaticCraft:printedCircuitBoard>, <techreborn:dust:65>]);

// Tweaks to PnC Assembly Station
recipes.remove(<PneumaticCraft:assemblyLaser>);
recipes.addShaped(<PneumaticCraft:assemblyLaser>,
 [[<BuildCraft|Silicon:laserBlock>, <PneumaticCraft:pneumaticCilinder>, <PneumaticCraft:pneumaticCilinder>],
  [null, 				null, 								<PneumaticCraft:pneumaticCilinder>],
  [<PneumaticCraft:ingotIronCompressed>, <PneumaticCraft:printedCircuitBoard>, 	<PneumaticCraft:ingotIronCompressed>]]);
  
recipes.remove(<PneumaticCraft:assemblyDrill>);
recipes.addShaped(<PneumaticCraft:assemblyDrill>,
 [[<IC2:itemToolDDrill>, <PneumaticCraft:pneumaticCilinder>, <PneumaticCraft:pneumaticCilinder>],
  [null, 				null, 								<PneumaticCraft:pneumaticCilinder>],
  [<PneumaticCraft:ingotIronCompressed>, <PneumaticCraft:printedCircuitBoard>, 	<PneumaticCraft:ingotIronCompressed>]]);
  

//Drill
mods.pneumaticcraft.Assembly.addDrillRecipe(<Railcraft:machine.beta:0>, <Railcraft:machine.beta:2> * 8);
mods.pneumaticcraft.Assembly.addLaserRecipe(<Railcraft:machine.beta:0>, <Railcraft:machine.beta:1> * 8);

mods.pneumaticcraft.Assembly.addDrillRecipe(<Railcraft:machine.beta:13>, <Railcraft:machine.beta:15> * 8);
mods.pneumaticcraft.Assembly.addLaserRecipe(<Railcraft:machine.beta:13>, <Railcraft:machine.beta:14> * 8);


// OpenComputers/Computronics tweaks - disks need plastic, transtors have 32x yield, fix some computronics recipes
recipes.remove(<OpenComputers:item:4>);
recipes.addShaped(<OpenComputers:item:4>,
 [[null, <minecraft:lever>, null],
  [<PneumaticCraft:plastic>, <OpenComputers:item:19>, <PneumaticCraft:plastic>],
  [null, <minecraft:paper>, null]]);

recipes.remove(<OpenComputers:item:23>);
recipes.addShaped(<OpenComputers:item:23>*32,
 [[null, <PneumaticCraft:plastic:15>, null],
  [<PneumaticCraft:plastic:15>, <libVulpes:libVulpesproductnugget:3>, <PneumaticCraft:plastic:15>],
  [null, <minecraft:paper>, null]]);

recipes.remove(<computronics:computronics.locomotiveRelay>);
recipes.addShaped(<computronics:computronics.locomotiveRelay>,
 [[<ore:plateTin>, <Railcraft:part.circuit:1>, <ore:plateTin>],
  [<Railcraft:part.rail:5>, <Railcraft:part.circuit:0>, <Railcraft:part.rail:5>],
  [<ore:plateTin>, <minecraft:paper>, <ore:plateTin>]]);
  
recipes.remove(<computronics:computronics.detector>);
recipes.addShaped(<computronics:computronics.detector>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
  [<ore:plateSteel>, <Railcraft:detector:9>, <minecraft:light_weighted_pressure_plate>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
  
recipes.remove(<computronics:computronics.ticketMachine>);
recipes.addShaped(<computronics:computronics.ticketMachine>,
 [[<ore:plateTin>, <ore:plateSteel>, <ore:plateTin>],
  [<ore:plateSteel>, <minecraft:dispenser>, <minecraft:glass_pane>],
  [<ore:plateTin>, <minecraft:piston>, <ore:plateTin>]]);

// Other excised stuff
recipes.remove(<Forestry:pipette>);

// Casing molds
recipes.addShaped(<customitems:mold_casing>,
 [[null, <ore:plateSteel>, null],
  [<ore:plateSteel>, <tfcm:item.CasingIron>, <ore:plateSteel>],
  [null, <ore:plateSteel>, null]]);
recipes.addShaped(<customitems:mold_casing>,
 [[null, <ore:plateSteel>, null],
  [<ore:plateSteel>, <tfcm:item.CasingBrass>, <ore:plateSteel>],
  [null, <ore:plateSteel>, null]]);
recipes.addShaped(<customitems:mold_casing>,
 [[null, <ore:plateSteel>, null],
  [<ore:plateSteel>, <tfcm:item.CasingRoseGold>, <ore:plateSteel>],
  [null, <ore:plateSteel>, null]]);
  
mods.immersiveengineering.MetalPress.addRecipe(<tfcm:item.CasingIron>, <terrafirmacraft:item.Wrought Iron Ingot>, <customitems:mold_casing>, 2500);
mods.immersiveengineering.MetalPress.addRecipe(<tfcm:item.CasingBrass>, <terrafirmacraft:item.Brass Ingot>, <customitems:mold_casing>, 2500);
mods.immersiveengineering.MetalPress.addRecipe(<tfcm:item.CasingRoseGold>, <terrafirmacraft:item.Rose Gold Ingot>, <customitems:mold_casing>, 2500);

// Supports in carpenter
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:0> * 12,
[[<terrafirmacraft:item.Log:0>], [<terrafirmacraft:item.Log:0>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:1> * 12,
[[<terrafirmacraft:item.Log:1>], [<terrafirmacraft:item.Log:1>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:2> * 12,
[[<terrafirmacraft:item.Log:2>], [<terrafirmacraft:item.Log:2>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:3> * 12,
[[<terrafirmacraft:item.Log:3>], [<terrafirmacraft:item.Log:3>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:4> * 12,
[[<terrafirmacraft:item.Log:4>], [<terrafirmacraft:item.Log:4>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:5> * 12,
[[<terrafirmacraft:item.Log:5>], [<terrafirmacraft:item.Log:5>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:6> * 12,
[[<terrafirmacraft:item.Log:6>], [<terrafirmacraft:item.Log:6>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:7> * 12,
[[<terrafirmacraft:item.Log:7>], [<terrafirmacraft:item.Log:7>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:8> * 12,
[[<terrafirmacraft:item.Log:8>], [<terrafirmacraft:item.Log:8>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:9> * 12,
[[<terrafirmacraft:item.Log:9>], [<terrafirmacraft:item.Log:9>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:10> * 12,
[[<terrafirmacraft:item.Log:10>], [<terrafirmacraft:item.Log:10>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:11> * 12,
[[<terrafirmacraft:item.Log:11>], [<terrafirmacraft:item.Log:11>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:12> * 12,
[[<terrafirmacraft:item.Log:12>], [<terrafirmacraft:item.Log:12>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:13> * 12,
[[<terrafirmacraft:item.Log:13>], [<terrafirmacraft:item.Log:13>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:14> * 12,
[[<terrafirmacraft:item.Log:14>], [<terrafirmacraft:item.Log:14>]], <liquid:water> * 100, 20, null);
mods.forestry.Carpenter.addRecipe(<terrafirmacraft:WoodSupportV:15> * 12,
[[<terrafirmacraft:item.Log:15>], [<terrafirmacraft:item.Log:15>]], <liquid:water> * 100, 20, null);

// Insulated cables - red alloy wire + rubber for black.  Also, burn the insulation off in a furnace to get the raw wire back!
// Environmentalism?  What's that?


recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:1>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:2>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:3>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:4>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:5>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:6>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:7>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:8>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:9>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:10>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:11>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:12>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:13>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:14>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:15>); 
recipes.remove(<ProjRed|Transmission:projectred.transmission.wire:16>); 
 
recipes.addShaped(<ProjRed|Transmission:projectred.transmission.wire:16>*6,
 [[<tfctech:item.Rubber>, <ProjRed|Transmission:projectred.transmission.wire:0>, <tfctech:item.Rubber>],
 [<tfctech:item.Rubber>, <ProjRed|Transmission:projectred.transmission.wire:0>, <tfctech:item.Rubber>],
 [<tfctech:item.Rubber>, <ProjRed|Transmission:projectred.transmission.wire:0>, <tfctech:item.Rubber>]]);
 
 // Furnacing wires for the red alloy cables back
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:1>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:2>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:3>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:4>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:5>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:6>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:7>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:8>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:9>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:10>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:11>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:12>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:13>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:14>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:15>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.wire:16>);

furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:1>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:2>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:3>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:4>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:5>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:6>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:7>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:8>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:9>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:10>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:11>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:12>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:13>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:14>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:15>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>, <ProjRed|Transmission:projectred.transmission.framewire:16>);

furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.framewire:17>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:17>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:18>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:19>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:20>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:21>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:22>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:23>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:24>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:25>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:26>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:27>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:28>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:29>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:30>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:31>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:32>);
furnace.addRecipe(<ProjRed|Transmission:projectred.transmission.wire:0>*5, <ProjRed|Transmission:projectred.transmission.wire:33>);

// Wire crafting and painting
recipes.addShaped(<ProjRed|Transmission:projectred.transmission.wire:0>*12,
 [[<ProjRed|Core:projectred.core.part:10>],
 [<ProjRed|Core:projectred.core.part:10>],
 [<ProjRed|Core:projectred.core.part:10>]]);

// 1x
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:15>, [<tfctech:item.Lime Paint:1>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:14>, [<tfctech:item.Lime Paint:2>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:13>, [<tfctech:item.Lime Paint:3>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:12>, [<tfctech:item.Lime Paint:4>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:11>, [<tfctech:item.Lime Paint:5>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:10>, [<tfctech:item.Lime Paint:6>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:9>, [<tfctech:item.Lime Paint:7>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:8>, [<tfctech:item.Lime Paint:8>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:7>, [<tfctech:item.Lime Paint:9>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:6>, [<tfctech:item.Lime Paint:10>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:5>, [<tfctech:item.Lime Paint:11>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:4>, [<tfctech:item.Lime Paint:12>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:3>, [<tfctech:item.Lime Paint:13>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:2>, [<tfctech:item.Lime Paint:14>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:1>, [<tfctech:item.Lime Paint:15>, <ProjRed|Transmission:projectred.transmission.wire:16>]);

// 8x
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:15>, [<tfctech:item.Lime Paint:1>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:14>, [<tfctech:item.Lime Paint:2>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:13>, [<tfctech:item.Lime Paint:3>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:12>, [<tfctech:item.Lime Paint:4>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:11>, [<tfctech:item.Lime Paint:5>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:10>, [<tfctech:item.Lime Paint:6>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:9>, [<tfctech:item.Lime Paint:7>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:8>, [<tfctech:item.Lime Paint:8>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:7>, [<tfctech:item.Lime Paint:9>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:6>, [<tfctech:item.Lime Paint:10>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:5>, [<tfctech:item.Lime Paint:11>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:4>, [<tfctech:item.Lime Paint:12>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:3>, [<tfctech:item.Lime Paint:13>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:2>, [<tfctech:item.Lime Paint:14>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);
recipes.addShapeless(<ProjRed|Transmission:projectred.transmission.wire:1>, [<tfctech:item.Lime Paint:15>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>, <ProjRed|Transmission:projectred.transmission.wire:16>]);

// TFC Lapis doens't get voided by the crusher now
mods.immersiveengineering.Crusher.addRecipe(<IC2:itemDust:12>, <terrafirmacraft:item.dyePowder:4>, 6000);

// Chisel compat/integration/attainability
mods.chisel.Groups.addVariation("end_stone", <OpenComputers:endstone>);
mods.chisel.Groups.addVariation("pumpkin", <terrafirmacraft:Pumpkin>);
mods.chisel.Groups.addVariation("marble", <terrafirmacraft:StoneMM:5>);

// Recipes needed to make the other chisel blocks attainable
recipes.addShaped(<chisel:leaves:7>*8,
 [[<terrafirmacraft:leaves:*>, <terrafirmacraft:leaves:*>, <terrafirmacraft:leaves:*>],
 [<terrafirmacraft:leaves:*>, null, <terrafirmacraft:leaves:*>],
 [<terrafirmacraft:leaves:*>, <terrafirmacraft:leaves:*>, <terrafirmacraft:leaves:*>]]);

mods.ic2.Compressor.addRecipe(<minecraft:packed_ice>, <minecraft:ice>*9);