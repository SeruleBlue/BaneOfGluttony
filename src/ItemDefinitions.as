﻿package  {
	import flash.utils.ByteArray;
	
	public class ItemDefinitions {
		public static const definitions:Object = {
			"Red Potion"		: new Item({name		: "Red Potion",
										   	short		: "Recovers 50 health.",
											long		: "A red potion with basic healing properties.",
											value		: 10,
											health		: 50,
											capacity	: 10}),
			"Orange Potion" 	: new Item({name		: "Orange Potion",
											short		: "Recovers 100 health.",
											long		: "An orange potion with standard healing properties.",
											value		: 25,
											health		: 100,
											capacity	: 25}),
			"Yellow Potion" 	: new Item({name		: "Yellow Potion",
									    	short		: "Recovers 250 health.",
											long		: "A yellow potion with potent healing properties.",
											value		: 50,
											health		: 250,
											capacity	: 50}),
			"White Potion" 		: new Item({name		: "White Potion",
											short		: "Recovers 500 health.",
											long		: "A white potion with powerful healing properties.",
											value		: 100,
											health		: 500,
											capacity	: 100}),
			"Blue Potion" 		: new Item({name		: "Blue Potion",
											short		: "Restores 50 mana.",
											long		: "A blue potion with basic regenerative properties.",
											value		: 50,
											mana		: 50,
											capacity	: 25}),
			"Violet Potion" 	: new Item({name		: "Violet Potion",
											short		: "Restores 250 mana.",
											long		: "A violet potion with potent regenerative properties.",
											value		: 100,
											mana		: 250,
											capacity	: 100}),
											
			"Mutton Loin"		: new Item({name		: "Mutton Loin",
										   	short		: "An enormous cut of meat taken from below a sheep's entire rib cage.",
										   	long		: "This heavily marbled slab of meat has been thick-cut and seasoned to perfection before being seared and grilled medium rare. Normally, the loin is a very lean cut. However, the current state of rampant vegetation has left the fields a veritable buffet for sheep and other livestock, leaving them fattened to absurd proportions.",
										   	value		: 15,
											//atk			: 5,
										   	capacity	: 50}),
			"Roast Chicken"		: new Item({name		: "Roast Chicken",
										   	short		: "A whole roast chicken.",
										   	long		: "Naturally a lean meat, this chicken, more akin to a turkey and big enough to be served on a shield, has seen better days. It has been baked until golden brown with a blend of exotic herbs and spices fused into its flesh that permeates a rich, savory aroma. The skin was basted in the chicken's very own juices, leaving the surface crunchy and gleaming.",
										   	value		: 25,
											//atk			: 10,
										   	capacity	: 80}),
										
			"Knife"				: new Item({name		: "Knife",
											short		: "ATK+7\nA simple knife.",
											long		: "You'll have a hard time cutting through just about anything with a blade this dull.",
											value		: 15,
											equip		: true,
											weapon		: true,
											atk			: 7}),
			"Sword" 			: new Item({name		: "Sword",
							   				short		: "ATK+10\nA basic sword.",
											long		: "Standard issue for new recruits of the town guard. No frills and nothing fancy, just a simple sword.",
											value		: 20,
											equip		: true,
											weapon		: true,
											atk			: 10}),
			"Falchion" 			: new Item({name		: "Falchion",
							   				short		: "ATK+15\nA sword with a keen, slightly curved edge meant for slashing.",
											long		: "The broad single-edged blade on this sword is reminiscent of distant eastern influences. As a result, it had previously been attributed to those possessing more agility than strength.",
											value		: 30,
											equip		: true,
											weapon		: true,
											atk			: 15}),
			"Rapier" 			: new Item({name		: "Rapier",
							   				short		: "ATK+20\nA slender sword most notable for its elegant blade and crossguard.",
											long		: "Fencers have been difficult to come across as of late, but those who retain their discipline are not to be trifled with. A thrusting weapon not meant for those with leaden feet.",
											value		: 40,
											equip		: true,
											weapon		: true,
											atk			: 20}),
			"Sabre" 			: new Item({name		: "Sabre",
							   				short		: "ATK+30\nA heavy sword with a curved, single-edged blade.",
											long		: "The sabre is commonly used among both foot soldiers and cavalry alike. It is favored for its reliability as an effective slashing weapon while its sizeable hand guard provides adequate protection against foes as well.",
											value		: 65,
											equip		: true,
											weapon		: true,
											atk			: 30}),
			"Cutlass" 			: new Item({name		: "Cutlass",
							   				short		: "ATK+45\nA short, broad slashing sword.",
											long		: "Popularized by its use out at sea, the cutlass is a heavy blade whose strength belies its size. Those of seafaring towns know it as the weapon of choice for pirates who seek to plunder their bountiful booty.",
											value		: 110,
											equip		: true,
											weapon		: true,
											atk			: 45}),
			"Katana" 			: new Item({name		: "Katana",
							   				short		: "ATK+55\nA long curved blade with an exquisitely fine edge.",
											long		: "Originating from the far east, the katana requires extensive study in order utilize effectively. Legend has it that only the most skilled warriors, tempered and disciplined by a lifetime of grueling training, were allowed to even wield this weapon.",
											value		: 140,
											equip		: true,
											weapon		: true,
											atk			: 55}),
			"Flamberge" 		: new Item({name		: "Flamberge",
							   				short		: "ATK+70\nA powerful sword with a characteristically undulating and wavy blade.",
											long		: "The flamberge, or flame blade, gets its name from its uniquely flame-like blade. Not only is this an effective, versatile weapon, the waves in its blade are also known to cause unpleasant vibrations to assailants when used to parry attacks. More recently though, it has been noted that such vibrations have become more distracting than unpleasant.",
											value		: 200,
											equip		: true,
											weapon		: true,
											atk			: 70}),
			"Lance" 			: new Item({name		: "Lance",
							   				short		: "ATK+50\nA common type of spear meant to be used on horseback.",
											long		: "Typically given to cavalry for charging at enemy force. Given its weight and unwieldy size, lances are difficult to use on foot. However, given recent trends, some adventurers seem to prefer weapons that can attest to their own size.",
											value		: 125,
											equip		: true,
											weapon		: true,
											twoHanded	: true,
											atk			: 50}),
			"Halberd" 			: new Item({name		: "Halberd",
							   				short		: "ATK+90\nA spear with a large axe-like blade at the end.",
											long		: "As a result, this weapon is considerably heavier than most other spears, much like those who seem to be using it these days. Commonly used in regimental combat, the halberd is mostly found in the hands of foot soldiers due to its long reach.",
											value		: 210,
											equip		: true,
											weapon		: true,
											twoHanded	: true,
											atk			: 90}),
			"Axe" 				: new Item({name		: "Axe",
							   				short		: "ATK+13\nA simple axe.",
											long		: "A basic axe with a long handle meant for two hands.",
											value		: 35,
											equip		: true,
											weapon		: true,
											twoHanded	: true,
											atk			: 13}),
			"Flail" 			: new Item({name		: "Flail",
							   				short		: "ATK+20\nA spiked metal ball affixed to a handle by a chain.",
											long		: "While a brutal and intimidating weapon for bludgeoning, the flail can easily backfire if used without caution. The chain is longer than one might think, and a clumsy warrior may find a painful surprise waiting for him at the end of his swing.",
											value		: 45,
											equip		: true,
											weapon		: true,
											twoHanded	: true,
											atk			: 20}),
											
			"Hat"				: new Item({name		: "Hat",
										   	short		: "DEF+1\nA simple hat.",
											long		: "It's better than nothing.",
											value		: 15,
											equip		: true,
											head		: true,
											def			: 1}),
			"Cotton Shirt"		: new Item({name		: "Cotton Shirt",
										   	short		: "DEF+3\nA simple shirt.",
											long		: "Normal, day-to-day clothing. It provides little means of defense.",
											value		: 10,
											equip		: true,
											torso		: true,
											def			: 3}),
			"Denim Pants"		: new Item({name		: "Denim Pants",
										   	short		: "DEF+2\nA simple pair of pants.",
											long		: "Nothing too special about jeans.",
											value		: 20,
											equip		: true,
											legs		: true,
											def			: 2}),
			"Shoes"				: new Item({name		: "Shoes",
										   	short		: "DEF+5\nA simple pair of shoes.",
											long		: "Can't leave home without 'em!",
											value		: 25,
											equip		: true,
											feet		: true,
											def			: 5}),
			"Guard"				: new Item({name		: "Guard",
										   	short		: "DEF+10\nA simple shield.",
											long		: "Effectively defends against incoming attacks.",
											value		: 40,
											equip		: true,
											shield		: true,
											def			: 10})
		};
		
		public static function getItem(name:String):Item {
			var item:Item = definitions[name];
			return clone(item);
		}
		
		public static function clone(item:Item):Item {
			var copier:ByteArray = new ByteArray();
			copier.writeObject(item);
			copier.position = 0;
			return copier.readObject() as Item;
		}
	}
}