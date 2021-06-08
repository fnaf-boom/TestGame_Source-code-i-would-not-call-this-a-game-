package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import haxe.xml.Printer;

class PlayState extends FlxState
{
	var text:FlxText;
	var sprite:FlxSprite;

	override public function create()
	{
		super.create();
		sprite = new FlxSprite();
		sprite.loadGraphic(AssetPaths.Lil_boi__png);
		sprite.x = 150;
		sprite.y = 150;
		trace("Hello Player!");

		text = new FlxText(0, 0, FlxG.width, "Welcome! Enjoy!", 64);
		text.setFormat(null, 64, FlxColor.RED, FlxTextAlign.CENTER);
		add(text);
		trace("Wassup text");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.pressed.A || FlxG.keys.pressed.LEFT)
			sprite.x--;
		if (FlxG.keys.pressed.D || FlxG.keys.pressed.RIGHT)
			sprite.x++;
		if (FlxG.keys.pressed.W || FlxG.keys.pressed.UP)
			sprite.y--;
		if (FlxG.keys.pressed.S || FlxG.keys.pressed.DOWN)
			sprite.y++;

		add(sprite);

		text.y++;
		if (text.y > FlxG.height)
			text.y = 0 - 145;
	}
}
