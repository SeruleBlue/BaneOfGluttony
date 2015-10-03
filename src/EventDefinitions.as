package  {
	
	public class EventDefinitions {
		//{ Blade and Belly
		public static const BLADE_AND_BELLY:XML =
<event name="Blade and Belly" repeatable="false">
	<dialog id="0">
		<text check="loc:2,3">
As you step over the rough cobblestone, you hear a quiet sobbing from around the corner. Do you approach the voice?
		</text>
		<options>
			<option id="1">Yes</option>
			<option id="3">No</option>
		</options>
	</dialog>
	<dialog id="1">
		<text check="loc:2,3">
Whomever it is that is crying, they need help. You rush around the corner and nearly collide with a rather plump mouse as you do so. She gasps momentarily, before ducking her head down and wiping the tears from her snout.
"Please forgive my good [sir/madam]," she starts, "It’s just... I’m so hungry. I have had nothing to eat since second lunch, and I fear I may die of hunger!" Looking over the woman, you note that she isn’t wasting away in any sense of the word. Rather, she appears to be quite overweight! Her hips are starting to fray the fabric of her plain dress, her belly seems to be stretching the threads to their limit, as you can see the downy white fur peaking through the strained garment. Finally, it appears that her breasts have made an impromptu window of the woman’s torso. "If it isn’t too much trouble... could you bring me some food? I don’t have money for the restaurant, but I have just enough for you to buy a simple weapon. There are an enormous number of boars that have cropped up just to the east of the city. If you could bring me five haunches of pork, I’d be ever so grateful!" Her stomach grumbles, and she adds, "The faster, the better!"
Do you accept?
		</text>
		<options>
			<option id="2" action="addQuest;gold:+15">Yes</option>
			<option id="4">No</option>
		</options>
	</dialog>
	<dialog id="2" end="true">
		<text check="loc:2,3" goto="5">
She shakes your hand, thanking you heartily, the various fatty bits of her jiggling furiously as she does so. "Oh... I’m Shara, by the way." She blushes slightly before offering you a handful of gold pieces. "The blacksmith is on the [direction] side of town, just [direction] of the [location]. This should be enough to buy a simple weapon to help you hunt. Thanks again!"
		</text>
		<log>Shara's been loitering by the restaurant, starving, and apparently unable to afford any food for herself, but she gave you some gold to buy a weapon and hunt 5 pork haunches for her. Head over to the blacksmith and arm yourself against the wild boars outside town.</log>
	</dialog>
	<dialog id="3" end="true">
		<text check="loc:2,3">
You decide that you have enough problems of your own without having to deal with another’s at the moment. You continue on your way, the sobbing slowly growing fainter as you leave the corner.
		</text>
	</dialog>
	<dialog id="4" end="true">
		<text check="loc:2,3">
She looks rather forlorn, her stomach growling again as she clutches it. "Well, thanks anyway. Have a good day, sir." She wipes her wet snout one more time before ambling away, quickly turning the corner as she leaves.
		</text>
	</dialog>
	
	<dialog id="5" end="true">
		<text check="loc:2,3" goto="5">
As you walk around a corner you come across Shara, still quietly sobbing and holding her stomach, even as she eats what must not be her first meal of today. She whimpers a little as she notices you, but tries to smile, hopeful.
You really should go back to finding those haunches for her.
		</text>
		<text check="loc:2,3;item:Pork Haunch-5" action="dropItem:Pork Haunch-5;gold:+3;exp:25;rmvQuest" override="true">
Wandering through the streets of the city, it takes some time, and a bit of asking after her, but you finally find Shara as she is resting on a bench, next to the street. She perks up as she sees you, her eyes drawn to your bulging pack. She jumps up, rushing forward to greet you.
"Oh, welcome back!" She smiles, her face lighting up, though one hand seems to be constantly on her expansive gut. Her smile only widens as you give her the haunches of pork. "You’re a life saver, [sir/madam]." She suddenly lurches forward, wrapping her soft arms around you and pulling you into a warm hug. "Unfortunately, I can only offer you my friendship and a few more gold pieces, but thank you! If I see you again, maybe I can hire you again! I’ve been so hungry these last few weeks, I wonder why..." She looks concerned for a moment before the bloody smell of the haunches reach her. "Whatever it is, I need to get these cooked! Have a good day!" Quickly handing you another handful of gold, the rotund mouse ambles off, the haunches weighing her weak frame down as she hobbles away, her wide hips sashaying pleasantly as she does so.
		</text>
	</dialog>
</event>
		//}
		
		//{ Ano 1
		public static const ANO_1:XML =
<event name="Ano 1" repeatable="false">
	<dialog id="0">
		<text check="loc:3,6" end="true">
As you make your way along the side streets of Staphshire you are perturbed by a ruckus in a nearby shop.
"Stop! Thief!" an old man screams as a definetively shady character jumps out of an open window.
Landing right in front of you, the accused thief is covered in a long dark cloak, which seems to hide several bulky objects, and dons a mask that makes clear to everyone his profession.
"Someone catch that ruffian!" the old man screams again, to which the thief responds by immediately scampering into an alley.
		</text>
		<options>
			<option id="1">Follow him</option>
			<option id="2">Talk to the man</option>
			<option id="3">Mind your own business</option>
		</options>
	</dialog>
</event>
		//}
	}
}