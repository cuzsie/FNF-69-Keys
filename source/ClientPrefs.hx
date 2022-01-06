package;

import flixel.FlxG;
import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

class ClientPrefs {
	//TO DO: Redo ClientPrefs in a way that isn't too stupid
	public static var downScroll:Bool = false;
	public static var middleScroll:Bool = false;
	public static var showFPS:Bool = true;
	public static var flashing:Bool = true;
	public static var globalAntialiasing:Bool = true;
	public static var noteSplashes:Bool = true;
	public static var lowQuality:Bool = false;
	public static var framerate:Int = 120;
	public static var cursing:Bool = true;
	public static var violence:Bool = true;
	public static var camZooms:Bool = true;
	public static var hideHud:Bool = false;
	public static var noteOffset:Int = 0;
	public static var arrowHSV:Array<Array<Int>> = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]];
	public static var imagesPersist:Bool = false;
	public static var ghostTapping:Bool = true;
	public static var hideTime:Bool = false;

	public static var defaultKeys:Array<FlxKey> = [
		A, LEFT,			//Note Left
		S, DOWN,			//Note Down
		W, UP,				//Note Up
		D, RIGHT,			//Note Right

		A, LEFT,			//UI Left
		S, DOWN,			//UI Down
		W, UP,				//UI Up
		D, RIGHT,			//UI Right

		NONE, NONE,			//Reset
		SPACE, ENTER,		//Accept
		BACKSPACE, ESCAPE,	//Back
		ENTER, ESCAPE,		//Pause

		S, NONE,
		D, NONE,
		F, NONE,
		SPACE, NONE,
		J, LEFT,
		K, DOWN,
		L, RIGHT,

		A, NONE,
		S, NONE,
		D, NONE,
		F, NONE,
		SPACE, NONE,
		H, NONE,
		J, NONE,
		K, NONE,
		L, NONE,

		//69 keys (kill me)

		ONE, NONE, // 1
		TWO, NONE, // 2
		THREE, NONE, // 3
		FOUR, NONE, // 4
		FIVE, NONE, // 5
		SIX, NONE, // 6
		SEVEN, NONE, // 7
		EIGHT, NONE, // 8
		NINE, NONE, // 9
		ZERO, NONE, // 10
		TAB, NONE, // 11
		Q, NONE, // 12
		W, NONE, // 13
		E, NONE, // 14
		R, NONE, // 15
		T, NONE, // 16
		Y, NONE, // 17
		U, NONE, // 18
		I, NONE, // 19
		O, NONE, // 20
		P, NONE, // 21
		LBRACKET, NONE, // 22
		RBRACKET, NONE, // 23
		BACKSLASH, NONE, // 24
		A, NONE, // 25
		S, NONE, // 26
		D, NONE, // 27
		F, NONE, // 28 
		G, NONE, // 29
		H, NONE, // 30
		J, NONE, // 31
		K, NONE, // 32
		L, NONE, // 33
		SEMICOLON, NONE, // 34
		QUOTE, NONE, // 35
		Z, NONE, // 36
		X, NONE, // 37
		C, NONE, // 38
		V, NONE, // 39
		B, NONE, // 40
		N, NONE, // 41
		M, NONE, // 42
		COMMA, NONE, // 43
		PERIOD, NONE, // 44
		SLASH, NONE, // 45
		NUMPADZERO, NONE, // 46
		NUMPADONE, NONE, // 47
		NUMPADTWO, NONE, // 48
		NUMPADTHREE, NONE, // 49
		NUMPADFOUR, NONE, // 50
		NUMPADFIVE, NONE, // 51
		NUMPADSIX, NONE, // 52
		NUMPADSEVEN, NONE, // 53
		NUMPADEIGHT, NONE, // 54
		NUMPADNINE, NONE, // 55
		LEFT, NONE, // 56
		DOWN, NONE, // 57
		UP, NONE, // 58
		RIGHT, NONE, // 59
		F1, NONE, // 60
		F2, NONE, // 61
		F3, NONE, // 62
		F4, NONE, // 63
		F5, NONE, // 64
		F6, NONE, // 65
		F7, NONE, // 66
		F8, NONE, // 67
		F9, NONE, // 68
		F10, NONE // 69
	];
	//Every key has two binds, these binds are defined on defaultKeys! If you want your control to be changeable, you have to add it on ControlsSubState (inside OptionsState)'s list
	public static var keyBinds:Array<Dynamic> = [
		//Key Bind, Name for ControlsSubState
		[Control.NOTE_LEFT, 'Left'],
		[Control.NOTE_DOWN, 'Down'],
		[Control.NOTE_UP, 'Up'],
		[Control.NOTE_RIGHT, 'Right'],

		[Control.UI_LEFT, 'Left '],		//Added a space for not conflicting on ControlsSubState
		[Control.UI_DOWN, 'Down '],		//Added a space for not conflicting on ControlsSubState
		[Control.UI_UP, 'Up '],			//Added a space for not conflicting on ControlsSubState
		[Control.UI_RIGHT, 'Right '],	//Added a space for not conflicting on ControlsSubState

		[Control.RESET, 'Reset'],
		[Control.ACCEPT, 'Accept'],
		[Control.BACK, 'Back'],
		[Control.PAUSE, 'Pause'],

		[Control.A1, 'Left 1'],
		[Control.A2, 'Up  '],
		[Control.A3, 'Right 1'],
		[Control.A4, 'Center'], 
		[Control.A5, 'Left 2'],
		[Control.A6, 'Down  '],
		[Control.A7, 'Right 2'],

		[Control.B1, 'Left 1 '],
		[Control.B2, 'Down 1'],
		[Control.B3, 'Up 1'],
		[Control.B4, 'Right 1 '],
		[Control.B5, 'Center '],
		[Control.B6, 'Left 2 '],
		[Control.B7, 'Down 2'],
		[Control.B8, 'Up 2'],
		[Control.B9, 'Right 2 '],




		// your gonna have a FUN time!
		[Control.SIX_1, '69 Key 1 '],
		[Control.SIX_2, '69 Key 2 '],
		[Control.SIX_3, '69 Key 3 '],
		[Control.SIX_4, '69 Key 4 '],
		[Control.SIX_5, '69 Key 5 '],
		[Control.SIX_6, '69 Key 6 '],
		[Control.SIX_7, '69 Key 7 '],
		[Control.SIX_8, '69 Key 8 '],
		[Control.SIX_9, '69 Key 9 '],
		[Control.SIX_10, '69 Key 10 '],
		[Control.SIX_11, '69 Key 11 '],
		[Control.SIX_12, '69 Key 12 '],
		[Control.SIX_13, '69 Key 13 '],
		[Control.SIX_14, '69 Key 14 '],
		[Control.SIX_15, '69 Key 15 '],
		[Control.SIX_16, '69 Key 16 '],
		[Control.SIX_17, '69 Key 17 '],
		[Control.SIX_18, '69 Key 18 '],
		[Control.SIX_19, '69 Key 19 '],
		[Control.SIX_20, '69 Key 20 '],
		[Control.SIX_21, '69 Key 21 '],
		[Control.SIX_22, '69 Key 22 '],
		[Control.SIX_23, '69 Key 23 '],
		[Control.SIX_24, '69 Key 24 '],
		[Control.SIX_25, '69 Key 25 '],
		[Control.SIX_26, '69 Key 26 '],
		[Control.SIX_27, '69 Key 27 '],
		[Control.SIX_28, '69 Key 28 '],
		[Control.SIX_29, '69 Key 29 '],
		[Control.SIX_30, '69 Key 30 '],
		[Control.SIX_31, '69 Key 31 '],
		[Control.SIX_32, '69 Key 32 '],
		[Control.SIX_33, '69 Key 33 '],
		[Control.SIX_34, '69 Key 34 '],
		[Control.SIX_35, '69 Key 35 '],
		[Control.SIX_36, '69 Key 36 '],
		[Control.SIX_37, '69 Key 37 '],
		[Control.SIX_38, '69 Key 38 '],
		[Control.SIX_39, '69 Key 39 '],
		[Control.SIX_40, '69 Key 40 '],
		[Control.SIX_41, '69 Key 41 '],
		[Control.SIX_42, '69 Key 42 '],
		[Control.SIX_43, '69 Key 43 '],
		[Control.SIX_44, '69 Key 44 '],
		[Control.SIX_45, '69 Key 45 '],
		[Control.SIX_46, '69 Key 46 '],
		[Control.SIX_47, '69 Key 47 '],
		[Control.SIX_48, '69 Key 48 '],
		[Control.SIX_49, '69 Key 49 '],
		[Control.SIX_50, '69 Key 50 '],
		[Control.SIX_51, '69 Key 51 '],
		[Control.SIX_52, '69 Key 52 '],
		[Control.SIX_53, '69 Key 53 '],
		[Control.SIX_54, '69 Key 54 '],
		[Control.SIX_55, '69 Key 55 '],
		[Control.SIX_56, '69 Key 56 '],
		[Control.SIX_57, '69 Key 57 '],
		[Control.SIX_58, '69 Key 58 '],
		[Control.SIX_59, '69 Key 59 '],
		[Control.SIX_60, '69 Key 60 '],
		[Control.SIX_61, '69 Key 61 '],
		[Control.SIX_62, '69 Key 62 '],
		[Control.SIX_63, '69 Key 63 '],
		[Control.SIX_64, '69 Key 64 '],
		[Control.SIX_65, '69 Key 65 '],
		[Control.SIX_66, '69 Key 66 '],
		[Control.SIX_67, '69 Key 67 '],
		[Control.SIX_68, '69 Key 68 '],
		[Control.SIX_69, '69 Key 69 ']
	];
	public static var lastControls:Array<FlxKey> = defaultKeys.copy();

	public static function saveSettings() {
		FlxG.save.data.downScroll = downScroll;
		FlxG.save.data.middleScroll = middleScroll;
		FlxG.save.data.showFPS = showFPS;
		FlxG.save.data.flashing = flashing;
		FlxG.save.data.globalAntialiasing = globalAntialiasing;
		FlxG.save.data.noteSplashes = noteSplashes;
		FlxG.save.data.lowQuality = lowQuality;
		FlxG.save.data.framerate = framerate;
		FlxG.save.data.cursing = cursing;
		FlxG.save.data.violence = violence;
		FlxG.save.data.camZooms = camZooms;
		FlxG.save.data.noteOffset = noteOffset;
		FlxG.save.data.hideHud = hideHud;
		FlxG.save.data.arrowHSV = arrowHSV;
		FlxG.save.data.imagesPersist = imagesPersist;
		FlxG.save.data.ghostTapping = ghostTapping;
		FlxG.save.data.hideTime = hideTime;

		var achieves:Array<String> = [];
		for (i in 0...Achievements.achievementsUnlocked.length) {
			if(Achievements.achievementsUnlocked[i][1]) {
				achieves.push(Achievements.achievementsUnlocked[i][0]);
			}
		}
		FlxG.save.data.achievementsUnlocked = achieves;
		FlxG.save.data.henchmenDeath = Achievements.henchmenDeath;
		FlxG.save.flush();

		var save:FlxSave = new FlxSave();
		save.bind('controls', 'shaggymod'); //Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		save.data.customControls = lastControls;
		save.flush();
		FlxG.log.add("Settings saved!");
	}

	public static function loadPrefs() {
		if(FlxG.save.data.downScroll != null) {
			downScroll = FlxG.save.data.downScroll;
		}
		if(FlxG.save.data.middleScroll != null) {
			middleScroll = FlxG.save.data.middleScroll;
		}
		if(FlxG.save.data.showFPS != null) {
			showFPS = FlxG.save.data.showFPS;
			if(Main.fpsVar != null) {
				Main.fpsVar.visible = showFPS;
			}
		}
		if(FlxG.save.data.flashing != null) {
			flashing = FlxG.save.data.flashing;
		}
		if(FlxG.save.data.globalAntialiasing != null) {
			globalAntialiasing = FlxG.save.data.globalAntialiasing;
		}
		if(FlxG.save.data.noteSplashes != null) {
			noteSplashes = FlxG.save.data.noteSplashes;
		}
		if(FlxG.save.data.lowQuality != null) {
			lowQuality = FlxG.save.data.lowQuality;
		}
		if(FlxG.save.data.framerate != null) {
			framerate = FlxG.save.data.framerate;
			if(framerate > FlxG.drawFramerate) {
				FlxG.updateFramerate = framerate;
				FlxG.drawFramerate = framerate;
			} else {
				FlxG.drawFramerate = framerate;
				FlxG.updateFramerate = framerate;
			}
		}
		if(FlxG.save.data.camZooms != null) {
			camZooms = FlxG.save.data.camZooms;
		}
		if(FlxG.save.data.hideHud != null) {
			hideHud = FlxG.save.data.hideHud;
		}
		if(FlxG.save.data.noteOffset != null) {
			noteOffset = FlxG.save.data.noteOffset;
		}
		if(FlxG.save.data.arrowHSV != null) {
			arrowHSV = FlxG.save.data.arrowHSV;
		}
		if(FlxG.save.data.imagesPersist != null) {
			imagesPersist = FlxG.save.data.imagesPersist;
			FlxGraphic.defaultPersist = ClientPrefs.imagesPersist;
		}
		if(FlxG.save.data.ghostTapping != null) {
			ghostTapping = FlxG.save.data.ghostTapping;
		}
		if(FlxG.save.data.hideTime != null) {
			hideTime = FlxG.save.data.hideTime;
		}

		var save:FlxSave = new FlxSave();
		save.bind('controls', 'shaggymod');
		if(save != null && save.data.customControls != null) {
			reloadControls(save.data.customControls);
		}

		if (FlxG.save.data.language == null) FlxG.save.data.languaje = 0;

		FlxG.updateFramerate = framerate;
		FlxG.drawFramerate = framerate;

		FlxG.save.data.noteSkin = [0, 0, 0, 0];
		if (FlxG.save.data.s_FirstBoot == null)
		{
			trace('yasss');
			reloadControls(defaultKeys);
			FlxG.save.data.s_keyWarning = true;
			FlxG.save.data.s_FirstBoot = false;
			FlxG.save.flush();
			saveSettings();
		}
	}

	public static function reloadControls(newKeys:Array<FlxKey>) {
		ClientPrefs.removeControls(ClientPrefs.lastControls);
		ClientPrefs.lastControls = newKeys.copy();
		ClientPrefs.loadControls(ClientPrefs.lastControls);
	}

	private static function removeControls(controlArray:Array<FlxKey>) {
		for (i in 0...keyBinds.length) {
			var controlValue:Int = i*2;
			var controlsToRemove:Array<FlxKey> = [];
			for (j in 0...2) {
				if(controlArray[controlValue+j] != NONE) {
					controlsToRemove.push(controlArray[controlValue+j]);
				}
			}
			if(controlsToRemove.length > 0) {
				PlayerSettings.player1.controls.unbindKeys(keyBinds[i][0], controlsToRemove);
			}
		}
	}
	private static function loadControls(controlArray:Array<FlxKey>) {
		for (i in 0...keyBinds.length) 
		{
			var controlValue:Int = i*2;
			var controlsToAdd:Array<FlxKey> = [];

			if (keyBinds[i] == null)
			{
				controlsToAdd.push(defaultKeys[i]);
			}
			for (j in 0...2) {
				if(controlArray[controlValue+j] != NONE) 
				{
					controlsToAdd.push(controlArray[controlValue+j]);
				}
			}
			if(controlsToAdd.length > 0) {
				PlayerSettings.player1.controls.bindKeys(keyBinds[i][0], controlsToAdd);
			}
		}
	}
}