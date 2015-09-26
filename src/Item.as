﻿package  {
	
	public class Item {
		public var name:String = "Item";
		public var short:String = "Short description";
		public var long:String = "Long description";
		public var wpnText:String = "Weapon text";
		public var canDrop:Boolean = true;
		public var equip:Boolean = false;
		public var count:int = 0;
		public var value:int = 0;
		
		public var twoHanded:Boolean = false;
		public var head:Boolean = false;
		public var torso:Boolean = false;
		public var legs:Boolean = false;
		public var feet:Boolean = false;
		public var shield:Boolean = false;
		public var weapon:Boolean = false;
		
		public var effects:Array;						// array of functions that determine added stats
		public var addedStats:Array = [];				// keep track of added derived stats (and use when unproccing)
		public var effectsText:String = "";
		
		//public var effect:Status = new Status({});
		
		public function Item(properties:Object = null) {			
			for (var name:String in properties) {
				if (this.hasOwnProperty(name)) {
					this[name] = properties[name];
				}
			}
		}
		
		public function procEffects(main:Main):void {
			// proc special effects
			if (effects != null && effects.length > 0) {
				addedStats = [];
				//trace("[Item] " + name + " has special effects!");
				for each (var f:Function in effects) {
					var special:Array = f();		// special will be ["nameOfStat", statValueAsInteger]
					//trace("[Item] " + name + " procs special effect for " + special[0] + " with value " + special[1]);
					changeStat(main, special[0], special[1]);
					if (addedStats.length < effects.length)
						addedStats.push([special[0], special[1]]);
				}
				//trace("[Item] " + name + " finished adding special effects.");
			}
		}
		
		public function deprocEffects(main:Main):void {
			if (addedStats.length == 0)
				return;
			//trace("[Item] " + name + " is deproccing.");
			for each (var special:Array in addedStats) {
				changeStat(main, special[0], -special[1]);
				addedStats.pop();
				//trace("[Item] " + name + " undoes special effect for " + addedStats[i][0] + " with value " + addedStats[i][1]);
			}
			//trace("[Item] " + name + " finished deproccing.");
		}
		
		private function changeStat(main:Main, stat:String, amount:int):void {
			switch (stat) {
				case "currHealth" :
					main.addResource("Health", amount, 0);
					break;
				case "maxHealth" :
					main.addResource("Health", 0, amount);
					break;
				case "currMana" :
					main.addResource("Mana", amount, 0);
					break;
				case "maxMana" :
					main.addResource("Mana", 0, amount);
					break;
				case "currEnergy" :
					main.addResource("Energy", amount, 0);
					break;
				case "maxEnergy" :
					main.addResource("Energy", 0, amount);
					break;
				case "currCapacity" :
					main.addResource("Capacity", amount, 0);
					break;
				case "maxCapacity" :
					main.addResource("Capacity", 0, amount);
					break;
				
				case "str" :
				case "agi" :
				case "vit" :
				case "dex" :
				case "int" :
				case "vor" :
					main.addStat(stat, amount);
					break;
					
				case "atk" :
				case "matk" :
				case "def" :
				case "mdef" :
				case "acc" :
				case "dodge" :
				case "cap" :
					main.player.derivedStats[stat] += amount;
					break;
				
				case "fat" :
					main.addFat(amount);
					break;
				
				default :
					trace("[Item] " + name + " WARNING: " + stat + " not found.");
					break;
			}
		}
		
		public function writeEffects(main:Main):void {
			effectsText = "";
			
			if (effects != null && effects.length > 0) {
				for each (var f:Function in effects) {
					var special:Array = f();
					
					switch (special[0]) {
						case "currHealth" :
							effectsText += "HP+" + special[1] + ", ";
							break;
						case "maxHealth" :
							effectsText += "Max HP+" + special[1] + ", ";
							break;
						case "currMana" :
							effectsText += "MP+" + special[1] + ", ";
							break;
						case "maxMana" :
							effectsText += "Max MP+" + special[1] + ", ";
							break;
						case "currEnergy" :
							effectsText += "EN+" + special[1] + ", ";
							break;
						case "maxEnergy" :
							effectsText += "Max EN+" + special[1] + ", ";
							break;
						case "currCapacity" :
							effectsText += "CAP+" + special[1] + ", ";
							break;
						case "maxCapacity" :
							effectsText += "Max CAP+" + special[1] + ", ";
							break;
						
						case "str" :
						case "agi" :
						case "vit" :
						case "dex" :
						case "int" :
						case "vor" :
						case "atk" :
						case "matk" :
						case "def" :
						case "mdef" :
						case "acc" :
						case "dodge" :
						case "cap" :
						case "fat" :
							effectsText += special[0].toUpperCase() + " + " + special[1] + ", ";
							break;
						
						default :
							trace("[Item] " + name + " WARNING: " + special[0] + " not found.");
							break;
					}
				}
			}
			effectsText = effectsText.slice(0, effectsText.length - 2);
		}
		
		public function toString(state:String):String {
			switch (state) {
				case "appearance" :
					if (effectsText != "")
						return name + "\n" + effectsText + "\n" + short;
					else
						return name + "\n" + short;
				case "appearanceSelected" :
					if (effectsText != "")
						return name + "\n" + effectsText + "\n\n" + short + " " + long;
					else
						return name + "\n" + short + " " + long;
				case "inventory" :
				case "selling" :
					if (effectsText != "")
						return name + " -- x" + count + "\n" + effectsText + "\n" + short;
					else
						return name + " -- x" + count + "\n" + short;
				case "inventorySelected" :
				case "sellingSelected" :
					if (effectsText != "")
						return name + " -- x" + count + "\n\n" + effectsText + "\n" + short + " " + long;
					else
						return name + " -- x" + count + "\n\n" + short + " " + long;
				case "buying" :
					if (effectsText != "")
						return " in inventory\n" + effectsText + "\n" + short + "\n\n";
					else
						return " in inventory\n" + short + "\n\n";
				case "buyingSelected" :
					if (effectsText != "")
						return name + " -- " + value + " gold ea.\n\n" + effectsText + "\n" + short;
					else
						return name + " -- " + value + " gold ea.\n\n" + effectsText + "\n" + short + " " + long;
				default :
					return "";
			}
		}
	}
}
