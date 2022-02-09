package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"HEY! To play this mod, you need a full-sized keyboard.\n"
			+ "You can play it with a smaller keyboard, but you cant play all the keys correctly\n\n"
			+ "Press ENTER key to continue",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ENTER)
			FlxG.switchState(new MainMenuState());

		super.update(elapsed);
	}
}
