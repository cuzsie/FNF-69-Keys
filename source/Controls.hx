package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;



/*
	Hey! If your checking the source code for this mod out, just know this might be the worst coded script in the mod
	I had to write out each of these by hand for each of the 69 controls. I reccomend you dont edit this class.
	This code is actually not that great and there is probably a way better way to do this.
*/
#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';

	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';

	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';


	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';

	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';

	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';


	// 69 Key
	var SIX_1 = 's1';
	var SIX_2 = 's2';
	var SIX_3 = 's3';
	var SIX_4 = 's4';
	var SIX_5 = 's5';
	var SIX_6 = 's6';
	var SIX_7 = 's7';
	var SIX_8 = 's8';
	var SIX_9 = 's9';
	var SIX_10 = 's10';
	var SIX_11 = 's11';
	var SIX_12 = 's12';
	var SIX_13 = 's13';
	var SIX_14 = 's14';
	var SIX_15 = 's15';
	var SIX_16 = 's16';
	var SIX_17 = 's17';
	var SIX_18 = 's18';
	var SIX_19 = 's19';
	var SIX_20 = 's20';
	var SIX_21 = 's21';
	var SIX_22 = 's22';
	var SIX_23 = 's23';
	var SIX_24 = 's24';
	var SIX_25 = 's25';
	var SIX_26 = 's26';
	var SIX_27 = 's27';
	var SIX_28 = 's28';
	var SIX_29 = 's29';
	var SIX_30 = 's30';
	var SIX_31 = 's31';
	var SIX_32 = 's32';
	var SIX_33 = 's33';
	var SIX_34 = 's34';
	var SIX_35 = 's35';
	var SIX_36 = 's36';
	var SIX_37 = 's37';
	var SIX_38 = 's38';
	var SIX_39 = 's39';
	var SIX_40 = 's40';
	var SIX_41 = 's41';
	var SIX_42 = 's42';
	var SIX_43 = 's43';
	var SIX_44 = 's44';
	var SIX_45 = 's45';
	var SIX_46 = 's46';
	var SIX_47 = 's47';
	var SIX_48 = 's48';
	var SIX_49 = 's49';
	var SIX_50 = 's50';
	var SIX_51 = 's51';
	var SIX_52 = 's52';
	var SIX_53 = 's53';
	var SIX_54 = 's54';
	var SIX_55 = 's55';
	var SIX_56 = 's56';
	var SIX_57 = 's57';
	var SIX_58 = 's58';
	var SIX_59 = 's59';
	var SIX_60 = 's60';
	var SIX_61 = 's61';
	var SIX_62 = 's62';
	var SIX_63 = 's63';
	var SIX_64 = 's64';
	var SIX_65 = 's65';
	var SIX_66 = 's66';
	var SIX_67 = 's67';
	var SIX_68 = 's68';
	var SIX_69 = 's69';

	var SIX_1_P = 's1-press';
	var SIX_2_P = 's2-press';
	var SIX_3_P = 's3-press';
	var SIX_4_P = 's4-press';
	var SIX_5_P = 's5-press';
	var SIX_6_P = 's6-press';
	var SIX_7_P = 's7-press';
	var SIX_8_P = 's8-press';
	var SIX_9_P = 's9-press';
	var SIX_10_P = 's10-press';
	var SIX_11_P = 's11-press';
	var SIX_12_P = 's12-press';
	var SIX_13_P = 's13-press';
	var SIX_14_P = 's14-press';
	var SIX_15_P = 's15-press';
	var SIX_16_P = 's16-press';
	var SIX_17_P = 's17-press';
	var SIX_18_P = 's18-press';
	var SIX_19_P = 's19-press';
	var SIX_20_P = 's20-press';
	var SIX_21_P = 's21-press';
	var SIX_22_P = 's22-press';
	var SIX_23_P = 's23-press';
	var SIX_24_P = 's24-press';
	var SIX_25_P = 's25-press';
	var SIX_26_P = 's26-press';
	var SIX_27_P = 's27-press';
	var SIX_28_P = 's28-press';
	var SIX_29_P = 's29-press';
	var SIX_30_P = 's30-press';
	var SIX_31_P = 's31-press';
	var SIX_32_P = 's32-press';
	var SIX_33_P = 's33-press';
	var SIX_34_P = 's34-press';
	var SIX_35_P = 's35-press';
	var SIX_36_P = 's36-press';
	var SIX_37_P = 's37-press';
	var SIX_38_P = 's38-press';
	var SIX_39_P = 's39-press';
	var SIX_40_P = 's40-press';
	var SIX_41_P = 's41-press';
	var SIX_42_P = 's42-press';
	var SIX_43_P = 's43-press';
	var SIX_44_P = 's44-press';
	var SIX_45_P = 's45-press';
	var SIX_46_P = 's46-press';
	var SIX_47_P = 's47-press';
	var SIX_48_P = 's48-press';
	var SIX_49_P = 's49-press';
	var SIX_50_P = 's50-press';
	var SIX_51_P = 's51-press';
	var SIX_52_P = 's52-press';
	var SIX_53_P = 's53-press';
	var SIX_54_P = 's54-press';
	var SIX_55_P = 's55-press';
	var SIX_56_P = 's56-press';
	var SIX_57_P = 's57-press';
	var SIX_58_P = 's58-press';
	var SIX_59_P = 's59-press';
	var SIX_60_P = 's60-press';
	var SIX_61_P = 's61-press';
	var SIX_62_P = 's62-press';
	var SIX_63_P = 's63-press';
	var SIX_64_P = 's64-press';
	var SIX_65_P = 's65-press';
	var SIX_66_P = 's66-press';
	var SIX_67_P = 's67-press';
	var SIX_68_P = 's68-press';
	var SIX_69_P = 's69-press';

	var SIX_1_R = 's1-release';
	var SIX_2_R = 's2-release';
	var SIX_3_R = 's3-release';
	var SIX_4_R = 's4-release';
	var SIX_5_R = 's5-release';
	var SIX_6_R = 's6-release';
	var SIX_7_R = 's7-release';
	var SIX_8_R = 's8-release';
	var SIX_9_R = 's9-release';
	var SIX_10_R = 's10-release';
	var SIX_11_R = 's11-release';
	var SIX_12_R = 's12-release';
	var SIX_13_R = 's13-release';
	var SIX_14_R = 's14-release';
	var SIX_15_R = 's15-release';
	var SIX_16_R = 's16-release';
	var SIX_17_R = 's17-release';
	var SIX_18_R = 's18-release';
	var SIX_19_R = 's19-release';
	var SIX_20_R = 's20-release';
	var SIX_21_R = 's21-release';
	var SIX_22_R = 's22-release';
	var SIX_23_R = 's23-release';
	var SIX_24_R = 's24-release';
	var SIX_25_R = 's25-release';
	var SIX_26_R = 's26-release';
	var SIX_27_R = 's27-release';
	var SIX_28_R = 's28-release';
	var SIX_29_R = 's29-release';
	var SIX_30_R = 's30-release';
	var SIX_31_R = 's31-release';
	var SIX_32_R = 's32-release';
	var SIX_33_R = 's33-release';
	var SIX_34_R = 's34-release';
	var SIX_35_R = 's35-release';
	var SIX_36_R = 's36-release';
	var SIX_37_R = 's37-release';
	var SIX_38_R = 's38-release';
	var SIX_39_R = 's39-release';
	var SIX_40_R = 's40-release';
	var SIX_41_R = 's41-release';
	var SIX_42_R = 's42-release';
	var SIX_43_R = 's43-release';
	var SIX_44_R = 's44-release';
	var SIX_45_R = 's45-release';
	var SIX_46_R = 's46-release';
	var SIX_47_R = 's47-release';
	var SIX_48_R = 's48-release';
	var SIX_49_R = 's49-release';
	var SIX_50_R = 's50-release';
	var SIX_51_R = 's51-release';
	var SIX_52_R = 's52-release';
	var SIX_53_R = 's53-release';
	var SIX_54_R = 's54-release';
	var SIX_55_R = 's55-release';
	var SIX_56_R = 's56-release';
	var SIX_57_R = 's57-release';
	var SIX_58_R = 's58-release';
	var SIX_59_R = 's59-release';
	var SIX_60_R = 's60-release';
	var SIX_61_R = 's61-release';
	var SIX_62_R = 's62-release';
	var SIX_63_R = 's63-release';
	var SIX_64_R = 's64-release';
	var SIX_65_R = 's65-release';
	var SIX_66_R = 's66-release';
	var SIX_67_R = 's67-release';
	var SIX_68_R = 's68-release';
	var SIX_69_R = 's69-release';

	// 69 keys! (kill me why does this exist kill me stfu [aionmsfkljqsdwer90ij])
}
#else
@:enum
abstract Action(String) to String from String
{
	var UI_UP = "ui_up";
	var UI_LEFT = "ui_left";
	var UI_RIGHT = "ui_right";
	var UI_DOWN = "ui_down";
	var UI_UP_P = "ui_up-press";
	var UI_LEFT_P = "ui_left-press";
	var UI_RIGHT_P = "ui_right-press";
	var UI_DOWN_P = "ui_down-press";
	var UI_UP_R = "ui_up-release";
	var UI_LEFT_R = "ui_left-release";
	var UI_RIGHT_R = "ui_right-release";
	var UI_DOWN_R = "ui_down-release";
	var NOTE_UP = "note_up";
	var NOTE_LEFT = "note_left";
	var NOTE_RIGHT = "note_right";
	var NOTE_DOWN = "note_down";
	var NOTE_UP_P = "note_up-press";
	var NOTE_LEFT_P = "note_left-press";
	var NOTE_RIGHT_P = "note_right-press";
	var NOTE_DOWN_P = "note_down-press";
	var NOTE_UP_R = "note_up-release";
	var NOTE_LEFT_R = "note_left-release";
	var NOTE_RIGHT_R = "note_right-release";
	var NOTE_DOWN_R = "note_down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";

	var A1 = 'a1';
	var A2 = 'a2';
	var A3 = 'a3';
	var A4 = 'a4';
	var A5 = 'a5';
	var A6 = 'a6';
	var A7 = 'a7';

	var A1_P = 'a1-press';
	var A2_P = 'a2-press';
	var A3_P = 'a3-press';
	var A4_P = 'a4-press';
	var A5_P = 'a5-press';
	var A6_P = 'a6-press';
	var A7_P = 'a7-press';

	var A1_R = 'a1-release';
	var A2_R = 'a2-release';
	var A3_R = 'a3-release';
	var A4_R = 'a4-release';
	var A5_R = 'a5-release';
	var A6_R = 'a6-release';
	var A7_R = 'a7-release';


	var B1 = 'b1';
	var B2 = 'b2';
	var B3 = 'b3';
	var B4 = 'b4';
	var B5 = 'b5';
	var B6 = 'b6';
	var B7 = 'b7';
	var B8 = 'b8';
	var B9 = 'b9';

	var B1_P = 'b1-press';
	var B2_P = 'b2-press';
	var B3_P = 'b3-press';
	var B4_P = 'b4-press';
	var B5_P = 'b5-press';
	var B6_P = 'b6-press';
	var B7_P = 'b7-press';
	var B8_P = 'b8-press';
	var B9_P = 'b9-press';

	var B1_R = 'b1-release';
	var B2_R = 'b2-release';
	var B3_R = 'b3-release';
	var B4_R = 'b4-release';
	var B5_R = 'b5-release';
	var B6_R = 'b6-release';
	var B7_R = 'b7-release';
	var B8_R = 'b8-release';
	var B9_R = 'b9-release';


	// 69 Key
	var SIX_1 = 's1';
	var SIX_2 = 's2';
	var SIX_3 = 's3';
	var SIX_4 = 's4';
	var SIX_5 = 's5';
	var SIX_6 = 's6';
	var SIX_7 = 's7';
	var SIX_8 = 's8';
	var SIX_9 = 's9';
	var SIX_10 = 's10';
	var SIX_11 = 's11';
	var SIX_12 = 's12';
	var SIX_13 = 's13';
	var SIX_14 = 's14';
	var SIX_15 = 's15';
	var SIX_16 = 's16';
	var SIX_17 = 's17';
	var SIX_18 = 's18';
	var SIX_19 = 's19';
	var SIX_20 = 's20';
	var SIX_21 = 's21';
	var SIX_22 = 's22';
	var SIX_23 = 's23';
	var SIX_24 = 's24';
	var SIX_25 = 's25';
	var SIX_26 = 's26';
	var SIX_27 = 's27';
	var SIX_28 = 's28';
	var SIX_29 = 's29';
	var SIX_30 = 's30';
	var SIX_31 = 's31';
	var SIX_32 = 's32';
	var SIX_33 = 's33';
	var SIX_34 = 's34';
	var SIX_35 = 's35';
	var SIX_36 = 's36';
	var SIX_37 = 's37';
	var SIX_38 = 's38';
	var SIX_39 = 's39';
	var SIX_40 = 's40';
	var SIX_41 = 's41';
	var SIX_42 = 's42';
	var SIX_43 = 's43';
	var SIX_44 = 's44';
	var SIX_45 = 's45';
	var SIX_46 = 's46';
	var SIX_47 = 's47';
	var SIX_48 = 's48';
	var SIX_49 = 's49';
	var SIX_50 = 's50';
	var SIX_51 = 's51';
	var SIX_52 = 's52';
	var SIX_53 = 's53';
	var SIX_54 = 's54';
	var SIX_55 = 's55';
	var SIX_56 = 's56';
	var SIX_57 = 's57';
	var SIX_58 = 's58';
	var SIX_59 = 's59';
	var SIX_60 = 's60';
	var SIX_61 = 's61';
	var SIX_62 = 's62';
	var SIX_63 = 's63';
	var SIX_64 = 's64';
	var SIX_65 = 's65';
	var SIX_66 = 's66';
	var SIX_67 = 's67';
	var SIX_68 = 's68';
	var SIX_69 = 's69';

	var SIX_1_P = 's1-press';
	var SIX_2_P = 's2-press';
	var SIX_3_P = 's3-press';
	var SIX_4_P = 's4-press';
	var SIX_5_P = 's5-press';
	var SIX_6_P = 's6-press';
	var SIX_7_P = 's7-press';
	var SIX_8_P = 's8-press';
	var SIX_9_P = 's9-press';
	var SIX_10_P = 's10-press';
	var SIX_11_P = 's11-press';
	var SIX_12_P = 's12-press';
	var SIX_13_P = 's13-press';
	var SIX_14_P = 's14-press';
	var SIX_15_P = 's15-press';
	var SIX_16_P = 's16-press';
	var SIX_17_P = 's17-press';
	var SIX_18_P = 's18-press';
	var SIX_19_P = 's19-press';
	var SIX_20_P = 's20-press';
	var SIX_21_P = 's21-press';
	var SIX_22_P = 's22-press';
	var SIX_23_P = 's23-press';
	var SIX_24_P = 's24-press';
	var SIX_25_P = 's25-press';
	var SIX_26_P = 's26-press';
	var SIX_27_P = 's27-press';
	var SIX_28_P = 's28-press';
	var SIX_29_P = 's29-press';
	var SIX_30_P = 's30-press';
	var SIX_31_P = 's31-press';
	var SIX_32_P = 's32-press';
	var SIX_33_P = 's33-press';
	var SIX_34_P = 's34-press';
	var SIX_35_P = 's35-press';
	var SIX_36_P = 's36-press';
	var SIX_37_P = 's37-press';
	var SIX_38_P = 's38-press';
	var SIX_39_P = 's39-press';
	var SIX_40_P = 's40-press';
	var SIX_41_P = 's41-press';
	var SIX_42_P = 's42-press';
	var SIX_43_P = 's43-press';
	var SIX_44_P = 's44-press';
	var SIX_45_P = 's45-press';
	var SIX_46_P = 's46-press';
	var SIX_47_P = 's47-press';
	var SIX_48_P = 's48-press';
	var SIX_49_P = 's49-press';
	var SIX_50_P = 's50-press';
	var SIX_51_P = 's51-press';
	var SIX_52_P = 's52-press';
	var SIX_53_P = 's53-press';
	var SIX_54_P = 's54-press';
	var SIX_55_P = 's55-press';
	var SIX_56_P = 's56-press';
	var SIX_57_P = 's57-press';
	var SIX_58_P = 's58-press';
	var SIX_59_P = 's59-press';
	var SIX_60_P = 's60-press';
	var SIX_61_P = 's61-press';
	var SIX_62_P = 's62-press';
	var SIX_63_P = 's63-press';
	var SIX_64_P = 's64-press';
	var SIX_65_P = 's65-press';
	var SIX_66_P = 's66-press';
	var SIX_67_P = 's67-press';
	var SIX_68_P = 's68-press';
	var SIX_69_P = 's69-press';

	var SIX_1_R = 's1-release';
	var SIX_2_R = 's2-release';
	var SIX_3_R = 's3-release';
	var SIX_4_R = 's4-release';
	var SIX_5_R = 's5-release';
	var SIX_6_R = 's6-release';
	var SIX_7_R = 's7-release';
	var SIX_8_R = 's8-release';
	var SIX_9_R = 's9-release';
	var SIX_10_R = 's10-release';
	var SIX_11_R = 's11-release';
	var SIX_12_R = 's12-release';
	var SIX_13_R = 's13-release';
	var SIX_14_R = 's14-release';
	var SIX_15_R = 's15-release';
	var SIX_16_R = 's16-release';
	var SIX_17_R = 's17-release';
	var SIX_18_R = 's18-release';
	var SIX_19_R = 's19-release';
	var SIX_20_R = 's20-release';
	var SIX_21_R = 's21-release';
	var SIX_22_R = 's22-release';
	var SIX_23_R = 's23-release';
	var SIX_24_R = 's24-release';
	var SIX_25_R = 's25-release';
	var SIX_26_R = 's26-release';
	var SIX_27_R = 's27-release';
	var SIX_28_R = 's28-release';
	var SIX_29_R = 's29-release';
	var SIX_30_R = 's30-release';
	var SIX_31_R = 's31-release';
	var SIX_32_R = 's32-release';
	var SIX_33_R = 's33-release';
	var SIX_34_R = 's34-release';
	var SIX_35_R = 's35-release';
	var SIX_36_R = 's36-release';
	var SIX_37_R = 's37-release';
	var SIX_38_R = 's38-release';
	var SIX_39_R = 's39-release';
	var SIX_40_R = 's40-release';
	var SIX_41_R = 's41-release';
	var SIX_42_R = 's42-release';
	var SIX_43_R = 's43-release';
	var SIX_44_R = 's44-release';
	var SIX_45_R = 's45-release';
	var SIX_46_R = 's46-release';
	var SIX_47_R = 's47-release';
	var SIX_48_R = 's48-release';
	var SIX_49_R = 's49-release';
	var SIX_50_R = 's50-release';
	var SIX_51_R = 's51-release';
	var SIX_52_R = 's52-release';
	var SIX_53_R = 's53-release';
	var SIX_54_R = 's54-release';
	var SIX_55_R = 's55-release';
	var SIX_56_R = 's56-release';
	var SIX_57_R = 's57-release';
	var SIX_58_R = 's58-release';
	var SIX_59_R = 's59-release';
	var SIX_60_R = 's60-release';
	var SIX_61_R = 's61-release';
	var SIX_62_R = 's62-release';
	var SIX_63_R = 's63-release';
	var SIX_64_R = 's64-release';
	var SIX_65_R = 's65-release';
	var SIX_66_R = 's66-release';
	var SIX_67_R = 's67-release';
	var SIX_68_R = 's68-release';
	var SIX_69_R = 's69-release';
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UI_UP;
	UI_LEFT;
	UI_RIGHT;
	UI_DOWN;
	NOTE_UP;
	NOTE_LEFT;
	NOTE_RIGHT;
	NOTE_DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;

	A1;
	A2;
	A3;
	A4;
	A5;
	A6;
	A7;

	B1;
	B2;
	B3;
	B4;
	B5;
	B6;
	B7;
	B8;
	B9;


	// 69 Key
	SIX_1;
	SIX_2;
	SIX_3;
	SIX_4;
	SIX_5;
	SIX_6;
	SIX_7;
	SIX_8;
	SIX_9;
	SIX_10;
	SIX_11;
	SIX_12;
	SIX_13;
	SIX_14;
	SIX_15;
	SIX_16;
	SIX_17;
	SIX_18;
	SIX_19;
	SIX_20;
	SIX_21;
	SIX_22;
	SIX_23;
	SIX_24;
	SIX_25;
	SIX_26;
	SIX_27;
	SIX_28;
	SIX_29;
	SIX_30;
	SIX_31;
	SIX_32;
	SIX_33;
	SIX_34;
	SIX_35;
	SIX_36;
	SIX_37;
	SIX_38;
	SIX_39;
	SIX_40;
	SIX_41;
	SIX_42;
	SIX_43;
	SIX_44;
	SIX_45;
	SIX_46;
	SIX_47;
	SIX_48;
	SIX_49;
	SIX_50;
	SIX_51;
	SIX_52;
	SIX_53;
	SIX_54;
	SIX_55;
	SIX_56;
	SIX_57;
	SIX_58;
	SIX_59;
	SIX_60;
	SIX_61;
	SIX_62;
	SIX_63;
	SIX_64;
	SIX_65;
	SIX_66;
	SIX_67;
	SIX_68;
	SIX_69;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _ui_up = new FlxActionDigital(Action.UI_UP);
	var _ui_left = new FlxActionDigital(Action.UI_LEFT);
	var _ui_right = new FlxActionDigital(Action.UI_RIGHT);
	var _ui_down = new FlxActionDigital(Action.UI_DOWN);
	var _ui_upP = new FlxActionDigital(Action.UI_UP_P);
	var _ui_leftP = new FlxActionDigital(Action.UI_LEFT_P);
	var _ui_rightP = new FlxActionDigital(Action.UI_RIGHT_P);
	var _ui_downP = new FlxActionDigital(Action.UI_DOWN_P);
	var _ui_upR = new FlxActionDigital(Action.UI_UP_R);
	var _ui_leftR = new FlxActionDigital(Action.UI_LEFT_R);
	var _ui_rightR = new FlxActionDigital(Action.UI_RIGHT_R);
	var _ui_downR = new FlxActionDigital(Action.UI_DOWN_R);
	var _note_up = new FlxActionDigital(Action.NOTE_UP);
	var _note_left = new FlxActionDigital(Action.NOTE_LEFT);
	var _note_right = new FlxActionDigital(Action.NOTE_RIGHT);
	var _note_down = new FlxActionDigital(Action.NOTE_DOWN);
	var _note_upP = new FlxActionDigital(Action.NOTE_UP_P);
	var _note_leftP = new FlxActionDigital(Action.NOTE_LEFT_P);
	var _note_rightP = new FlxActionDigital(Action.NOTE_RIGHT_P);
	var _note_downP = new FlxActionDigital(Action.NOTE_DOWN_P);
	var _note_upR = new FlxActionDigital(Action.NOTE_UP_R);
	var _note_leftR = new FlxActionDigital(Action.NOTE_LEFT_R);
	var _note_rightR = new FlxActionDigital(Action.NOTE_RIGHT_R);
	var _note_downR = new FlxActionDigital(Action.NOTE_DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);

	var _a1 = new FlxActionDigital(Action.A1);
	var _a2 = new FlxActionDigital(Action.A2);
	var _a3 = new FlxActionDigital(Action.A3);
	var _a4 = new FlxActionDigital(Action.A4);
	var _a5 = new FlxActionDigital(Action.A5);
	var _a6 = new FlxActionDigital(Action.A6);
	var _a7 = new FlxActionDigital(Action.A7);

	var _a1P = new FlxActionDigital(Action.A1_P);
	var _a2P = new FlxActionDigital(Action.A2_P);
	var _a3P = new FlxActionDigital(Action.A3_P);
	var _a4P = new FlxActionDigital(Action.A4_P);
	var _a5P = new FlxActionDigital(Action.A5_P);
	var _a6P = new FlxActionDigital(Action.A6_P);
	var _a7P = new FlxActionDigital(Action.A7_P);

	var _a1R = new FlxActionDigital(Action.A1_R);
	var _a2R = new FlxActionDigital(Action.A2_R);
	var _a3R = new FlxActionDigital(Action.A3_R);
	var _a4R = new FlxActionDigital(Action.A4_R);
	var _a5R = new FlxActionDigital(Action.A5_R);
	var _a6R = new FlxActionDigital(Action.A6_R);
	var _a7R = new FlxActionDigital(Action.A7_R);


	var _b1 = new FlxActionDigital(Action.B1);
	var _b2 = new FlxActionDigital(Action.B2);
	var _b3 = new FlxActionDigital(Action.B3);
	var _b4 = new FlxActionDigital(Action.B4);
	var _b5 = new FlxActionDigital(Action.B5);
	var _b6 = new FlxActionDigital(Action.B6);
	var _b7 = new FlxActionDigital(Action.B7);
	var _b8 = new FlxActionDigital(Action.B8);
	var _b9 = new FlxActionDigital(Action.B9);

	var _b1P = new FlxActionDigital(Action.B1_P);
	var _b2P = new FlxActionDigital(Action.B2_P);
	var _b3P = new FlxActionDigital(Action.B3_P);
	var _b4P = new FlxActionDigital(Action.B4_P);
	var _b5P = new FlxActionDigital(Action.B5_P);
	var _b6P = new FlxActionDigital(Action.B6_P);
	var _b7P = new FlxActionDigital(Action.B7_P);
	var _b8P = new FlxActionDigital(Action.B8_P);
	var _b9P = new FlxActionDigital(Action.B9_P);

	var _b1R = new FlxActionDigital(Action.B1_R);
	var _b2R = new FlxActionDigital(Action.B2_R);
	var _b3R = new FlxActionDigital(Action.B3_R);
	var _b4R = new FlxActionDigital(Action.B4_R);
	var _b5R = new FlxActionDigital(Action.B5_R);
	var _b6R = new FlxActionDigital(Action.B6_R);
	var _b7R = new FlxActionDigital(Action.B7_R);
	var _b8R = new FlxActionDigital(Action.B8_R);
	var _b9R = new FlxActionDigital(Action.B9_R);









	// 69 Key
	var _six_1 = new FlxActionDigital(Action.SIX_1);
	var _six_2 = new FlxActionDigital(Action.SIX_2);
	var _six_3 = new FlxActionDigital(Action.SIX_3);
	var _six_4 = new FlxActionDigital(Action.SIX_4);
	var _six_5 = new FlxActionDigital(Action.SIX_5);
	var _six_6 = new FlxActionDigital(Action.SIX_6);
	var _six_7 = new FlxActionDigital(Action.SIX_7);
	var _six_8 = new FlxActionDigital(Action.SIX_8);
	var _six_9 = new FlxActionDigital(Action.SIX_9);
	var _six_10 = new FlxActionDigital(Action.SIX_10);
	var _six_11 = new FlxActionDigital(Action.SIX_11);
	var _six_12 = new FlxActionDigital(Action.SIX_12);
	var _six_13 = new FlxActionDigital(Action.SIX_13);
	var _six_14 = new FlxActionDigital(Action.SIX_14);
	var _six_15 = new FlxActionDigital(Action.SIX_15);
	var _six_16 = new FlxActionDigital(Action.SIX_16);
	var _six_17 = new FlxActionDigital(Action.SIX_17);
	var _six_18 = new FlxActionDigital(Action.SIX_18);
	var _six_19 = new FlxActionDigital(Action.SIX_19);
	var _six_20 = new FlxActionDigital(Action.SIX_20);
	var _six_21 = new FlxActionDigital(Action.SIX_21);
	var _six_22 = new FlxActionDigital(Action.SIX_22);
	var _six_23 = new FlxActionDigital(Action.SIX_23);
	var _six_24 = new FlxActionDigital(Action.SIX_24);
	var _six_25 = new FlxActionDigital(Action.SIX_25);
	var _six_26 = new FlxActionDigital(Action.SIX_26);
	var _six_27 = new FlxActionDigital(Action.SIX_27);
	var _six_28 = new FlxActionDigital(Action.SIX_28);
	var _six_29 = new FlxActionDigital(Action.SIX_29);
	var _six_30 = new FlxActionDigital(Action.SIX_30);
	var _six_31 = new FlxActionDigital(Action.SIX_31);
	var _six_32 = new FlxActionDigital(Action.SIX_32);
	var _six_33 = new FlxActionDigital(Action.SIX_33);
	var _six_34 = new FlxActionDigital(Action.SIX_34);
	var _six_35 = new FlxActionDigital(Action.SIX_35);
	var _six_36 = new FlxActionDigital(Action.SIX_36);
	var _six_37 = new FlxActionDigital(Action.SIX_37);
	var _six_38 = new FlxActionDigital(Action.SIX_38);
	var _six_39 = new FlxActionDigital(Action.SIX_39);
	var _six_40 = new FlxActionDigital(Action.SIX_40);
	var _six_41 = new FlxActionDigital(Action.SIX_41);
	var _six_42 = new FlxActionDigital(Action.SIX_42);
	var _six_43 = new FlxActionDigital(Action.SIX_43);
	var _six_44 = new FlxActionDigital(Action.SIX_44);
	var _six_45 = new FlxActionDigital(Action.SIX_45);
	var _six_46 = new FlxActionDigital(Action.SIX_46);
	var _six_47 = new FlxActionDigital(Action.SIX_47);
	var _six_48 = new FlxActionDigital(Action.SIX_48);
	var _six_49 = new FlxActionDigital(Action.SIX_49);
	var _six_50 = new FlxActionDigital(Action.SIX_50);
	var _six_51 = new FlxActionDigital(Action.SIX_51);
	var _six_52 = new FlxActionDigital(Action.SIX_52);
	var _six_53 = new FlxActionDigital(Action.SIX_53);
	var _six_54 = new FlxActionDigital(Action.SIX_54);
	var _six_55 = new FlxActionDigital(Action.SIX_55);
	var _six_56 = new FlxActionDigital(Action.SIX_56);
	var _six_57 = new FlxActionDigital(Action.SIX_57);
	var _six_58 = new FlxActionDigital(Action.SIX_58);
	var _six_59 = new FlxActionDigital(Action.SIX_59);
	var _six_60 = new FlxActionDigital(Action.SIX_60);
	var _six_61 = new FlxActionDigital(Action.SIX_61);
	var _six_62 = new FlxActionDigital(Action.SIX_62);
	var _six_63 = new FlxActionDigital(Action.SIX_63);
	var _six_64 = new FlxActionDigital(Action.SIX_64);
	var _six_65 = new FlxActionDigital(Action.SIX_65);
	var _six_66 = new FlxActionDigital(Action.SIX_66);
	var _six_67 = new FlxActionDigital(Action.SIX_67);
	var _six_68 = new FlxActionDigital(Action.SIX_68);
	var _six_69 = new FlxActionDigital(Action.SIX_69);

													 
	var _six_1P = new FlxActionDigital(Action.SIX_1_P);
	var _six_2P = new FlxActionDigital(Action.SIX_2_P);
	var _six_3P = new FlxActionDigital(Action.SIX_3_P);
	var _six_4P = new FlxActionDigital(Action.SIX_4_P);
	var _six_5P = new FlxActionDigital(Action.SIX_5_P);
	var _six_6P = new FlxActionDigital(Action.SIX_6_P);
	var _six_7P = new FlxActionDigital(Action.SIX_7_P);
	var _six_8P = new FlxActionDigital(Action.SIX_8_P);
	var _six_9P = new FlxActionDigital(Action.SIX_9_P); 
	var _six_10P = new FlxActionDigital(Action.SIX_10_P);
	var _six_11P = new FlxActionDigital(Action.SIX_11_P);
	var _six_12P = new FlxActionDigital(Action.SIX_12_P);
	var _six_13P = new FlxActionDigital(Action.SIX_13_P);
	var _six_14P = new FlxActionDigital(Action.SIX_14_P);
	var _six_15P = new FlxActionDigital(Action.SIX_15_P);
	var _six_16P = new FlxActionDigital(Action.SIX_16_P);
	var _six_17P = new FlxActionDigital(Action.SIX_17_P);
	var _six_18P = new FlxActionDigital(Action.SIX_18_P);
	var _six_19P = new FlxActionDigital(Action.SIX_19_P);
	var _six_20P = new FlxActionDigital(Action.SIX_20_P);
	var _six_21P = new FlxActionDigital(Action.SIX_21_P);
	var _six_22P = new FlxActionDigital(Action.SIX_22_P);
	var _six_23P = new FlxActionDigital(Action.SIX_23_P);
	var _six_24P = new FlxActionDigital(Action.SIX_24_P);
	var _six_25P = new FlxActionDigital(Action.SIX_25_P);
	var _six_26P = new FlxActionDigital(Action.SIX_26_P);
	var _six_27P = new FlxActionDigital(Action.SIX_27_P);
	var _six_28P = new FlxActionDigital(Action.SIX_28_P);
	var _six_29P = new FlxActionDigital(Action.SIX_29_P);
	var _six_30P = new FlxActionDigital(Action.SIX_30_P);
	var _six_31P = new FlxActionDigital(Action.SIX_31_P);
	var _six_32P = new FlxActionDigital(Action.SIX_32_P);
	var _six_33P = new FlxActionDigital(Action.SIX_33_P);
	var _six_34P = new FlxActionDigital(Action.SIX_34_P);
	var _six_35P = new FlxActionDigital(Action.SIX_35_P);
	var _six_36P = new FlxActionDigital(Action.SIX_36_P);
	var _six_37P = new FlxActionDigital(Action.SIX_37_P);
	var _six_38P = new FlxActionDigital(Action.SIX_38_P);
	var _six_39P = new FlxActionDigital(Action.SIX_39_P);
	var _six_40P = new FlxActionDigital(Action.SIX_40_P);
	var _six_41P = new FlxActionDigital(Action.SIX_41_P);
	var _six_42P = new FlxActionDigital(Action.SIX_42_P);
	var _six_43P = new FlxActionDigital(Action.SIX_43_P);
	var _six_44P = new FlxActionDigital(Action.SIX_44_P);
	var _six_45P = new FlxActionDigital(Action.SIX_45_P);
	var _six_46P = new FlxActionDigital(Action.SIX_46_P);
	var _six_47P = new FlxActionDigital(Action.SIX_47_P);
	var _six_48P = new FlxActionDigital(Action.SIX_48_P);
	var _six_49P = new FlxActionDigital(Action.SIX_49_P);
	var _six_50P = new FlxActionDigital(Action.SIX_50_P);
	var _six_51P = new FlxActionDigital(Action.SIX_51_P);
	var _six_52P = new FlxActionDigital(Action.SIX_52_P);
	var _six_53P = new FlxActionDigital(Action.SIX_53_P);
	var _six_54P = new FlxActionDigital(Action.SIX_54_P);
	var _six_55P = new FlxActionDigital(Action.SIX_55_P);
	var _six_56P = new FlxActionDigital(Action.SIX_56_P);
	var _six_57P = new FlxActionDigital(Action.SIX_57_P);
	var _six_58P = new FlxActionDigital(Action.SIX_58_P);
	var _six_59P = new FlxActionDigital(Action.SIX_59_P);
	var _six_60P = new FlxActionDigital(Action.SIX_60_P);
	var _six_61P = new FlxActionDigital(Action.SIX_61_P);
	var _six_62P = new FlxActionDigital(Action.SIX_62_P);
	var _six_63P = new FlxActionDigital(Action.SIX_63_P);
	var _six_64P = new FlxActionDigital(Action.SIX_64_P);
	var _six_65P = new FlxActionDigital(Action.SIX_65_P);
	var _six_66P = new FlxActionDigital(Action.SIX_66_P);
	var _six_67P = new FlxActionDigital(Action.SIX_67_P);
	var _six_68P = new FlxActionDigital(Action.SIX_68_P);
	var _six_69P = new FlxActionDigital(Action.SIX_69_P);

													   
	var _six_1R = new FlxActionDigital(Action.SIX_1_R);
	var _six_2R = new FlxActionDigital(Action.SIX_2_R);
	var _six_3R = new FlxActionDigital(Action.SIX_3_R);
	var _six_4R = new FlxActionDigital(Action.SIX_4_R);
	var _six_5R = new FlxActionDigital(Action.SIX_5_R);
	var _six_6R = new FlxActionDigital(Action.SIX_6_R);
	var _six_7R = new FlxActionDigital(Action.SIX_7_R);
	var _six_8R = new FlxActionDigital(Action.SIX_8_R);
	var _six_9R = new FlxActionDigital(Action.SIX_9_R); 
	var _six_10R = new FlxActionDigital(Action.SIX_10_R);
	var _six_11R = new FlxActionDigital(Action.SIX_11_R);
	var _six_12R = new FlxActionDigital(Action.SIX_12_R);
	var _six_13R = new FlxActionDigital(Action.SIX_13_R);
	var _six_14R = new FlxActionDigital(Action.SIX_14_R);
	var _six_15R = new FlxActionDigital(Action.SIX_15_R);
	var _six_16R = new FlxActionDigital(Action.SIX_16_R);
	var _six_17R = new FlxActionDigital(Action.SIX_17_R);
	var _six_18R = new FlxActionDigital(Action.SIX_18_R);
	var _six_19R = new FlxActionDigital(Action.SIX_19_R);
	var _six_20R = new FlxActionDigital(Action.SIX_20_R);
	var _six_21R = new FlxActionDigital(Action.SIX_21_R);
	var _six_22R = new FlxActionDigital(Action.SIX_22_R);
	var _six_23R = new FlxActionDigital(Action.SIX_23_R);
	var _six_24R = new FlxActionDigital(Action.SIX_24_R);
	var _six_25R = new FlxActionDigital(Action.SIX_25_R);
	var _six_26R = new FlxActionDigital(Action.SIX_26_R);
	var _six_27R = new FlxActionDigital(Action.SIX_27_R);
	var _six_28R = new FlxActionDigital(Action.SIX_28_R);
	var _six_29R = new FlxActionDigital(Action.SIX_29_R);
	var _six_30R = new FlxActionDigital(Action.SIX_30_R);
	var _six_31R = new FlxActionDigital(Action.SIX_31_R);
	var _six_32R = new FlxActionDigital(Action.SIX_32_R);
	var _six_33R = new FlxActionDigital(Action.SIX_33_R);
	var _six_34R = new FlxActionDigital(Action.SIX_34_R);
	var _six_35R = new FlxActionDigital(Action.SIX_35_R);
	var _six_36R = new FlxActionDigital(Action.SIX_36_R);
	var _six_37R = new FlxActionDigital(Action.SIX_37_R);
	var _six_38R = new FlxActionDigital(Action.SIX_38_R);
	var _six_39R = new FlxActionDigital(Action.SIX_39_R);
	var _six_40R = new FlxActionDigital(Action.SIX_40_R);
	var _six_41R = new FlxActionDigital(Action.SIX_41_R);
	var _six_42R = new FlxActionDigital(Action.SIX_42_R);
	var _six_43R = new FlxActionDigital(Action.SIX_43_R);
	var _six_44R = new FlxActionDigital(Action.SIX_44_R);
	var _six_45R = new FlxActionDigital(Action.SIX_45_R);
	var _six_46R = new FlxActionDigital(Action.SIX_46_R);
	var _six_47R = new FlxActionDigital(Action.SIX_47_R);
	var _six_48R = new FlxActionDigital(Action.SIX_48_R);
	var _six_49R = new FlxActionDigital(Action.SIX_49_R);
	var _six_50R = new FlxActionDigital(Action.SIX_50_R);
	var _six_51R = new FlxActionDigital(Action.SIX_51_R);
	var _six_52R = new FlxActionDigital(Action.SIX_52_R);
	var _six_53R = new FlxActionDigital(Action.SIX_53_R);
	var _six_54R = new FlxActionDigital(Action.SIX_54_R);
	var _six_55R = new FlxActionDigital(Action.SIX_55_R);
	var _six_56R = new FlxActionDigital(Action.SIX_56_R);
	var _six_57R = new FlxActionDigital(Action.SIX_57_R);
	var _six_58R = new FlxActionDigital(Action.SIX_58_R);
	var _six_59R = new FlxActionDigital(Action.SIX_59_R);
	var _six_60R = new FlxActionDigital(Action.SIX_60_R);
	var _six_61R = new FlxActionDigital(Action.SIX_61_R);
	var _six_62R = new FlxActionDigital(Action.SIX_62_R);
	var _six_63R = new FlxActionDigital(Action.SIX_63_R);
	var _six_64R = new FlxActionDigital(Action.SIX_64_R);
	var _six_65R = new FlxActionDigital(Action.SIX_65_R);
	var _six_66R = new FlxActionDigital(Action.SIX_66_R);
	var _six_67R = new FlxActionDigital(Action.SIX_67_R);
	var _six_68R = new FlxActionDigital(Action.SIX_68_R);
	var _six_69R = new FlxActionDigital(Action.SIX_69_R);




	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;


	
	// 69 Key
	public var SIX_1(get, never):Bool;

	inline function get_SIX_1()
		return _six_1.check();
	
	public var SIX_2(get, never):Bool;

	inline function get_SIX_2()
		return _six_2.check();
	
	public var SIX_3(get, never):Bool;

	inline function get_SIX_3()
		return _six_3.check();
	
	
	public var SIX_4(get, never):Bool;

	inline function get_SIX_4()
		return _six_4.check();
	
	
	public var SIX_5(get, never):Bool;

	inline function get_SIX_5()
		return _six_5.check();
	
	
	public var SIX_6(get, never):Bool;

	inline function get_SIX_6()
		return _six_6.check();
	
	
	public var SIX_7(get, never):Bool;

	inline function get_SIX_7()
		return _six_7.check();
	
	
	public var SIX_8(get, never):Bool;

	inline function get_SIX_8()
		return _six_8.check();
	
	
	public var SIX_9(get, never):Bool;

	inline function get_SIX_9()
		return _six_1.check();
	
	
	public var SIX_10(get, never):Bool;

	inline function get_SIX_10()
		return _six_10.check();
	
	
	
	public var SIX_11(get, never):Bool;

	inline function get_SIX_11()
		return _six_11.check();

	
	public var SIX_12(get, never):Bool;
	
	inline function get_SIX_12()
		return _six_12.check();
	
	
	public var SIX_13(get, never):Bool;

	inline function get_SIX_13()
		return _six_13.check();
	
	
	public var SIX_14(get, never):Bool;

	inline function get_SIX_14()
		return _six_14.check();
	
	
	public var SIX_15(get, never):Bool;

	inline function get_SIX_15()
		return _six_15.check();
	
	
	public var SIX_16(get, never):Bool;

	inline function get_SIX_16()
		return _six_16.check();
	
	
	public var SIX_17(get, never):Bool;

	inline function get_SIX_17()
		return _six_17.check();
	
	
	public var SIX_18(get, never):Bool;

	inline function get_SIX_18()
		return _six_18.check();
	
	
	public var SIX_19(get, never):Bool;

	inline function get_SIX_19()
		return _six_19.check();
	
	
	public var SIX_20(get, never):Bool;

	inline function get_SIX_20()
		return _six_20.check();


	public var SIX_21(get, never):Bool;

	inline function get_SIX_21()
		return _six_21.check();
	
	
	public var SIX_22(get, never):Bool;

	inline function get_SIX_22()
		return _six_22.check();
	
	
	public var SIX_23(get, never):Bool;

	inline function get_SIX_23()
		return _six_23.check();
	
	
	public var SIX_24(get, never):Bool;

	inline function get_SIX_24()
		return _six_24.check();
	
	
	public var SIX_25(get, never):Bool;

	inline function get_SIX_25()
		return _six_25.check();
	
	
	public var SIX_26(get, never):Bool;

	inline function get_SIX_26()
		return _six_26.check();
	
	
	public var SIX_27(get, never):Bool;

	inline function get_SIX_27()
		return _six_27.check();
	
	
	public var SIX_28(get, never):Bool;

	inline function get_SIX_28()
		return _six_28.check();
	
	
	public var SIX_29(get, never):Bool;

	inline function get_SIX_29()
		return _six_29.check();
	
	
	public var SIX_30(get, never):Bool;

	inline function get_SIX_30()
		return _six_30.check();

	public var SIX_31(get, never):Bool;

	inline function get_SIX_31()
		return _six_31.check();
	
	
	public var SIX_32(get, never):Bool;

	inline function get_SIX_32()
		return _six_32.check();
	
	
	public var SIX_33(get, never):Bool;

	inline function get_SIX_33()
		return _six_33.check();
	
	
	public var SIX_34(get, never):Bool;

	inline function get_SIX_34()
		return _six_34.check();
	
	
	public var SIX_35(get, never):Bool;

	inline function get_SIX_35()
		return _six_35.check();
	
	
	public var SIX_36(get, never):Bool;

	inline function get_SIX_36()
		return _six_36.check();
	
	
	public var SIX_37(get, never):Bool;

	inline function get_SIX_37()
		return _six_37.check();
	
	
	public var SIX_38(get, never):Bool;

	inline function get_SIX_38()
		return _six_38.check();
	
	
	public var SIX_39(get, never):Bool;

	inline function get_SIX_39()
		return _six_39.check();
	
	
	
	public var SIX_40(get, never):Bool;

	inline function get_SIX_40()
		return _six_40.check();
	
	public var SIX_41(get, never):Bool;
	
	inline function get_SIX_41()
		return _six_41.check();
	
	
	public var SIX_42(get, never):Bool;

	inline function get_SIX_42()
		return _six_42.check();
	
	public var SIX_43(get, never):Bool;

	inline function get_SIX_43()
		return _six_43.check();
	
	
	public var SIX_44(get, never):Bool;

	inline function get_SIX_44()
		return _six_44.check();
	
	
	public var SIX_45(get, never):Bool;

	inline function get_SIX_45()
		return _six_45.check();
	
	
	public var SIX_46(get, never):Bool;

	inline function get_SIX_46()
		return _six_46.check();
	
	
	public var SIX_47(get, never):Bool;

	inline function get_SIX_47()
		return _six_47.check();
	
	
	public var SIX_48(get, never):Bool;

	inline function get_SIX_48()
		return _six_48.check();
	
	
	public var SIX_49(get, never):Bool;

	inline function get_SIX_49()
		return _six_49.check();
	
	
	public var SIX_50(get, never):Bool;

	inline function get_SIX_50()
		return _six_50.check();
	
	public var SIX_51(get, never):Bool;
	
	
	inline function get_SIX_51()
		return _six_51.check();
	
	
	public var SIX_52(get, never):Bool;

	inline function get_SIX_52()
		return _six_52.check();
	
	
	public var SIX_53(get, never):Bool;

	inline function get_SIX_53()
		return _six_53.check();
	
	
	public var SIX_54(get, never):Bool;

	inline function get_SIX_54()
		return _six_54.check();

	
	public var SIX_55(get, never):Bool;

	inline function get_SIX_55()
		return _six_55.check();
	
	
	public var SIX_56(get, never):Bool;

	inline function get_SIX_56()
		return _six_56.check();
	
	
	public var SIX_57(get, never):Bool;

	inline function get_SIX_57()
		return _six_57.check();
	
	
	public var SIX_58(get, never):Bool;

	inline function get_SIX_58()
		return _six_58.check();
	
	
	public var SIX_59(get, never):Bool;

	inline function get_SIX_59()
		return _six_59.check();
	
	
	public var SIX_60(get, never):Bool;

	inline function get_SIX_60()
		return _six_60.check();

	public var SIX_61(get, never):Bool;

	inline function get_SIX_61()
		return _six_61.check();
	
	
	public var SIX_62(get, never):Bool;

	inline function get_SIX_62()
		return _six_62.check();
	
	
	public var SIX_63(get, never):Bool;

	inline function get_SIX_63()
		return _six_63.check();
	
	
	public var SIX_64(get, never):Bool;

	inline function get_SIX_64()
		return _six_64.check();
	
	
	public var SIX_65(get, never):Bool;

	inline function get_SIX_65()
		return _six_65.check();
	
	
	public var SIX_66(get, never):Bool;

	inline function get_SIX_66()
		return _six_66.check();
	
	
	public var SIX_67(get, never):Bool;

	inline function get_SIX_67()
		return _six_67.check();
	
	
	public var SIX_68(get, never):Bool;

	inline function get_SIX_68()
		return _six_68.check();
	
	
	public var SIX_69(get, never):Bool;

	inline function get_SIX_69()
		return _six_69.check();



















	public var SIX_1_P(get, never):Bool;

	inline function get_SIX_1_P()
		return _six_1P.check();
	
	public var SIX_2_P(get, never):Bool;

	inline function get_SIX_2_P()
		return _six_2P.check();
	
	public var SIX_3_P(get, never):Bool;

	inline function get_SIX_3_P()
		return _six_3P.check();
	
	
	public var SIX_4_P(get, never):Bool;

	inline function get_SIX_4_P()
		return _six_4P.check();
	
	
	public var SIX_5_P(get, never):Bool;

	inline function get_SIX_5_P()
		return _six_5P.check();
	
	
	public var SIX_6_P(get, never):Bool;

	inline function get_SIX_6_P()
		return _six_6P.check();
	
	
	public var SIX_7_P(get, never):Bool;

	inline function get_SIX_7_P()
		return _six_7P.check();
	
	
	public var SIX_8_P(get, never):Bool;

	inline function get_SIX_8_P()
		return _six_8P.check();
	
	
	public var SIX_9_P(get, never):Bool;

	inline function get_SIX_9_P()
		return _six_1P.check();
	
	
	public var SIX_10_P(get, never):Bool;

	inline function get_SIX_10_P()
		return _six_10P.check();
	
	
	
	public var SIX_11_P(get, never):Bool;

	inline function get_SIX_11_P()
		return _six_11P.check();

	
	public var SIX_12_P(get, never):Bool;
	
	inline function get_SIX_12_P()
		return _six_12P.check();
	
	
	public var SIX_13_P(get, never):Bool;

	inline function get_SIX_13_P()
		return _six_13P.check();
	
	
	public var SIX_14_P(get, never):Bool;

	inline function get_SIX_14_P()
		return _six_14P.check();
	
	
	public var SIX_15_P(get, never):Bool;

	inline function get_SIX_15_P()
		return _six_15P.check();
	
	
	public var SIX_16_P(get, never):Bool;

	inline function get_SIX_16_P()
		return _six_16P.check();
	
	
	public var SIX_17_P(get, never):Bool;

	inline function get_SIX_17_P()
		return _six_17P.check();
	
	
	public var SIX_18_P(get, never):Bool;

	inline function get_SIX_18_P()
		return _six_18P.check();
	
	
	public var SIX_19_P(get, never):Bool;

	inline function get_SIX_19_P()
		return _six_19P.check();
	
	
	public var SIX_20_P(get, never):Bool;

	inline function get_SIX_20_P()
		return _six_20P.check();


	public var SIX_21_P(get, never):Bool;

	inline function get_SIX_21_P()
		return _six_21P.check();
	
	
	public var SIX_22_P(get, never):Bool;

	inline function get_SIX_22_P()
		return _six_22P.check();
	
	
	public var SIX_23_P(get, never):Bool;

	inline function get_SIX_23_P()
		return _six_23P.check();
	
	
	public var SIX_24_P(get, never):Bool;

	inline function get_SIX_24_P()
		return _six_24P.check();
	
	
	public var SIX_25_P(get, never):Bool;

	inline function get_SIX_25_P()
		return _six_25P.check();
	
	
	public var SIX_26_P(get, never):Bool;

	inline function get_SIX_26_P()
		return _six_26P.check();
	
	
	public var SIX_27_P(get, never):Bool;

	inline function get_SIX_27_P()
		return _six_27P.check();
	
	
	public var SIX_28_P(get, never):Bool;

	inline function get_SIX_28_P()
		return _six_28P.check();
	
	
	public var SIX_29_P(get, never):Bool;

	inline function get_SIX_29_P()
		return _six_29P.check();
	
	
	public var SIX_30_P(get, never):Bool;

	inline function get_SIX_30_P()
		return _six_30P.check();

	public var SIX_31_P(get, never):Bool;

	inline function get_SIX_31_P()
		return _six_31P.check();
	
	
	public var SIX_32_P(get, never):Bool;

	inline function get_SIX_32_P()
		return _six_32P.check();
	
	
	public var SIX_33_P(get, never):Bool;

	inline function get_SIX_33_P()
		return _six_33P.check();
	
	
	public var SIX_34_P(get, never):Bool;

	inline function get_SIX_34_P()
		return _six_34P.check();
	
	
	public var SIX_35_P(get, never):Bool;

	inline function get_SIX_35_P()
		return _six_35P.check();
	
	
	public var SIX_36_P(get, never):Bool;

	inline function get_SIX_36_P()
		return _six_36P.check();
	
	
	public var SIX_37_P(get, never):Bool;

	inline function get_SIX_37_P()
		return _six_37P.check();
	
	
	public var SIX_38_P(get, never):Bool;

	inline function get_SIX_38_P()
		return _six_38P.check();
	
	
	public var SIX_39_P(get, never):Bool;

	inline function get_SIX_39_P()
		return _six_39P.check();
	
	
	
	public var SIX_40_P(get, never):Bool;

	inline function get_SIX_40_P()
		return _six_40P.check();
	
	public var SIX_41_P(get, never):Bool;
	
	inline function get_SIX_41_P()
		return _six_41P.check();
	
	
	public var SIX_42_P(get, never):Bool;

	inline function get_SIX_42_P()
		return _six_42P.check();
	
	public var SIX_43_P(get, never):Bool;

	inline function get_SIX_43_P()
		return _six_43P.check();
	
	
	public var SIX_44_P(get, never):Bool;

	inline function get_SIX_44_P()
		return _six_44P.check();
	
	
	public var SIX_45_P(get, never):Bool;

	inline function get_SIX_45_P()
		return _six_45P.check();
	
	
	public var SIX_46_P(get, never):Bool;

	inline function get_SIX_46_P()
		return _six_46P.check();
	
	
	public var SIX_47_P(get, never):Bool;

	inline function get_SIX_47_P()
		return _six_47P.check();
	
	
	public var SIX_48_P(get, never):Bool;

	inline function get_SIX_48_P()
		return _six_48P.check();
	
	
	public var SIX_49_P(get, never):Bool;

	inline function get_SIX_49_P()
		return _six_49P.check();
	
	
	public var SIX_50_P(get, never):Bool;

	inline function get_SIX_50_P()
		return _six_50P.check();
	
	public var SIX_51_P(get, never):Bool;
	
	
	inline function get_SIX_51_P()
		return _six_51P.check();
	
	
	public var SIX_52_P(get, never):Bool;

	inline function get_SIX_52_P()
		return _six_52P.check();
	
	
	public var SIX_53_P(get, never):Bool;

	inline function get_SIX_53_P()
		return _six_53P.check();
	
	
	public var SIX_54_P(get, never):Bool;

	inline function get_SIX_54_P()
		return _six_54P.check();

	
	public var SIX_55_P(get, never):Bool;

	inline function get_SIX_55_P()
		return _six_55P.check();
	
	
	public var SIX_56_P(get, never):Bool;

	inline function get_SIX_56_P()
		return _six_56P.check();
	
	
	public var SIX_57_P(get, never):Bool;

	inline function get_SIX_57_P()
		return _six_57P.check();
	
	
	public var SIX_58_P(get, never):Bool;

	inline function get_SIX_58_P()
		return _six_58P.check();
	
	
	public var SIX_59_P(get, never):Bool;

	inline function get_SIX_59_P()
		return _six_59P.check();
	
	
	public var SIX_60_P(get, never):Bool;

	inline function get_SIX_60_P()
		return _six_60P.check();

	public var SIX_61_P(get, never):Bool;

	inline function get_SIX_61_P()
		return _six_61P.check();
	
	
	public var SIX_62_P(get, never):Bool;

	inline function get_SIX_62_P()
		return _six_62P.check();
	
	
	public var SIX_63_P(get, never):Bool;

	inline function get_SIX_63_P()
		return _six_63P.check();
	
	
	public var SIX_64_P(get, never):Bool;

	inline function get_SIX_64_P()
		return _six_64P.check();
	
	
	public var SIX_65_P(get, never):Bool;

	inline function get_SIX_65_P()
		return _six_65P.check();
	
	
	public var SIX_66_P(get, never):Bool;

	inline function get_SIX_66_P()
		return _six_66P.check();
	
	
	public var SIX_67_P(get, never):Bool;

	inline function get_SIX_67_P()
		return _six_67P.check();
	
	
	public var SIX_68_P(get, never):Bool;

	inline function get_SIX_68_P()
		return _six_68P.check();
	
	
	public var SIX_69_P(get, never):Bool;

	inline function get_SIX_69_P()
		return _six_69P.check();



	public var SIX_1_R(get, never):Bool;

	inline function get_SIX_1_R()
		return _six_1R.check();
	
	public var SIX_2_R(get, never):Bool;

	inline function get_SIX_2_R()
		return _six_2R.check();
	
	public var SIX_3_R(get, never):Bool;

	inline function get_SIX_3_R()
		return _six_3R.check();
	
	
	public var SIX_4_R(get, never):Bool;

	inline function get_SIX_4_R()
		return _six_4R.check();
	
	
	public var SIX_5_R(get, never):Bool;

	inline function get_SIX_5_R()
		return _six_5R.check();
	
	
	public var SIX_6_R(get, never):Bool;

	inline function get_SIX_6_R()
		return _six_6R.check();
	
	
	public var SIX_7_R(get, never):Bool;

	inline function get_SIX_7_R()
		return _six_7R.check();
	
	
	public var SIX_8_R(get, never):Bool;

	inline function get_SIX_8_R()
		return _six_8R.check();
	
	
	public var SIX_9_R(get, never):Bool;

	inline function get_SIX_9_R()
		return _six_1R.check();
	
	
	public var SIX_10_R(get, never):Bool;

	inline function get_SIX_10_R()
		return _six_10R.check();
	
	
	
	public var SIX_11_R(get, never):Bool;

	inline function get_SIX_11_R()
		return _six_11R.check();

	
	public var SIX_12_R(get, never):Bool;
	
	inline function get_SIX_12_R()
		return _six_12R.check();
	
	
	public var SIX_13_R(get, never):Bool;

	inline function get_SIX_13_R()
		return _six_13R.check();
	
	
	public var SIX_14_R(get, never):Bool;

	inline function get_SIX_14_R()
		return _six_14R.check();
	
	
	public var SIX_15_R(get, never):Bool;

	inline function get_SIX_15_R()
		return _six_15R.check();
	
	
	public var SIX_16_R(get, never):Bool;

	inline function get_SIX_16_R()
		return _six_16R.check();
	
	
	public var SIX_17_R(get, never):Bool;

	inline function get_SIX_17_R()
		return _six_17R.check();
	
	
	public var SIX_18_R(get, never):Bool;

	inline function get_SIX_18_R()
		return _six_18R.check();
	
	
	public var SIX_19_R(get, never):Bool;

	inline function get_SIX_19_R()
		return _six_19R.check();
	
	
	public var SIX_20_R(get, never):Bool;

	inline function get_SIX_20_R()
		return _six_20R.check();


	public var SIX_21_R(get, never):Bool;

	inline function get_SIX_21_R()
		return _six_21R.check();
	
	
	public var SIX_22_R(get, never):Bool;

	inline function get_SIX_22_R()
		return _six_22R.check();
	
	
	public var SIX_23_R(get, never):Bool;

	inline function get_SIX_23_R()
		return _six_23R.check();
	
	
	public var SIX_24_R(get, never):Bool;

	inline function get_SIX_24_R()
		return _six_24R.check();
	
	
	public var SIX_25_R(get, never):Bool;

	inline function get_SIX_25_R()
		return _six_25R.check();
	
	
	public var SIX_26_R(get, never):Bool;

	inline function get_SIX_26_R()
		return _six_26R.check();
	
	
	public var SIX_27_R(get, never):Bool;

	inline function get_SIX_27_R()
		return _six_27R.check();
	
	
	public var SIX_28_R(get, never):Bool;

	inline function get_SIX_28_R()
		return _six_28R.check();
	
	
	public var SIX_29_R(get, never):Bool;

	inline function get_SIX_29_R()
		return _six_29R.check();
	
	
	public var SIX_30_R(get, never):Bool;

	inline function get_SIX_30_R()
		return _six_30R.check();

	public var SIX_31_R(get, never):Bool;

	inline function get_SIX_31_R()
		return _six_31R.check();
	
	
	public var SIX_32_R(get, never):Bool;

	inline function get_SIX_32_R()
		return _six_32R.check();
	
	
	public var SIX_33_R(get, never):Bool;

	inline function get_SIX_33_R()
		return _six_33R.check();
	
	
	public var SIX_34_R(get, never):Bool;

	inline function get_SIX_34_R()
		return _six_34R.check();
	
	
	public var SIX_35_R(get, never):Bool;

	inline function get_SIX_35_R()
		return _six_35R.check();
	
	
	public var SIX_36_R(get, never):Bool;

	inline function get_SIX_36_R()
		return _six_36R.check();
	
	
	public var SIX_37_R(get, never):Bool;

	inline function get_SIX_37_R()
		return _six_37R.check();
	
	
	public var SIX_38_R(get, never):Bool;

	inline function get_SIX_38_R()
		return _six_38R.check();
	
	
	public var SIX_39_R(get, never):Bool;

	inline function get_SIX_39_R()
		return _six_39R.check();
	
	
	
	public var SIX_40_R(get, never):Bool;

	inline function get_SIX_40_R()
		return _six_40R.check();
	
	public var SIX_41_R(get, never):Bool;
	
	inline function get_SIX_41_R()
		return _six_41R.check();
	
	
	public var SIX_42_R(get, never):Bool;

	inline function get_SIX_42_R()
		return _six_42R.check();
	
	public var SIX_43_R(get, never):Bool;

	inline function get_SIX_43_R()
		return _six_43R.check();
	
	
	public var SIX_44_R(get, never):Bool;

	inline function get_SIX_44_R()
		return _six_44R.check();
	
	
	public var SIX_45_R(get, never):Bool;

	inline function get_SIX_45_R()
		return _six_45R.check();
	
	
	public var SIX_46_R(get, never):Bool;

	inline function get_SIX_46_R()
		return _six_46R.check();
	
	
	public var SIX_47_R(get, never):Bool;

	inline function get_SIX_47_R()
		return _six_47R.check();
	
	
	public var SIX_48_R(get, never):Bool;

	inline function get_SIX_48_R()
		return _six_48R.check();
	
	
	public var SIX_49_R(get, never):Bool;

	inline function get_SIX_49_R()
		return _six_49R.check();
	
	
	public var SIX_50_R(get, never):Bool;

	inline function get_SIX_50_R()
		return _six_50R.check();
	
	public var SIX_51_R(get, never):Bool;
	
	
	inline function get_SIX_51_R()
		return _six_51R.check();
	
	
	public var SIX_52_R(get, never):Bool;

	inline function get_SIX_52_R()
		return _six_52R.check();
	
	
	public var SIX_53_R(get, never):Bool;

	inline function get_SIX_53_R()
		return _six_53R.check();
	
	
	public var SIX_54_R(get, never):Bool;

	inline function get_SIX_54_R()
		return _six_54R.check();

	
	public var SIX_55_R(get, never):Bool;

	inline function get_SIX_55_R()
		return _six_55R.check();
	
	
	public var SIX_56_R(get, never):Bool;

	inline function get_SIX_56_R()
		return _six_56R.check();
	
	
	public var SIX_57_R(get, never):Bool;

	inline function get_SIX_57_R()
		return _six_57R.check();
	
	
	public var SIX_58_R(get, never):Bool;

	inline function get_SIX_58_R()
		return _six_58R.check();
	
	
	public var SIX_59_R(get, never):Bool;

	inline function get_SIX_59_R()
		return _six_59R.check();
	
	
	public var SIX_60_R(get, never):Bool;

	inline function get_SIX_60_R()
		return _six_60R.check();

	public var SIX_61_R(get, never):Bool;

	inline function get_SIX_61_R()
		return _six_61R.check();
	
	
	public var SIX_62_R(get, never):Bool;

	inline function get_SIX_62_R()
		return _six_62R.check();
	
	
	public var SIX_63_R(get, never):Bool;

	inline function get_SIX_63_R()
		return _six_63R.check();
	
	
	public var SIX_64_R(get, never):Bool;

	inline function get_SIX_64_R()
		return _six_64R.check();
	
	
	public var SIX_65_R(get, never):Bool;

	inline function get_SIX_65_R()
		return _six_65R.check();
	
	
	public var SIX_66_R(get, never):Bool;

	inline function get_SIX_66_R()
		return _six_66R.check();
	
	
	public var SIX_67_R(get, never):Bool;

	inline function get_SIX_67_R()
		return _six_67R.check();
	
	
	public var SIX_68_R(get, never):Bool;

	inline function get_SIX_68_R()
		return _six_68R.check();
	
	
	public var SIX_69_R(get, never):Bool;

	inline function get_SIX_69_R()
		return _six_69R.check();
























	public var UI_UP(get, never):Bool;

	inline function get_UI_UP()
		return _ui_up.check();

	public var UI_LEFT(get, never):Bool;

	inline function get_UI_LEFT()
		return _ui_left.check();

	public var UI_RIGHT(get, never):Bool;

	inline function get_UI_RIGHT()
		return _ui_right.check();

	public var UI_DOWN(get, never):Bool;

	inline function get_UI_DOWN()
		return _ui_down.check();

	public var UI_UP_P(get, never):Bool;

	inline function get_UI_UP_P()
		return _ui_upP.check();

	public var UI_LEFT_P(get, never):Bool;

	inline function get_UI_LEFT_P()
		return _ui_leftP.check();

	public var UI_RIGHT_P(get, never):Bool;

	inline function get_UI_RIGHT_P()
		return _ui_rightP.check();

	public var UI_DOWN_P(get, never):Bool;

	inline function get_UI_DOWN_P()
		return _ui_downP.check();

	public var UI_UP_R(get, never):Bool;

	inline function get_UI_UP_R()
		return _ui_upR.check();

	public var UI_LEFT_R(get, never):Bool;

	inline function get_UI_LEFT_R()
		return _ui_leftR.check();

	public var UI_RIGHT_R(get, never):Bool;

	inline function get_UI_RIGHT_R()
		return _ui_rightR.check();

	public var UI_DOWN_R(get, never):Bool;

	inline function get_UI_DOWN_R()
		return _ui_downR.check();

	public var NOTE_UP(get, never):Bool;

	inline function get_NOTE_UP()
		return _note_up.check();

	public var NOTE_LEFT(get, never):Bool;

	inline function get_NOTE_LEFT()
		return _note_left.check();

	public var NOTE_RIGHT(get, never):Bool;

	inline function get_NOTE_RIGHT()
		return _note_right.check();

	public var NOTE_DOWN(get, never):Bool;

	inline function get_NOTE_DOWN()
		return _note_down.check();

	public var NOTE_UP_P(get, never):Bool;

	inline function get_NOTE_UP_P()
		return _note_upP.check();

	public var NOTE_LEFT_P(get, never):Bool;

	inline function get_NOTE_LEFT_P()
		return _note_leftP.check();

	public var NOTE_RIGHT_P(get, never):Bool;

	inline function get_NOTE_RIGHT_P()
		return _note_rightP.check();

	public var NOTE_DOWN_P(get, never):Bool;

	inline function get_NOTE_DOWN_P()
		return _note_downP.check();

	public var NOTE_UP_R(get, never):Bool;

	inline function get_NOTE_UP_R()
		return _note_upR.check();

	public var NOTE_LEFT_R(get, never):Bool;

	inline function get_NOTE_LEFT_R()
		return _note_leftR.check();

	public var NOTE_RIGHT_R(get, never):Bool;

	inline function get_NOTE_RIGHT_R()
		return _note_rightR.check();

	public var NOTE_DOWN_R(get, never):Bool;

	inline function get_NOTE_DOWN_R()
		return _note_downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var A1(get, never):Bool; inline function get_A1() {return _a1.check();}
	public var A2(get, never):Bool; inline function get_A2() {return _a2.check();}
	public var A3(get, never):Bool; inline function get_A3() {return _a3.check();}
	public var A4(get, never):Bool; inline function get_A4() {return _a4.check();}
	public var A5(get, never):Bool; inline function get_A5() {return _a5.check();}
	public var A6(get, never):Bool; inline function get_A6() {return _a6.check();}
	public var A7(get, never):Bool; inline function get_A7() {return _a7.check();}

	public var A1_P(get, never):Bool; inline function get_A1_P() {return _a1P.check();}
	public var A2_P(get, never):Bool; inline function get_A2_P() {return _a2P.check();}
	public var A3_P(get, never):Bool; inline function get_A3_P() {return _a3P.check();}
	public var A4_P(get, never):Bool; inline function get_A4_P() {return _a4P.check();}
	public var A5_P(get, never):Bool; inline function get_A5_P() {return _a5P.check();}
	public var A6_P(get, never):Bool; inline function get_A6_P() {return _a6P.check();}
	public var A7_P(get, never):Bool; inline function get_A7_P() {return _a7P.check();}

	public var A1_R(get, never):Bool; inline function get_A1_R() {return _a1R.check();}
	public var A2_R(get, never):Bool; inline function get_A2_R() {return _a2R.check();}
	public var A3_R(get, never):Bool; inline function get_A3_R() {return _a3R.check();}
	public var A4_R(get, never):Bool; inline function get_A4_R() {return _a4R.check();}
	public var A5_R(get, never):Bool; inline function get_A5_R() {return _a5R.check();}
	public var A6_R(get, never):Bool; inline function get_A6_R() {return _a6R.check();}
	public var A7_R(get, never):Bool; inline function get_A7_R() {return _a7R.check();}


	public var B1(get, never):Bool; inline function get_B1() {return _b1.check();}
	public var B2(get, never):Bool; inline function get_B2() {return _b2.check();}
	public var B3(get, never):Bool; inline function get_B3() {return _b3.check();}
	public var B4(get, never):Bool; inline function get_B4() {return _b4.check();}
	public var B5(get, never):Bool; inline function get_B5() {return _b5.check();}
	public var B6(get, never):Bool; inline function get_B6() {return _b6.check();}
	public var B7(get, never):Bool; inline function get_B7() {return _b7.check();}
	public var B8(get, never):Bool; inline function get_B8() {return _b8.check();}
	public var B9(get, never):Bool; inline function get_B9() {return _b9.check();}

	public var B1_P(get, never):Bool; inline function get_B1_P() {return _b1P.check();}
	public var B2_P(get, never):Bool; inline function get_B2_P() {return _b2P.check();}
	public var B3_P(get, never):Bool; inline function get_B3_P() {return _b3P.check();}
	public var B4_P(get, never):Bool; inline function get_B4_P() {return _b4P.check();}
	public var B5_P(get, never):Bool; inline function get_B5_P() {return _b5P.check();}
	public var B6_P(get, never):Bool; inline function get_B6_P() {return _b6P.check();}
	public var B7_P(get, never):Bool; inline function get_B7_P() {return _b7P.check();}
	public var B8_P(get, never):Bool; inline function get_B8_P() {return _b8P.check();}
	public var B9_P(get, never):Bool; inline function get_B9_P() {return _b9P.check();}

	public var B1_R(get, never):Bool; inline function get_B1_R() {return _b1R.check();}
	public var B2_R(get, never):Bool; inline function get_B2_R() {return _b2R.check();}
	public var B3_R(get, never):Bool; inline function get_B3_R() {return _b3R.check();}
	public var B4_R(get, never):Bool; inline function get_B4_R() {return _b4R.check();}
	public var B5_R(get, never):Bool; inline function get_B5_R() {return _b5R.check();}
	public var B6_R(get, never):Bool; inline function get_B6_R() {return _b6R.check();}
	public var B7_R(get, never):Bool; inline function get_B7_R() {return _b7R.check();}
	public var B8_R(get, never):Bool; inline function get_B8_R() {return _b8R.check();}
	public var B9_R(get, never):Bool; inline function get_B9_R() {return _b9R.check();}

	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		// 69 Key
		add(_six_1);
		add(_six_2);
		add(_six_3);
		add(_six_4);
		add(_six_5);
		add(_six_6);
		add(_six_7);
		add(_six_8);
		add(_six_9);
		add(_six_10);
		add(_six_11);
		add(_six_12);
		add(_six_13);
		add(_six_14);
		add(_six_15);
		add(_six_16);
		add(_six_17);
		add(_six_18);
		add(_six_19);
		add(_six_20);
		add(_six_21);
		add(_six_22);
		add(_six_23);
		add(_six_24);
		add(_six_25);
		add(_six_26);
		add(_six_27);
		add(_six_28);
		add(_six_29);
		add(_six_30);
		add(_six_31);
		add(_six_32);
		add(_six_33);
		add(_six_34);
		add(_six_35);
		add(_six_36);
		add(_six_37);
		add(_six_38);
		add(_six_39);
		add(_six_40);
		add(_six_41);
		add(_six_42);
		add(_six_43);
		add(_six_44);
		add(_six_45);
		add(_six_46);
		add(_six_47);
		add(_six_48);
		add(_six_49);
		add(_six_50);
		add(_six_51);
		add(_six_52);
		add(_six_53);
		add(_six_54);
		add(_six_55);
		add(_six_56);
		add(_six_57);
		add(_six_58);
		add(_six_59);
		add(_six_60);
		add(_six_61);
		add(_six_62);
		add(_six_63);
		add(_six_64);
		add(_six_65);
		add(_six_66);
		add(_six_67);
		add(_six_68);
		add(_six_69);
		
		add(_six_1P);
		add(_six_2P);
		add(_six_3P);
		add(_six_4P);
		add(_six_5P);
		add(_six_6P);
		add(_six_7P);
		add(_six_8P);
		add(_six_9P);
		add(_six_10P);
		add(_six_11P);
		add(_six_12P);
		add(_six_13P);
		add(_six_14P);
		add(_six_15P);
		add(_six_16P);
		add(_six_17P);
		add(_six_18P);
		add(_six_19P);
		add(_six_20P);
		add(_six_21P);
		add(_six_22P);
		add(_six_23P);
		add(_six_24P);
		add(_six_25P);
		add(_six_26P);
		add(_six_27P);
		add(_six_28P);
		add(_six_29P);
		add(_six_30P);
		add(_six_31P);
		add(_six_32P);
		add(_six_33P);
		add(_six_34P);
		add(_six_35P);
		add(_six_36P);
		add(_six_37P);
		add(_six_38P);
		add(_six_39P);
		add(_six_40P);
		add(_six_41P);
		add(_six_42P);
		add(_six_43P);
		add(_six_44P);
		add(_six_45P);
		add(_six_46P);
		add(_six_47P);
		add(_six_48P);
		add(_six_49P);
		add(_six_50P);
		add(_six_51P);
		add(_six_52P);
		add(_six_53P);
		add(_six_54P);
		add(_six_55P);
		add(_six_56P);
		add(_six_57P);
		add(_six_58P);
		add(_six_59P);
		add(_six_60P);
		add(_six_61P);
		add(_six_62P);
		add(_six_63P);
		add(_six_64P);
		add(_six_65P);
		add(_six_66P);
		add(_six_67P);
		add(_six_68P);
		add(_six_69P);
		
		
		
		
		
		add(_six_1R);
		add(_six_2R);
		add(_six_3R);
		add(_six_4R);
		add(_six_5R);
		add(_six_6R);
		add(_six_7R);
		add(_six_8R);
		add(_six_9R);
		add(_six_10R);
		add(_six_11R);
		add(_six_12R);
		add(_six_13R);
		add(_six_14R);
		add(_six_15R);
		add(_six_16R);
		add(_six_17R);
		add(_six_18R);
		add(_six_19R);
		add(_six_20R);
		add(_six_21R);
		add(_six_22R);
		add(_six_23R);
		add(_six_24R);
		add(_six_25R);
		add(_six_26R);
		add(_six_27R);
		add(_six_28R);
		add(_six_29R);
		add(_six_30R);
		add(_six_31R);
		add(_six_32R);
		add(_six_33R);
		add(_six_34R);
		add(_six_35R);
		add(_six_36R);
		add(_six_37R);
		add(_six_38R);
		add(_six_39R);
		add(_six_40R);
		add(_six_41R);
		add(_six_42R);
		add(_six_43R);
		add(_six_44R);
		add(_six_45R);
		add(_six_46R);
		add(_six_47R);
		add(_six_48R);
		add(_six_49R);
		add(_six_50R);
		add(_six_51R);
		add(_six_52R);
		add(_six_53R);
		add(_six_54R);
		add(_six_55R);
		add(_six_56R);
		add(_six_57R);
		add(_six_58R);
		add(_six_59R);
		add(_six_60R);
		add(_six_61R);
		add(_six_62R);
		add(_six_63R);
		add(_six_64R);
		add(_six_65R);
		add(_six_66R);
		add(_six_67R);
		add(_six_68R);
		add(_six_69R);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);


		// 69 Key
		add(_six_1);
		add(_six_2);
		add(_six_3);
		add(_six_4);
		add(_six_5);
		add(_six_6);
		add(_six_7);
		add(_six_8);
		add(_six_9);
		add(_six_10);
		add(_six_11);
		add(_six_12);
		add(_six_13);
		add(_six_14);
		add(_six_15);
		add(_six_16);
		add(_six_17);
		add(_six_18);
		add(_six_19);
		add(_six_20);
		add(_six_21);
		add(_six_22);
		add(_six_23);
		add(_six_24);
		add(_six_25);
		add(_six_26);
		add(_six_27);
		add(_six_28);
		add(_six_29);
		add(_six_30);
		add(_six_31);
		add(_six_32);
		add(_six_33);
		add(_six_34);
		add(_six_35);
		add(_six_36);
		add(_six_37);
		add(_six_38);
		add(_six_39);
		add(_six_40);
		add(_six_41);
		add(_six_42);
		add(_six_43);
		add(_six_44);
		add(_six_45);
		add(_six_46);
		add(_six_47);
		add(_six_48);
		add(_six_49);
		add(_six_50);
		add(_six_51);
		add(_six_52);
		add(_six_53);
		add(_six_54);
		add(_six_55);
		add(_six_56);
		add(_six_57);
		add(_six_58);
		add(_six_59);
		add(_six_60);
		add(_six_61);
		add(_six_62);
		add(_six_63);
		add(_six_64);
		add(_six_65);
		add(_six_66);
		add(_six_67);
		add(_six_68);
		add(_six_69);
		
		add(_six_1P);
		add(_six_2P);
		add(_six_3P);
		add(_six_4P);
		add(_six_5P);
		add(_six_6P);
		add(_six_7P);
		add(_six_8P);
		add(_six_9P);
		add(_six_10P);
		add(_six_11P);
		add(_six_12P);
		add(_six_13P);
		add(_six_14P);
		add(_six_15P);
		add(_six_16P);
		add(_six_17P);
		add(_six_18P);
		add(_six_19P);
		add(_six_20P);
		add(_six_21P);
		add(_six_22P);
		add(_six_23P);
		add(_six_24P);
		add(_six_25P);
		add(_six_26P);
		add(_six_27P);
		add(_six_28P);
		add(_six_29P);
		add(_six_30P);
		add(_six_31P);
		add(_six_32P);
		add(_six_33P);
		add(_six_34P);
		add(_six_35P);
		add(_six_36P);
		add(_six_37P);
		add(_six_38P);
		add(_six_39P);
		add(_six_40P);
		add(_six_41P);
		add(_six_42P);
		add(_six_43P);
		add(_six_44P);
		add(_six_45P);
		add(_six_46P);
		add(_six_47P);
		add(_six_48P);
		add(_six_49P);
		add(_six_50P);
		add(_six_51P);
		add(_six_52P);
		add(_six_53P);
		add(_six_54P);
		add(_six_55P);
		add(_six_56P);
		add(_six_57P);
		add(_six_58P);
		add(_six_59P);
		add(_six_60P);
		add(_six_61P);
		add(_six_62P);
		add(_six_63P);
		add(_six_64P);
		add(_six_65P);
		add(_six_66P);
		add(_six_67P);
		add(_six_68P);
		add(_six_69P);
		
		
		
		
		
		add(_six_1R);
		add(_six_2R);
		add(_six_3R);
		add(_six_4R);
		add(_six_5R);
		add(_six_6R);
		add(_six_7R);
		add(_six_8R);
		add(_six_9R);
		add(_six_10R);
		add(_six_11R);
		add(_six_12R);
		add(_six_13R);
		add(_six_14R);
		add(_six_15R);
		add(_six_16R);
		add(_six_17R);
		add(_six_18R);
		add(_six_19R);
		add(_six_20R);
		add(_six_21R);
		add(_six_22R);
		add(_six_23R);
		add(_six_24R);
		add(_six_25R);
		add(_six_26R);
		add(_six_27R);
		add(_six_28R);
		add(_six_29R);
		add(_six_30R);
		add(_six_31R);
		add(_six_32R);
		add(_six_33R);
		add(_six_34R);
		add(_six_35R);
		add(_six_36R);
		add(_six_37R);
		add(_six_38R);
		add(_six_39R);
		add(_six_40R);
		add(_six_41R);
		add(_six_42R);
		add(_six_43R);
		add(_six_44R);
		add(_six_45R);
		add(_six_46R);
		add(_six_47R);
		add(_six_48R);
		add(_six_49R);
		add(_six_50R);
		add(_six_51R);
		add(_six_52R);
		add(_six_53R);
		add(_six_54R);
		add(_six_55R);
		add(_six_56R);
		add(_six_57R);
		add(_six_58R);
		add(_six_59R);
		add(_six_60R);
		add(_six_61R);
		add(_six_62R);
		add(_six_63R);
		add(_six_64R);
		add(_six_65R);
		add(_six_66R);
		add(_six_67R);
		add(_six_68R);
		add(_six_69R);
		
		
		
		
		
		
		
		
		
		
		
		
		add(_ui_up);
		add(_ui_left);
		add(_ui_right);
		add(_ui_down);
		add(_ui_upP);
		add(_ui_leftP);
		add(_ui_rightP);
		add(_ui_downP);
		add(_ui_upR);
		add(_ui_leftR);
		add(_ui_rightR);
		add(_ui_downR);
		add(_note_up);
		add(_note_left);
		add(_note_right);
		add(_note_down);
		add(_note_upP);
		add(_note_leftP);
		add(_note_rightP);
		add(_note_downP);
		add(_note_upR);
		add(_note_leftR);
		add(_note_rightR);
		add(_note_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);

		add(_a1);
		add(_a2);
		add(_a3);
		add(_a4);
		add(_a5);
		add(_a6);
		add(_a7);

		add(_a1P);
		add(_a2P);
		add(_a3P);
		add(_a4P);
		add(_a5P);
		add(_a6P);
		add(_a7P);

		add(_a1R);
		add(_a2R);
		add(_a3R);
		add(_a4R);
		add(_a5R);
		add(_a6R);
		add(_a7R);


		add(_b1);
		add(_b2);
		add(_b3);
		add(_b4);
		add(_b5);
		add(_b6);
		add(_b7);
		add(_b8);
		add(_b9);

		add(_b1P);
		add(_b2P);
		add(_b3P);
		add(_b4P);
		add(_b5P);
		add(_b6P);
		add(_b7P);
		add(_b8P);
		add(_b9P);

		add(_b1R);
		add(_b2R);
		add(_b3R);
		add(_b4R);
		add(_b5R);
		add(_b6R);
		add(_b7R);
		add(_b8R);
		add(_b9R);

		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case SIX_1: _six_1;
			case SIX_2: _six_2;
			case SIX_3: _six_3;
			case SIX_4: _six_4;
			case SIX_5: _six_5;
			case SIX_6: _six_6;
			case SIX_7: _six_7;
			case SIX_8: _six_8;
			case SIX_9: _six_9;
			case SIX_10: _six_10;
			case SIX_11: _six_11;
			case SIX_12: _six_12;
			case SIX_13: _six_13;
			case SIX_14: _six_14;
			case SIX_15: _six_15;
			case SIX_16: _six_16;
			case SIX_17: _six_17;
			case SIX_18: _six_18;
			case SIX_19: _six_19;
			case SIX_20: _six_20;
			case SIX_21: _six_21;
			case SIX_22: _six_22;
			case SIX_23: _six_23;
			case SIX_24: _six_24;
			case SIX_25: _six_25;
			case SIX_26: _six_26;
			case SIX_27: _six_27;
			case SIX_28: _six_28;
			case SIX_29: _six_29;
			case SIX_30: _six_30;
			case SIX_31: _six_31;
			case SIX_32: _six_32;
			case SIX_33: _six_33;
			case SIX_34: _six_34;
			case SIX_35: _six_35;
			case SIX_36: _six_36;
			case SIX_37: _six_37;
			case SIX_38: _six_38;
			case SIX_39: _six_39;
			case SIX_40: _six_40;
			case SIX_41: _six_41;
			case SIX_42: _six_42;
			case SIX_43: _six_43;
			case SIX_44: _six_44;
			case SIX_45: _six_45;
			case SIX_46: _six_46;
			case SIX_47: _six_47;
			case SIX_48: _six_48;
			case SIX_49: _six_49;
			case SIX_50: _six_50;
			case SIX_51: _six_51;
			case SIX_52: _six_52;
			case SIX_53: _six_53;
			case SIX_54: _six_54;
			case SIX_55: _six_55;
			case SIX_56: _six_56;
			case SIX_57: _six_57;
			case SIX_58: _six_58;
			case SIX_59: _six_59;
			case SIX_60: _six_60;
			case SIX_61: _six_61;
			case SIX_62: _six_62;
			case SIX_63: _six_63;
			case SIX_64: _six_64;
			case SIX_65: _six_65;
			case SIX_66: _six_66;
			case SIX_67: _six_67;
			case SIX_68: _six_68;
			case SIX_69: _six_69;
			
			
			
			
			
			
			
			
			
			
			
			
			
			case UI_UP: _ui_up;
			case UI_DOWN: _ui_down;
			case UI_LEFT: _ui_left;
			case UI_RIGHT: _ui_right;
			case NOTE_UP: _note_up;
			case NOTE_DOWN: _note_down;
			case NOTE_LEFT: _note_left;
			case NOTE_RIGHT: _note_right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;

			case A1: _a1;
			case A2: _a2;
			case A3: _a3;
			case A4: _a4;
			case A5: _a5;
			case A6: _a6;
			case A7: _a7;


			case B1: _b1;
			case B2: _b2;
			case B3: _b3;
			case B4: _b4;
			case B5: _b5;
			case B6: _b6;
			case B7: _b7;
			case B8: _b8;
			case B9: _b9;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case SIX_1:
				func(_six_1, PRESSED);
				func(_six_1P, JUST_PRESSED);
				func(_six_1R, JUST_RELEASED);
				
			case SIX_2:
				func(_six_2, PRESSED);
				func(_six_2P, JUST_PRESSED);
				func(_six_2R, JUST_RELEASED);
				
			case SIX_3:
				func(_six_3, PRESSED);
				func(_six_3P, JUST_PRESSED);
				func(_six_3R, JUST_RELEASED);
				
			case SIX_4:
				func(_six_4, PRESSED);
				func(_six_4P, JUST_PRESSED);
				func(_six_4R, JUST_RELEASED);
				
			case SIX_5:
				func(_six_5, PRESSED);
				func(_six_5P, JUST_PRESSED);
				func(_six_5R, JUST_RELEASED);
				
			case SIX_6:
				func(_six_6, PRESSED);
				func(_six_6P, JUST_PRESSED);
				func(_six_6R, JUST_RELEASED);
				
			case SIX_7:
				func(_six_7, PRESSED);
				func(_six_7P, JUST_PRESSED);
				func(_six_7R, JUST_RELEASED);
				
			case SIX_8:
				func(_six_8, PRESSED);
				func(_six_8P, JUST_PRESSED);
				func(_six_8R, JUST_RELEASED);
				
			case SIX_9:
				func(_six_9, PRESSED);
				func(_six_9P, JUST_PRESSED);
				func(_six_9R, JUST_RELEASED);
				
			case SIX_10:
				func(_six_10, PRESSED);
				func(_six_10P, JUST_PRESSED);
				func(_six_10R, JUST_RELEASED);
				
			case SIX_11:
				func(_six_11, PRESSED);
				func(_six_11P, JUST_PRESSED);
				func(_six_11R, JUST_RELEASED);
				
			case SIX_12:
				func(_six_12, PRESSED);
				func(_six_12P, JUST_PRESSED);
				func(_six_12R, JUST_RELEASED);
				
			case SIX_13:
				func(_six_13, PRESSED);
				func(_six_13P, JUST_PRESSED);
				func(_six_13R, JUST_RELEASED);
				
			case SIX_14:
				func(_six_14, PRESSED);
				func(_six_14P, JUST_PRESSED);
				func(_six_14R, JUST_RELEASED);
				
			case SIX_15:
				func(_six_15, PRESSED);
				func(_six_15P, JUST_PRESSED);
				func(_six_15R, JUST_RELEASED);
				
			case SIX_16:
				func(_six_16, PRESSED);
				func(_six_16P, JUST_PRESSED);
				func(_six_16R, JUST_RELEASED);
				
			case SIX_17:
				func(_six_17, PRESSED);
				func(_six_17P, JUST_PRESSED);
				func(_six_17R, JUST_RELEASED);
				
			case SIX_18:
				func(_six_18, PRESSED);
				func(_six_18P, JUST_PRESSED);
				func(_six_18R, JUST_RELEASED);
				
			case SIX_19:
				func(_six_19, PRESSED);
				func(_six_19P, JUST_PRESSED);
				func(_six_19R, JUST_RELEASED);
				
			case SIX_20:
				func(_six_20, PRESSED);
				func(_six_20P, JUST_PRESSED);
				func(_six_20R, JUST_RELEASED);
				
			case SIX_21:
				func(_six_21, PRESSED);
				func(_six_21P, JUST_PRESSED);
				func(_six_21R, JUST_RELEASED);
				
			case SIX_22:
				func(_six_22, PRESSED);
				func(_six_22P, JUST_PRESSED);
				func(_six_22R, JUST_RELEASED);
				
			case SIX_23:
				func(_six_23, PRESSED);
				func(_six_23P, JUST_PRESSED);
				func(_six_23R, JUST_RELEASED);
				
			case SIX_24:
				func(_six_24, PRESSED);
				func(_six_24P, JUST_PRESSED);
				func(_six_24R, JUST_RELEASED);
				
			case SIX_25:
				func(_six_25, PRESSED);
				func(_six_25P, JUST_PRESSED);
				func(_six_25R, JUST_RELEASED);
				
			case SIX_26:
				func(_six_26, PRESSED);
				func(_six_26P, JUST_PRESSED);
				func(_six_26R, JUST_RELEASED);
				
			case SIX_27:
				func(_six_27, PRESSED);
				func(_six_27P, JUST_PRESSED);
				func(_six_27R, JUST_RELEASED);
				
			case SIX_28:
				func(_six_28, PRESSED);
				func(_six_28P, JUST_PRESSED);
				func(_six_28R, JUST_RELEASED);
				
			case SIX_29:
				func(_six_29, PRESSED);
				func(_six_29P, JUST_PRESSED);
				func(_six_29R, JUST_RELEASED);
				
			case SIX_30:
				func(_six_30, PRESSED);
				func(_six_30P, JUST_PRESSED);
				func(_six_30R, JUST_RELEASED);
				
			case SIX_31:
				func(_six_31, PRESSED);
				func(_six_31P, JUST_PRESSED);
				func(_six_31R, JUST_RELEASED);
				
			case SIX_32:
				func(_six_32, PRESSED);
				func(_six_32P, JUST_PRESSED);
				func(_six_32R, JUST_RELEASED);
				
			case SIX_33:
				func(_six_33, PRESSED);
				func(_six_33P, JUST_PRESSED);
				func(_six_33R, JUST_RELEASED);
				
			case SIX_34:
				func(_six_34, PRESSED);
				func(_six_34P, JUST_PRESSED);
				func(_six_34R, JUST_RELEASED);
				
			case SIX_35:
				func(_six_35, PRESSED);
				func(_six_35P, JUST_PRESSED);
				func(_six_35R, JUST_RELEASED);
				
			case SIX_36:
				func(_six_36, PRESSED);
				func(_six_36P, JUST_PRESSED);
				func(_six_36R, JUST_RELEASED);
				
			case SIX_37:
				func(_six_37, PRESSED);
				func(_six_37P, JUST_PRESSED);
				func(_six_37R, JUST_RELEASED);
				
			case SIX_38:
				func(_six_38, PRESSED);
				func(_six_38P, JUST_PRESSED);
				func(_six_38R, JUST_RELEASED);
				
			case SIX_39:
				func(_six_39, PRESSED);
				func(_six_39P, JUST_PRESSED);
				func(_six_39R, JUST_RELEASED);
				
			case SIX_40:
				func(_six_40, PRESSED);
				func(_six_40P, JUST_PRESSED);
				func(_six_40R, JUST_RELEASED);
				
			case SIX_41:
				func(_six_41, PRESSED);
				func(_six_41P, JUST_PRESSED);
				func(_six_41R, JUST_RELEASED);
				
			case SIX_42:
				func(_six_42, PRESSED);
				func(_six_42P, JUST_PRESSED);
				func(_six_42R, JUST_RELEASED);
				
			case SIX_43:
				func(_six_43, PRESSED);
				func(_six_43P, JUST_PRESSED);
				func(_six_43R, JUST_RELEASED);
				
			case SIX_44:
				func(_six_44, PRESSED);
				func(_six_44P, JUST_PRESSED);
				func(_six_44R, JUST_RELEASED);
				
			case SIX_45:
				func(_six_45, PRESSED);
				func(_six_45P, JUST_PRESSED);
				func(_six_45R, JUST_RELEASED);
				
			case SIX_46:
				func(_six_46, PRESSED);
				func(_six_46P, JUST_PRESSED);
				func(_six_46R, JUST_RELEASED);
				
			case SIX_47:
				func(_six_47, PRESSED);
				func(_six_47P, JUST_PRESSED);
				func(_six_47R, JUST_RELEASED);
				
			case SIX_48:
				func(_six_48, PRESSED);
				func(_six_48P, JUST_PRESSED);
				func(_six_48R, JUST_RELEASED);
				
			case SIX_49:
				func(_six_49, PRESSED);
				func(_six_49P, JUST_PRESSED);
				func(_six_49R, JUST_RELEASED);
				
			case SIX_50:
				func(_six_50, PRESSED);
				func(_six_50P, JUST_PRESSED);
				func(_six_50R, JUST_RELEASED);
				
			case SIX_51:
				func(_six_51, PRESSED);
				func(_six_51P, JUST_PRESSED);
				func(_six_51R, JUST_RELEASED);
				
			case SIX_52:
				func(_six_52, PRESSED);
				func(_six_52P, JUST_PRESSED);
				func(_six_52R, JUST_RELEASED);
				
			case SIX_53:
				func(_six_53, PRESSED);
				func(_six_53P, JUST_PRESSED);
				func(_six_53R, JUST_RELEASED);
				
			case SIX_54:
				func(_six_54, PRESSED);
				func(_six_54P, JUST_PRESSED);
				func(_six_54R, JUST_RELEASED);
				
			case SIX_55:
				func(_six_55, PRESSED);
				func(_six_55P, JUST_PRESSED);
				func(_six_55R, JUST_RELEASED);
				
			case SIX_56:
				func(_six_56, PRESSED);
				func(_six_56P, JUST_PRESSED);
				func(_six_56R, JUST_RELEASED);
				
			case SIX_57:
				func(_six_57, PRESSED);
				func(_six_57P, JUST_PRESSED);
				func(_six_57R, JUST_RELEASED);
				
			case SIX_58:
				func(_six_58, PRESSED);
				func(_six_58P, JUST_PRESSED);
				func(_six_58R, JUST_RELEASED);
				
			case SIX_59:
				func(_six_59, PRESSED);
				func(_six_59P, JUST_PRESSED);
				func(_six_59R, JUST_RELEASED);
				
			case SIX_60:
				func(_six_60, PRESSED);
				func(_six_60P, JUST_PRESSED);
				func(_six_60R, JUST_RELEASED);
				
			case SIX_61:
				func(_six_61, PRESSED);
				func(_six_61P, JUST_PRESSED);
				func(_six_61R, JUST_RELEASED);
				
			case SIX_62:
				func(_six_62, PRESSED);
				func(_six_62P, JUST_PRESSED);
				func(_six_62R, JUST_RELEASED);
				
			case SIX_63:
				func(_six_63, PRESSED);
				func(_six_63P, JUST_PRESSED);
				func(_six_63R, JUST_RELEASED);
				
			case SIX_64:
				func(_six_64, PRESSED);
				func(_six_64P, JUST_PRESSED);
				func(_six_64R, JUST_RELEASED);
				
			case SIX_65:
				func(_six_65P, PRESSED);
				func(_six_65P, JUST_PRESSED);
				func(_six_65R, JUST_RELEASED);
				
			case SIX_66:
				func(_six_66, PRESSED);
				func(_six_66P, JUST_PRESSED);
				func(_six_66R, JUST_RELEASED);
				
			case SIX_67:
				func(_six_67, PRESSED);
				func(_six_67P, JUST_PRESSED);
				func(_six_67R, JUST_RELEASED);
				
			case SIX_68:
				func(_six_68, PRESSED);
				func(_six_68P, JUST_PRESSED);
				func(_six_68R, JUST_RELEASED);

			case SIX_69:
				func(_six_69, PRESSED);
				func(_six_69P, JUST_PRESSED);
				func(_six_69R, JUST_RELEASED);
				
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			case UI_UP:
				func(_ui_up, PRESSED);
				func(_ui_upP, JUST_PRESSED);
				func(_ui_upR, JUST_RELEASED);
			case UI_LEFT:
				func(_ui_left, PRESSED);
				func(_ui_leftP, JUST_PRESSED);
				func(_ui_leftR, JUST_RELEASED);
			case UI_RIGHT:
				func(_ui_right, PRESSED);
				func(_ui_rightP, JUST_PRESSED);
				func(_ui_rightR, JUST_RELEASED);
			case UI_DOWN:
				func(_ui_down, PRESSED);
				func(_ui_downP, JUST_PRESSED);
				func(_ui_downR, JUST_RELEASED);
			case NOTE_UP:
				func(_note_up, PRESSED);
				func(_note_upP, JUST_PRESSED);
				func(_note_upR, JUST_RELEASED);
			case NOTE_LEFT:
				func(_note_left, PRESSED);
				func(_note_leftP, JUST_PRESSED);
				func(_note_leftR, JUST_RELEASED);
			case NOTE_RIGHT:
				func(_note_right, PRESSED);
				func(_note_rightP, JUST_PRESSED);
				func(_note_rightR, JUST_RELEASED);
			case NOTE_DOWN:
				func(_note_down, PRESSED);
				func(_note_downP, JUST_PRESSED);
				func(_note_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);

			case A1:
				func(_a1, PRESSED);
				func(_a1P, JUST_PRESSED);
				func(_a1R, JUST_RELEASED);
			case A2:
				func(_a2, PRESSED);
				func(_a2P, JUST_PRESSED);
				func(_a2R, JUST_RELEASED);
			case A3:
				func(_a3, PRESSED);
				func(_a3P, JUST_PRESSED);
				func(_a3R, JUST_RELEASED);
			case A4:
				func(_a4, PRESSED);
				func(_a4P, JUST_PRESSED);
				func(_a4R, JUST_RELEASED);
			case A5:
				func(_a5, PRESSED);
				func(_a5P, JUST_PRESSED);
				func(_a5R, JUST_RELEASED);
			case A6:
				func(_a6, PRESSED);
				func(_a6P, JUST_PRESSED);
				func(_a6R, JUST_RELEASED);
			case A7:
				func(_a7, PRESSED);
				func(_a7P, JUST_PRESSED);
				func(_a7R, JUST_RELEASED);


			case B1:
				func(_b1, PRESSED);
				func(_b1P, JUST_PRESSED);
				func(_b1R, JUST_RELEASED);
			case B2:
				func(_b2, PRESSED);
				func(_b2P, JUST_PRESSED);
				func(_b2R, JUST_RELEASED);
			case B3:
				func(_b3, PRESSED);
				func(_b3P, JUST_PRESSED);
				func(_b3R, JUST_RELEASED);
			case B4:
				func(_b4, PRESSED);
				func(_b4P, JUST_PRESSED);
				func(_b4R, JUST_RELEASED);
			case B5:
				func(_b5, PRESSED);
				func(_b5P, JUST_PRESSED);
				func(_b5R, JUST_RELEASED);
			case B6:
				func(_b6, PRESSED);
				func(_b6P, JUST_PRESSED);
				func(_b6R, JUST_RELEASED);
			case B7:
				func(_b7, PRESSED);
				func(_b7P, JUST_PRESSED);
				func(_b7R, JUST_RELEASED);
			case B8:
				func(_b8, PRESSED);
				func(_b8P, JUST_PRESSED);
				func(_b8R, JUST_RELEASED);
			case B9:
				func(_b9, PRESSED);
				func(_b9P, JUST_PRESSED);
				func(_b9R, JUST_RELEASED);
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, copyKeys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, copyKeys, state));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		var copyKeys:Array<FlxKey> = keys.copy();
		for (i in 0...copyKeys.length) {
			if(i == NONE) copyKeys.remove(i);
		}

		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, copyKeys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, copyKeys));
		#end
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			if(key != NONE)
				action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		
		#if (haxe >= "4.0.0")
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [X, BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				//inline bindKeys(Control.RESET, []);
			case Duo(true):
				inline bindKeys(Control.UI_UP, [W]);
				inline bindKeys(Control.UI_DOWN, [S]);
				inline bindKeys(Control.UI_LEFT, [A]);
				inline bindKeys(Control.UI_RIGHT, [D]);
				inline bindKeys(Control.NOTE_UP, [W]);
				inline bindKeys(Control.NOTE_DOWN, [S]);
				inline bindKeys(Control.NOTE_LEFT, [A]);
				inline bindKeys(Control.NOTE_RIGHT, [D]);
				inline bindKeys(Control.ACCEPT, [G, Z]);
				inline bindKeys(Control.BACK, [H, X]);
				inline bindKeys(Control.PAUSE, [ONE]);
				//inline bindKeys(Control.RESET, [R]);
			case Duo(false):
				inline bindKeys(Control.UI_UP, [FlxKey.UP]);
				inline bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				inline bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
				//inline bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
		#else
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UI_UP, [W, FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [W, FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);



				bindKeys(Control.SIX_1, [ONE, ONE]);
				bindKeys(Control.SIX_2, [TWO, TWO]);
				bindKeys(Control.SIX_3, [THREE, THREE]);
				bindKeys(Control.SIX_4, [FOUR, FOUR]);
				bindKeys(Control.SIX_5, [FIVE, FIVE]);
				bindKeys(Control.SIX_6, [SIX, SIX]);
				bindKeys(Control.SIX_7, [SEVEN, SEVEN]);
				bindKeys(Control.SIX_8, [EIGHT, EIGHT]);
				bindKeys(Control.SIX_9, [NINE, NINE]);
				bindKeys(Control.SIX_10, [ZERO, ZERO]);
				bindKeys(Control.SIX_11, [TAB, TAB]);
				bindKeys(Control.SIX_12, [Q, Q]);
				bindKeys(Control.SIX_13, [W, W]);
				bindKeys(Control.SIX_14, [E, E]);
				bindKeys(Control.SIX_15, [R, R]);
				bindKeys(Control.SIX_16, [T, T]);
				bindKeys(Control.SIX_17, [Y, Y]);
				bindKeys(Control.SIX_18, [U, U]);
				bindKeys(Control.SIX_19, [I, I]);
				bindKeys(Control.SIX_20, [O, O]);
				bindKeys(Control.SIX_21, [P, P]);
				bindKeys(Control.SIX_22, [LBRACKET, LBRACKET]);
				bindKeys(Control.SIX_23, [RBRACKET, RBRACKET]);
				bindKeys(Control.SIX_24, [BACKSLASH, BACKSLASH]);
				bindKeys(Control.SIX_25, [A, A]);
				bindKeys(Control.SIX_26, [S, S]);
				bindKeys(Control.SIX_27, [D, D]);
				bindKeys(Control.SIX_28, [F, F]);
				bindKeys(Control.SIX_29, [G, G]);
				bindKeys(Control.SIX_30, [H, H]);
				bindKeys(Control.SIX_31, [J, J]);
				bindKeys(Control.SIX_32, [K, K]);
				bindKeys(Control.SIX_33, [L, L]);
				bindKeys(Control.SIX_34, [SEMICOLON, SEMICOLON]);
				bindKeys(Control.SIX_35, [QUOTE, QUOTE]);
				bindKeys(Control.SIX_36, [Z, Z]);
				bindKeys(Control.SIX_37, [X, X]);
				bindKeys(Control.SIX_38, [C, C]);
				bindKeys(Control.SIX_39, [V, V]);
				bindKeys(Control.SIX_40, [B, B]);
				bindKeys(Control.SIX_41, [N, N]);
				bindKeys(Control.SIX_42, [M, M]);
				bindKeys(Control.SIX_43, [COMMA, COMMA]);
				bindKeys(Control.SIX_44, [PERIOD, PERIOD]);
				bindKeys(Control.SIX_45, [SLASH, SLASH]);
				bindKeys(Control.SIX_46, [NUMPADZERO, NUMPADZERO]);
				bindKeys(Control.SIX_47, [NUMPADONE, NUMPADONE]);
				bindKeys(Control.SIX_48, [NUMPADTWO, NUMPADTWO]);
				bindKeys(Control.SIX_49, [NUMPADTHREE, NUMPADTHREE]);
				bindKeys(Control.SIX_50, [NUMPADFOUR, NUMPADFOUR]);
				bindKeys(Control.SIX_51, [NUMPADFIVE, NUMPADSIX]);
				bindKeys(Control.SIX_52, [NUMPADSIX, NUMPADSIX]);
				bindKeys(Control.SIX_53, [NUMPADSEVEN, NUMPADSEVEN]);
				bindKeys(Control.SIX_54, [NUMPADEIGHT, NUMPADEIGHT]);
				bindKeys(Control.SIX_55, [NUMPADNINE, NUMPADNINE]);
				bindKeys(Control.SIX_56, [LEFT, LEFT]);
				bindKeys(Control.SIX_57, [DOWN, DOWN]);
				bindKeys(Control.SIX_58, [UP, UP]);
				bindKeys(Control.SIX_59, [RIGHT, RIGHT]);
				bindKeys(Control.SIX_60, [F1, F1]);
				bindKeys(Control.SIX_61, [F2, F2]);
				bindKeys(Control.SIX_62, [F3, F3]);
				bindKeys(Control.SIX_63, [F4, F4]);
				bindKeys(Control.SIX_64, [F5, F5]);
				bindKeys(Control.SIX_65, [F6, F6]);
				bindKeys(Control.SIX_66, [F7, F7]);
				bindKeys(Control.SIX_67, [F8, F8]);
				bindKeys(Control.SIX_68, [F9, F9]);
				bindKeys(Control.SIX_69, [F10, F10]);
				


				//bindKeys(Control.RESET, [R]);
			case Duo(true):
				bindKeys(Control.UI_UP, [W]);
				bindKeys(Control.UI_DOWN, [S]);
				bindKeys(Control.UI_LEFT, [A]);
				bindKeys(Control.UI_RIGHT, [D]);
				bindKeys(Control.NOTE_UP, [W]);
				bindKeys(Control.NOTE_DOWN, [S]);
				bindKeys(Control.NOTE_LEFT, [A]);
				bindKeys(Control.NOTE_RIGHT, [D]);
				bindKeys(Control.ACCEPT, [G, Z]);
				bindKeys(Control.BACK, [H, X]);
				bindKeys(Control.PAUSE, [ONE]);


				bindKeys(Control.SIX_1, [ONE, ONE]);
				bindKeys(Control.SIX_2, [TWO, TWO]);
				bindKeys(Control.SIX_3, [THREE, THREE]);
				bindKeys(Control.SIX_4, [FOUR, FOUR]);
				bindKeys(Control.SIX_5, [FIVE, FIVE]);
				bindKeys(Control.SIX_6, [SIX, SIX]);
				bindKeys(Control.SIX_7, [SEVEN, SEVEN]);
				bindKeys(Control.SIX_8, [EIGHT, EIGHT]);
				bindKeys(Control.SIX_9, [NINE, NINE]);
				bindKeys(Control.SIX_10, [ZERO, ZERO]);
				bindKeys(Control.SIX_11, [TAB, TAB]);
				bindKeys(Control.SIX_12, [Q, Q]);
				bindKeys(Control.SIX_13, [W, W]);
				bindKeys(Control.SIX_14, [E, E]);
				bindKeys(Control.SIX_15, [R, R]);
				bindKeys(Control.SIX_16, [T, T]);
				bindKeys(Control.SIX_17, [Y, Y]);
				bindKeys(Control.SIX_18, [U, U]);
				bindKeys(Control.SIX_19, [I, I]);
				bindKeys(Control.SIX_20, [O, O]);
				bindKeys(Control.SIX_21, [P, P]);
				bindKeys(Control.SIX_22, [LBRACKET, LBRACKET]);
				bindKeys(Control.SIX_23, [RBRACKET, RBRACKET]);
				bindKeys(Control.SIX_24, [BACKSLASH, BACKSLASH]);
				bindKeys(Control.SIX_25, [A, A]);
				bindKeys(Control.SIX_26, [S, S]);
				bindKeys(Control.SIX_27, [D, D]);
				bindKeys(Control.SIX_28, [F, F]);
				bindKeys(Control.SIX_29, [G, G]);
				bindKeys(Control.SIX_30, [H, H]);
				bindKeys(Control.SIX_31, [J, J]);
				bindKeys(Control.SIX_32, [K, K]);
				bindKeys(Control.SIX_33, [L, L]);
				bindKeys(Control.SIX_34, [SEMICOLON, SEMICOLON]);
				bindKeys(Control.SIX_35, [QUOTE, QUOTE]);
				bindKeys(Control.SIX_36, [Z, Z]);
				bindKeys(Control.SIX_37, [X, X]);
				bindKeys(Control.SIX_38, [C, C]);
				bindKeys(Control.SIX_39, [V, V]);
				bindKeys(Control.SIX_40, [B, B]);
				bindKeys(Control.SIX_41, [N, N]);
				bindKeys(Control.SIX_42, [M, M]);
				bindKeys(Control.SIX_43, [COMMA, COMMA]);
				bindKeys(Control.SIX_44, [PERIOD, PERIOD]);
				bindKeys(Control.SIX_45, [SLASH, SLASH]);
				bindKeys(Control.SIX_46, [NUMPADZERO, NUMPADZERO]);
				bindKeys(Control.SIX_47, [NUMPADONE, NUMPADONE]);
				bindKeys(Control.SIX_48, [NUMPADTWO, NUMPADTWO]);
				bindKeys(Control.SIX_49, [NUMPADTHREE, NUMPADTHREE]);
				bindKeys(Control.SIX_50, [NUMPADFOUR, NUMPADFOUR]);
				bindKeys(Control.SIX_51, [NUMPADFIVE, NUMPADSIX]);
				bindKeys(Control.SIX_52, [NUMPADSIX, NUMPADSIX]);
				bindKeys(Control.SIX_53, [NUMPADSEVEN, NUMPADSEVEN]);
				bindKeys(Control.SIX_54, [NUMPADEIGHT, NUMPADEIGHT]);
				bindKeys(Control.SIX_55, [NUMPADNINE, NUMPADNINE]);
				bindKeys(Control.SIX_56, [LEFT, LEFT]);
				bindKeys(Control.SIX_57, [DOWN, DOWN]);
				bindKeys(Control.SIX_58, [UP, UP]);
				bindKeys(Control.SIX_59, [RIGHT, RIGHT]);
				bindKeys(Control.SIX_60, [F1, F1]);
				bindKeys(Control.SIX_61, [F2, F2]);
				bindKeys(Control.SIX_62, [F3, F3]);
				bindKeys(Control.SIX_63, [F4, F4]);
				bindKeys(Control.SIX_64, [F5, F5]);
				bindKeys(Control.SIX_65, [F6, F6]);
				bindKeys(Control.SIX_66, [F7, F7]);
				bindKeys(Control.SIX_67, [F8, F8]);
				bindKeys(Control.SIX_68, [F9, F9]);
				bindKeys(Control.SIX_69, [F10, F10]);
				//bindKeys(Control.RESET, [R]);
			case Duo(false):
				bindKeys(Control.UI_UP, [FlxKey.UP]);
				bindKeys(Control.UI_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.UI_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.UI_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.NOTE_UP, [FlxKey.UP]);
				bindKeys(Control.NOTE_DOWN, [FlxKey.DOWN]);
				bindKeys(Control.NOTE_LEFT, [FlxKey.LEFT]);
				bindKeys(Control.NOTE_RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [O]);
				bindKeys(Control.BACK, [P]);
				bindKeys(Control.PAUSE, [ENTER]);

				bindKeys(Control.SIX_1, [ONE, ONE]);
				bindKeys(Control.SIX_2, [TWO, TWO]);
				bindKeys(Control.SIX_3, [THREE, THREE]);
				bindKeys(Control.SIX_4, [FOUR, FOUR]);
				bindKeys(Control.SIX_5, [FIVE, FIVE]);
				bindKeys(Control.SIX_6, [SIX, SIX]);
				bindKeys(Control.SIX_7, [SEVEN, SEVEN]);
				bindKeys(Control.SIX_8, [EIGHT, EIGHT]);
				bindKeys(Control.SIX_9, [NINE, NINE]);
				bindKeys(Control.SIX_10, [ZERO, ZERO]);
				bindKeys(Control.SIX_11, [TAB, TAB]);
				bindKeys(Control.SIX_12, [Q, Q]);
				bindKeys(Control.SIX_13, [W, W]);
				bindKeys(Control.SIX_14, [E, E]);
				bindKeys(Control.SIX_15, [R, R]);
				bindKeys(Control.SIX_16, [T, T]);
				bindKeys(Control.SIX_17, [Y, Y]);
				bindKeys(Control.SIX_18, [U, U]);
				bindKeys(Control.SIX_19, [I, I]);
				bindKeys(Control.SIX_20, [O, O]);
				bindKeys(Control.SIX_21, [P, P]);
				bindKeys(Control.SIX_22, [LBRACKET, LBRACKET]);
				bindKeys(Control.SIX_23, [RBRACKET, RBRACKET]);
				bindKeys(Control.SIX_24, [BACKSLASH, BACKSLASH]);
				bindKeys(Control.SIX_25, [A, A]);
				bindKeys(Control.SIX_26, [S, S]);
				bindKeys(Control.SIX_27, [D, D]);
				bindKeys(Control.SIX_28, [F, F]);
				bindKeys(Control.SIX_29, [G, G]);
				bindKeys(Control.SIX_30, [H, H]);
				bindKeys(Control.SIX_31, [J, J]);
				bindKeys(Control.SIX_32, [K, K]);
				bindKeys(Control.SIX_33, [L, L]);
				bindKeys(Control.SIX_34, [SEMICOLON, SEMICOLON]);
				bindKeys(Control.SIX_35, [QUOTE, QUOTE]);
				bindKeys(Control.SIX_36, [Z, Z]);
				bindKeys(Control.SIX_37, [X, X]);
				bindKeys(Control.SIX_38, [C, C]);
				bindKeys(Control.SIX_39, [V, V]);
				bindKeys(Control.SIX_40, [B, B]);
				bindKeys(Control.SIX_41, [N, N]);
				bindKeys(Control.SIX_42, [M, M]);
				bindKeys(Control.SIX_43, [COMMA, COMMA]);
				bindKeys(Control.SIX_44, [PERIOD, PERIOD]);
				bindKeys(Control.SIX_45, [SLASH, SLASH]);
				bindKeys(Control.SIX_46, [NUMPADZERO, NUMPADZERO]);
				bindKeys(Control.SIX_47, [NUMPADONE, NUMPADONE]);
				bindKeys(Control.SIX_48, [NUMPADTWO, NUMPADTWO]);
				bindKeys(Control.SIX_49, [NUMPADTHREE, NUMPADTHREE]);
				bindKeys(Control.SIX_50, [NUMPADFOUR, NUMPADFOUR]);
				bindKeys(Control.SIX_51, [NUMPADFIVE, NUMPADSIX]);
				bindKeys(Control.SIX_52, [NUMPADSIX, NUMPADSIX]);
				bindKeys(Control.SIX_53, [NUMPADSEVEN, NUMPADSEVEN]);
				bindKeys(Control.SIX_54, [NUMPADEIGHT, NUMPADEIGHT]);
				bindKeys(Control.SIX_55, [NUMPADNINE, NUMPADNINE]);
				bindKeys(Control.SIX_56, [LEFT, LEFT]);
				bindKeys(Control.SIX_57, [DOWN, DOWN]);
				bindKeys(Control.SIX_58, [UP, UP]);
				bindKeys(Control.SIX_59, [RIGHT, RIGHT]);
				bindKeys(Control.SIX_60, [F1, F1]);
				bindKeys(Control.SIX_61, [F2, F2]);
				bindKeys(Control.SIX_62, [F3, F3]);
				bindKeys(Control.SIX_63, [F4, F4]);
				bindKeys(Control.SIX_64, [F5, F5]);
				bindKeys(Control.SIX_65, [F6, F6]);
				bindKeys(Control.SIX_66, [F7, F7]);
				bindKeys(Control.SIX_67, [F8, F8]);
				bindKeys(Control.SIX_68, [F9, F9]);
				bindKeys(Control.SIX_69, [F10, F10]);
				//bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
		}
		#end
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UI_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.UI_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.UI_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.UI_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.NOTE_UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.NOTE_DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.NOTE_LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.NOTE_RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			//Swap Y and X for switch
			Control.RESET => [Y],
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}