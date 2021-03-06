﻿package  {
	
	public class ItemDefinitions {
		//public static var main:Main;
		
		/**
		 * Short for "get stat" - gets the given player stat, resource, etc.
		 */
		public static function getStat(stat:String):int {
			/*if (main == null || main.player == null) {
				trace("WARNING: Main or Player not found when trying to call ItemDefinitions.gs()!");
				return -1;
			}*/
			return Player.getStat(stat);
		}
		
		
		public static const definitions:Object = {
			"Cerulean Hat"		: {	name		: "Cerulean Hat",
									plural		: "Cerulean Hats",
									short		: "A strange pointed wizard's hat.",
									long		: "It's colored cerulean blue and seems to give off a magical, other-worldly aura. Increases max HP based on intelligence and maximum mana.",
									value		: 42,
									equip		: true,
									head		: true,
									effects		: [function():Array { return ["maxHealth", Math.round(getStat("int") * 3 + getStat("maxMana") * .2) as int] }] },
			"Red Potion"		: {	name		: "Red Potion",
									plural		: "Red Potions",
									short		: "A red potion with basic healing properties.",
									long		: "Recovers 50 health.",
									value		: 10,
									effects		: [function():Array { return ["currHealth", 50] },
												   function():Array { return ["currCapacity", 10] }] },
			"Orange Potion" 	: {	name		: "Orange Potion",
									plural		: "Orange Potions",
									short		: "An orange potion with standard healing properties.",
									long		: "Recovers 100 health.",
									value		: 25,
									effects		: [function():Array { return ["currHealth", 100] },
												   function():Array { return ["currCapacity", 25] }] },
			"Yellow Potion" 	: {	name		: "Yellow Potion",
									plural		: "Yellos Potions",
									short		: "A yellow potion with potent healing properties.",
									long		: "Recovers 250 health.",
									value		: 50,
									effects		: [function():Array { return ["currHealth", 250] },
												   function():Array { return ["currCapacity", 50] }] },
			"White Potion" 		: {	name		: "White Potion",
									plural		: "White Potions",
									short		: "A white potion with powerful healing properties.",
									long		: "Recovers 500 health.",
									value		: 100,
									effects		: [function():Array { return ["currHealth", 500] },
												   function():Array { return ["currCapacity", 100] }] },
			"Blue Potion" 		: {	name		: "Blue Potion",
									plural		: "Blue Potions",
									short		: "A blue potion with basic regenerative properties.",
									long		: "Restores 50 mana.",
									value		: 50,
									effects		: [function():Array { return ["currMana", 50] },
												   function():Array { return ["currCapacity", 25] }] },
			"Violet Potion" 	: {	name		: "Violet Potion",
									plural		: "Violet Potions",
									short		: "A violet potion with potent regenerative properties.",
									long		: "Restores 250 mana.",
									value		: 100,
									effects		: [function():Array { return ["currMana", 250] },
												   function():Array { return ["currCapacity", 100] } ] },
			
			"Digestive"			: { name		: "Digestive",
									plural		: "Digestives",
									short		: "A mysterious, nondescript pill no bigger than a coin with magical digestive properties.",
									long		: "Instantly digests 25% of your stomach's contents at enhanced efficiency.",
									value		: 50,
									effects		: [function():Array { return ["fat", Math.round(Math.round(getStat("currCapacity") * 0.25) / (getStat("metabolism") / 2))] },
												   function():Array { return ["currCapacity", -Math.round(getStat("currCapacity") * 0.25)] } ] },
			"Super Digestive"	: { name		: "Super Digestive",
									plural		: "Super Digestives",
									short		: "A mysterious, nondescript pill no bigger than a coin with magical digestive properties.",
									long		: "Instantly digests 50% of your stomach's contents at considerably enhanced efficiency.",
									value		: 100,
									effects		: [function():Array { return ["fat", Math.round(Math.round(getStat("currCapacity") * 0.5) / (getStat("metabolism") / 3))] },
												   function():Array { return ["currCapacity", -Math.round(getStat("currCapacity") * 0.5)] } ] },
			"Max Digestive"		: { name		: "Max Digestive",
									plural		: "Max Digestives",
									short		: "A mysterious, nondescript pill no bigger than a coin with magical digestive properties.",
									long		: "Instantly digests 100% of your stomach's contents at substantially enhanced efficiency.",
									value		: 500,
									effects		: [function():Array { return ["fat", Math.round(getStat("currCapacity") / (getStat("metabolism") / 4))] },
												   function():Array { return ["currCapacity", -getStat("currCapacity")] } ] },
			
			"Mutton Loin"		: {	name		: "Mutton Loin",
									plural		: "Mutton Loins",
									short		: "An enormous cut of meat taken from below a sheep's entire rib cage.",
									long		: "This heavily marbled slab of meat has been thick-cut and seasoned to perfection before being seared and grilled medium rare. Normally, the loin is a very lean cut. However, the current state of rampant vegetation has left the fields a veritable buffet for sheep and other livestock, leaving them fattened to absurd proportions.",
									value		: 15,
									effects		: [//function():Array { return ["str", 10] },//function():Array { return ["atk", 5] },
												   function():Array { return ["currCapacity", 50] }] },
			"Roast Chicken"		: {	name		: "Roast Chicken",
									plural		: "Roast Chickens",
									short		: "A whole roast chicken.",
									long		: "Naturally a lean meat, this chicken, more akin to a turkey and big enough to be served on a shield, has seen better days. It has been baked until golden brown with a blend of exotic herbs and spices fused into its flesh that permeates a rich, savory aroma. The skin was basted in the chicken's very own juices, leaving the surface crunchy and gleaming.",
									value		: 25,
									effects		: [//function():Array { return ["atk", 10] },
												   function():Array { return ["currCapacity", 80] } ] },
			"Pork Haunch"		: {	name		: "Pork Haunch",
									plural		: "Pork Haunches",
									//short		: "An enormous honey-glazed ham.",
									//long		: "It's practically oozing its savory juices out of its crispy flesh.",
									short		: "An enormous hunk of raw pork.",
									long		: "The succulent hip of a pig, so massive that the cut itself would dwarf an entire pig from only a few short years ago. The fat content has gone far beyond that of simple marbling and is rippling, quite literally, with inch-thick veins of blubber. In fact, it's probably more fat than meat with a comparative toothpick of a bone lodged somewhere deep inside.",
									value		: 40,
									effects		: [//function():Array { return ["atk", 10] },
												   function():Array { return ["currCapacity", 100] } ] },
			"Doughnut"			: {	name		: "Doughnut",
									plural		: "Doughnuts",
									short		: "A thick ring of deep fried dough slathered in sugary icing.",
									long		: "The characteristic hole in the center of the doughnut has become increasingly smaller over recent years. At this point, it's gotten so small that you can barely fit the tip of your claw through it; it might as well not even be there. Meanwhile, every other dimension of the doughnut has swelled larger and larger. It's more of a small cake the size of your face than anything else.",
									value		: 5,
									effects		: [//function():Array { return ["atk", 10] },
												   function():Array { return ["currCapacity", 10] } ] },
			"Mole Pelt"			: { name		: "Mole Pelt",
									plural		: "Mole Pelts",
									short		: "The pelt of a giant mole.",
									long		: "Though the fur is relatively thin, its size alone could let it pass as for a small tent.",
									usable		: false,
									value		: 60},
										
			"Knife"				: {	name		: "Knife",
									plural		: "Knives",
									short		: "A simple knife.",
									long		: "You'll have a hard time cutting through just about anything with a blade this dull.",
									value		: 15,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 7] } ] },
			"Shortsword"		: {	name		: "Shortsword",
									plural		: "Shortswords",
									short		: "A short sword... or a long dagger.",
									long		: "Either-or, it's an effective weapon with a good balance of qualities from both swords and daggers.",
									value		: 25,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 13] } ] },
			"Sword" 			: {	name		: "Sword",
									plural		: "Swords",
									short		: "A basic sword.",
									long		: "Standard issue for new recruits of the town guard. No frills and nothing fancy, just a simple sword.",
									value		: 20,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 10] }] },
			"Falchion" 			: {	name		: "Falchion",
									plural		: "Falchions",
									short		: "A sword with a keen, slightly curved edge meant for slashing.",
									long		: "The broad single-edged blade on this sword is reminiscent of distant eastern influences. As a result, it had previously been attributed to those possessing more agility than strength.",
									value		: 30,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 15] }] },
			"Rapier" 			: {	name		: "Rapier",
									plural		: "Rapiers",
									short		: "A slender sword most notable for its elegant blade and crossguard.",
									long		: "Fencers have been difficult to come across as of late, but those who retain their discipline are not to be trifled with. A thrusting weapon not meant for those with leaden feet.",
									value		: 40,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 20] }] },
			"Sabre" 			: {	name		: "Sabre",
									plural		: "Sabres",
									short		: "A heavy sword with a curved, single-edged blade.",
									long		: "The sabre is commonly used among both foot soldiers and cavalry alike. It is favored for its reliability as an effective slashing weapon while its sizeable hand guard provides adequate protection against foes as well.",
									value		: 65,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 30] }] },
			"Cutlass" 			: {	name		: "Cutlass",
									plural		: "Cutlasses",
									short		: "A short, broad slashing sword.",
									long		: "Popularized by its use out at sea, the cutlass is a heavy blade whose strength belies its size. Those of seafaring towns know it as the weapon of choice for pirates who seek to plunder their bountiful booty.",
									value		: 110,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 45] }] },
			"Katana" 			: {	name		: "Katana",
									plural		: "Katanas",
									short		: "A long curved blade with an exquisitely fine edge.",
									long		: "Originating from the far east, the katana requires extensive study in order utilize effectively. Legend has it that only the most skilled of warriors, tempered and disciplined by a lifetime of grueling training, were allowed to even wield this weapon.",
									value		: 140,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 55] }] },
			"Flamberge" 		: {	name		: "Flamberge",
									plural		: "Flamberges",
									short		: "A powerful sword with a characteristically undulating and wavy blade.",
									long		: "The flamberge, or flame blade, gets its name from its uniquely flame-like blade. Not only is this an effective, versatile weapon, the waves in its blade are also known to cause unpleasant vibrations to assailants when used to parry attacks. More recently though, it has been noted that such vibrations have become more distracting than unpleasant.",
									value		: 200,
									equip		: true,
									weapon		: true,
									effects		: [function():Array { return ["atk", 70] }] },
			"Lance" 			: {	name		: "Lance",
									plural		: "Lances",
									short		: "A common type of spear meant to be used on horseback.",
									long		: "Typically given to cavalry for charging at enemy force. Given its weight and unwieldy size, lances are difficult to use on foot. However, given recent trends, some adventurers seem to prefer weapons that can attest to their own size.",
									value		: 125,
									equip		: true,
									weapon		: true,
									twoHanded	: true,
									effects		: [function():Array { return ["atk", 50] }] },
			"Halberd" 			: {	name		: "Halberd",
									plural		: "Halberds",
									short		: "A spear with a large axe-like blade at the end.",
									long		: "As a result, this weapon is considerably heavier than most other spears, much like those who seem to be using it these days. Commonly used in regimental combat, the halberd is mostly found in the hands of foot soldiers due to its long reach.",
									value		: 210,
									equip		: true,
									weapon		: true,
									twoHanded	: true,
									effects		: [function():Array { return ["atk", 90] }] },
			"Axe" 				: {	name		: "Axe",
									plural		: "Axes",
									short		: "A simple axe.",
									long		: "A basic axe with a long handle meant for two hands.",
									value		: 35,
									equip		: true,
									weapon		: true,
									twoHanded	: true,
									effects		: [function():Array { return ["atk", 13] }] },
			"Flail" 			: {	name		: "Flail",
									plural		: "Flails",
									short		: "A spiked metal ball affixed to a handle by a chain.",
									long		: "While a brutal and intimidating weapon for bludgeoning, the flail can easily backfire if used without caution. The chain is longer than one might think, and a clumsy warrior may find a painful surprise waiting for him at the end of his swing.",
									value		: 45,
									equip		: true,
									weapon		: true,
									twoHanded	: true,
									effects		: [function():Array { return ["atk", 20] }] },
											
			"Hat"				: {	name		: "Hat",
									plural		: "Hats",
									short		: "A simple hat.",
									long		: "It's better than nothing.",
									value		: 15,
									equip		: true,
									head		: true,
									effects		: [function():Array { return ["def", 1] }] },
			"Cotton Shirt"		: {	name		: "Cotton Shirt",
									plural		: "Cotton Shirts",
									short		: "A simple shirt.",
									long		: "Normal, day-to-day clothing. It provides little means of defense.",
									value		: 10,
									equip		: true,
									torso		: true,
									effects		: [function():Array { return ["def", 3] }] },
			"Denim Pants"		: {	name		: "Denim Pants",
									plural		: "Denim Pants",
									short		: "A simple pair of pants.",
									long		: "Nothing too special about jeans.",
									value		: 20,
									equip		: true,
									legs		: true,
									effects		: [function():Array { return ["def", 2] }] },
			"Shoes"				: {	name		: "Shoes",
									plural		: "Shoes",
									short		: "A simple pair of shoes.",
									long		: "Can't leave home without 'em!",
									value		: 25,
									equip		: true,
									feet		: true,
									effects		: [function():Array { return ["def", 5] }] },
			"Guard"				: {	name		: "Guard",
									plural		: "Guards",
									short		: "A simple shield.",
									long		: "Effectively defends against incoming attacks.",
									value		: 40,
									equip		: true,
									shield		: true,
									effects		: [function():Array { return ["def", 10] }] }
		};
		
		public static function getItem(name:String):Item {
			return new Item(definitions[name]);
		}
	}
}
