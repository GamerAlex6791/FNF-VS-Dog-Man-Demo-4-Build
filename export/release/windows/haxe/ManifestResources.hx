package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__mods_dogman_fonts_clearsans_bold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__mods_dogman_fonts_hi_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__mods_dogman_fonts_luckiestguy_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__mods_dogman_fonts_planetbe_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__mods_dogman_fonts_snackercomic_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__mods_dogman_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["week_assets"] = rootPath + "manifest/week_assets.json";
		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("songs");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("songs");
		library = Assets.getLibrary ("week_assets");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("week_assets");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_holding_gf_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_holding_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_pixel_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_pixel_opponent_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_pixel_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_dad_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_gf_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_gf_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_gf_pixel_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_gf_tankmen_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_mom_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_mom_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_monster_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_parents_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_pico_player_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_pico_speaker_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_senpai_angry_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_spirit_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_tankman_player_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_characters_tankman_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_blammed_blammed_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_blammed_blammed_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_blammed_blammed_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_blammed_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_bopeebo_bopeebo_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_bopeebo_bopeebo_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_bopeebo_bopeebo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_bopeebo_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_cocoa_cocoa_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_cocoa_cocoa_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_cocoa_cocoa_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_cocoa_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_dad_battle_dad_battle_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_dad_battle_dad_battle_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_dad_battle_dad_battle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_dad_battle_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_eggnog_eggnog_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_eggnog_eggnog_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_eggnog_eggnog_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_eggnog_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_fresh_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_fresh_fresh_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_fresh_fresh_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_fresh_fresh_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_guns_guns_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_guns_guns_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_guns_guns_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_high_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_high_high_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_high_high_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_high_high_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_milf_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_milf_milf_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_milf_milf_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_milf_milf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_monster_monster_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_monster_monster_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_monster_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_philly_nice_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_philly_nice_philly_nice_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_philly_nice_philly_nice_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_philly_nice_philly_nice_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_pico_pico_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_pico_pico_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_pico_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_ridge_ridge_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_roses_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_roses_roses_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_roses_roses_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_roses_roses_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_roses_rosesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_satin_panties_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_satin_panties_satin_panties_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_satin_panties_satin_panties_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_satin_panties_satin_panties_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_senpai_senpai_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_senpai_senpai_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_senpai_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_senpai_senpaidialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_smash_smash_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_south_south_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_south_south_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_south_south_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_spookeez_spookeez_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_spookeez_spookeez_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_spookeez_spookeez_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_stagelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_stress_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_stress_picospeaker_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_stress_stress_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_stress_stress_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_stress_stress_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_test_test_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_thorns_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_thorns_thorns_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_thorns_thorns_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_thorns_thorns_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_thorns_thornsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_tutorial_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_ugh_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_ugh_ugh_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_ugh_ugh_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_ugh_ugh_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_winter_horrorland_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_winter_horrorland_winter_horrorland_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_winter_horrorland_winter_horrorland_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_data_winter_horrorland_winter_horrorland_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_debugger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_friday_night_play_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_hype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_lockedachievement_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_oversinging_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_roadkill_enthusiast_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_toastie_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_two_keys_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_ur_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_ur_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week1_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week2_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week3_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week4_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week5_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week6_nomiss_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_achievements_week7_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_alphabet_playstation_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_alphabet_playstation_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bookbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfandgf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfandgf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfholdinggf_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfholdinggf_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gftankmen_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gftankmen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picospeaker_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picospeaker_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tankmancaptain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tankmancaptain_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_chart_quant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_chart_quant_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_checkboxanim_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_checkboxanim_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_controllertype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_bb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_crowplexus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_discord_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_evilsk8r_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_flicky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_kade_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_kawaisprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_keoiki_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_mastereric_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_missing_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_ninjamuffin99_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_phantomarcade_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_proxy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_riveren_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_shadowmario_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_sqirra_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_superpowers04_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_credits_tahir_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_cry_about_it_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_editors_silhouettebf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_editors_silhouettedad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_eventarrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_air_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_bot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_bub_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_bulter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_captain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_cat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_catbot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_char1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_char2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_chiefm_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_dav_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_dog_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_dogman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_dogman17_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_dogsucker_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_fchar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_lilpeteysad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_nurse_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_petey_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_peteybot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_peteybye_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_peteycon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_peteyconfused_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_peteyhappy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_stuff_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_stuff_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_test_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_test_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplay_yolaym_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplayside_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_freeplaysidebar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_funkay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gfdancetitle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_hahadumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_hugew_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_bf_old_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_bf_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_face_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_monster_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_parents_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_senpai_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_spirit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_spooky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_icons_icon_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_awards_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_awards_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_credits_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_credits_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_donate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_donate_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_freeplay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_freeplay_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_mods_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_mods_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_options_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_story_mode_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_mainmenu_menu_story_mode_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_halloween_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_limo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_philly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_school_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_stage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubackgrounds_menu_tank_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_dad_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_parents_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_parents_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_spooky_kids_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_spooky_kids_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_menu_tankman_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_mom_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_parents_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menucharacters_tankman_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menudifficulties_easy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menudifficulties_hard_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menudifficulties_normal_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_menu_tracks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_modsmenubuttons_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notecolormenu_colorwheel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notecolormenu_copy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notecolormenu_note_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notecolormenu_notepixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notecolormenu_palette_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notecolormenu_paste_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_list_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_note_assets_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_note_assets_chip_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_note_assets_future_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_note_assets_future_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_list_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_diamond_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_diamond_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_diamond_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_electric_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_electric_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_electric_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_sparkles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_sparkles_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_sparkles_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_vanilla_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_vanilla_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_vanilla_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_notesplashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_noteskins_note_assets_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_noteskins_note_assets_future_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_noteskins_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_noteskins_note_assetsends_chip_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_noteskins_note_assetsends_future_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_noteskins_note_assetsends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_tutorial_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_storymenu_week7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_timebar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_unknownmod_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_freakymenu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_offsetsong_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_tea_time_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_cancelmenu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_confirmmenu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogue_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogueclose_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_hitsound_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_metronome_tick_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_scrollmenu_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_limo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_mall_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_mallevil_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_philly_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_school_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_schoolevil_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_stage_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_stages_tank_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week2_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week3_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week4_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week5_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week6_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_week7_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_weeks_weeklist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dad_battle_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dad_battle_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_guns_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_stress_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_ugh_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_smoke_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_spotlight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_low_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_sounds_thunder_1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_sounds_thunder_2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_gradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_particle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_window_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_sounds_train_passes_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_coldheartkiller_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_metalpole_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_noooooo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_noooooo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_stupidblood_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_stupidblood_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_carpass0_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_carpass1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_dancerdeath_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_sounds_lights_shut_off_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_sounds_lights_turn_on_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_low_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgghouls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgghouls_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_fnf_loss_sfx_pixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_pixeltext_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_senpai_dies_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_picoappears_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_picoappears_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_picoappears_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_tankman_animation_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_tankman_spritemap1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_tankman_spritemap1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_smokeleft_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_smokeleft_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_smokeright_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_smokeright_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank0_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank2_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank3_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank4_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tank5_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankbuildings_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankclouds_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankmankilled1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankmankilled1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankmountains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankrolling_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankrolling_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankruins_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tanksky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankwatchtower_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_tankwatchtower_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_distorto_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_bfbeep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_1_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_10_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_11_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_12_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_13_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_14_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_15_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_16_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_17_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_18_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_19_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_20_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_21_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_22_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_23_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_24_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_25_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_3_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_4_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_5_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_6_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_7_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_8_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_jeffgameover_jeffgameover_9_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_killyou_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_stresscutscene_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_tanksong2_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_wellwellwell_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_characters_bfdm_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_characters_dogman_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_characters_gfdm_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_characters_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_arrow_flip_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_arrow_flip_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_badapplebutallblack_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_badapplebutallblack_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_badapplelol_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_badapplelol_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_bgchange_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_bgchange_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_blackout_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_blackout_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_blammed_lights_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_blammed_lights_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_bopping_hud_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_bopping_hud_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cam_boom_speed_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cam_boom_speed_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cam_zoom_tween_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cam_zoom_tween_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_camera_flash_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_camera_flash_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_camera_set_target_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_camera_set_target_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_change_the_stage_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_change_stage_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_change_stage_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cinematics_v3_1__lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cinematics_v3_1__txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cinematics_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_cinematics_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dadbattle_spotlight_recreation_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dadbattle_spotlight_recreation_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dadvis_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dadvis_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_deathdog_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_deathdog_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_deathpetey_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_deathpetey_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_directions_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dodgeevent___copy_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dodgeevent_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dodgeevent_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dodgeeventrobo_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_dodgeeventrobo_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_drain_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_drain_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_extr__camera_section_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_extr__idle_alt_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_extr__teamplay_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flash_camera_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flash_camera_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flash_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flash_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flipui_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flipui_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flipuistop_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_flipuistop_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_gain_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_gain_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_gfvis_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_gfvis_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_gifpopup_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_gifpopup_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_goodbye_hud_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_goodbye_hud_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_healthlmao_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_healthlmao_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_hide_hud_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_hide_hud_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_hidehud_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_hidehud_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_image_flash_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_image_flash_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_indications_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_indications_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_light_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_light_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_lyrics_bf_side_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_lyrics_bf_side_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_lyrics_opp_side_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_lyrics_opp_side_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_lyrics_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_lyrics_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_middle_scroll_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_middle_scroll_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_midsongvideo_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_midsongvideo_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_movearrowstomiddle_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_movearrowstomiddle_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_must_press_swap_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_must_press_swap_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_note_fade_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_note_fade_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_note_shake_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_philly_glow_recreation_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_philly_glow_recreation_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_phillyglowlua_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_phillyglowlua_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_play_video_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_play_video_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_red_stuff_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_red_stuff_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_screenshakewhenoppsings_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_set_cam_zoom_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_set_cam_zoom_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_set_camzoom_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_set_camzoom_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_shaking_when_notes_shit_intense_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_shaking_when_notes_shit_intense_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_shaking_when_notes_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_shaking_when_notes_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_show_strums_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_sing_shake_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_sing_shake_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_spawn_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_spotlight_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_spotlight_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_stage_swap_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_stage_swap_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_startcountdown_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_swap_notes_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_toggle_trail_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_toggle_trail_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_vignette_fade_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_why_stop_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_why_stop_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_why_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_why_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_windowshake_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_windowshake_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_zoom_lol_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_events_zoom_lol_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_custom_notetypes_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_credits_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_death_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_evil_schemes_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_health_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_moving_camwhennotes_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_new_rats_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_new_rat_eventless_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_rain_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_evil_schemes_script_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_death_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_dia_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_dialogue_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_moving_camwhennotes_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_new_friend_eventless_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_new_friend_normal_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_new_friend_new_friend_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_data_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_clearsans_bold_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_hi_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_luckiestguy_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_planetbe_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_snackercomic_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_achievements_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_ambience_nf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_background_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_background_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_bfdm_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_bfdm_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_dogm_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_dogm_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_gfdm_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_gfdm_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_characters_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_dialogue_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_healbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_icons_icon_bfdogman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_icons_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_menubackgrounds_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_menucharacters_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_nf_buildings_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_nf_cities_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_nf_fore_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_nf_road_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_nf_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_npcs_drizzle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_npcs_drizzle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_npcs_walkers_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_nfbg_npcs_walkers_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_notecombo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_notecombo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_noteskins_list_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_noteskins_note_assets_comic_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_noteskins_note_assets_comic_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_noteskins_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_notesplashes_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_songcred_creditpetey_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_songcred_creditpetey_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_songcred_test_mdp extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_songcred_test_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_images_storymenu_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_pack_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_pack_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_botplay_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_death_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_fullsongcredits_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_hahahayouhavetoworkforsaongsnow_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_heatlhbarctlr_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_hud_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_merter_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_notecombo_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_read_this_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_results_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_script_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_shop_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_stage_change_manager_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_videospritehandler_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_scripts_zoom_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_16bagels_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_16bagels_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_evil_schemes_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_evil_schemes_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_evil_schemes_voices_ogg_zpa extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_new_friend_inst___copy_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_new_friend_inst_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_new_friend_pie_meet_mid extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_new_friend_voices_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_songs_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_stages_nfbg_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_stages_nfbg_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_stages_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_videos_destroyintro_mp4 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_videos_dlyrics_mp4 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_videos_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_weeks_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_dogman_weeks_week1dog_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modtemplate_zip extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_indicator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week_assets_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("C:/haxelib/flixel/5,8,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/haxelib/flixel/5,8,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("C:/haxelib/flixel/5,8,0/assets/fonts/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("C:/haxelib/flixel/5,8,0/assets/fonts/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/haxelib/flixel/5,8,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel/5,8,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-ui/2,6,1/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/haxelib/flixel-ui/2,6,1/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/haxelib/flixel-ui/2,6,1/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/haxelib/flixel-ui/2,6,1/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:image("C:/haxelib/flixel-addons/3,2,3/assets/images/transitions/circle.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-addons/3,2,3/assets/images/transitions/diagonal_gradient.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-addons/3,2,3/assets/images/transitions/diamond.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flixel-addons/3,2,3/assets/images/transitions/square.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flxanimate/git/assets/images/pivot.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png extends lime.graphics.Image {}
@:keep @:image("C:/haxelib/flxanimate/git/assets/images/indicator.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_indicator_png extends lime.graphics.Image {}

@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/pixel.otf"; name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/vcr.ttf"; name = "VCR OSD Mono"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_clearsans_bold_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/ClearSans-Bold.ttf"; name = "Clear Sans Bold"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_hi_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/Hi.ttf"; name = "Pilkius Romeus"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_luckiestguy_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/LuckiestGuy.ttf"; name = "Luckiest Guy"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_planetbe_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/planetbe.ttf"; name = "Planet Benson 2"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_snackercomic_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/SnackerComic.ttf"; name = "Snacker Comic Personal Use Only"; super (); }}
@:keep @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_vcr_ttf extends lime.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/vcr.ttf"; name = "Pilkius Romeus"; super (); }}


#else

@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel.otf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__mods_dogman_fonts_clearsans_bold_ttf') @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_clearsans_bold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "mods/dogman/fonts/ClearSans-Bold.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Clear Sans Bold"; super (); }}
@:keep @:expose('__ASSET__mods_dogman_fonts_hi_ttf') @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_hi_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "mods/dogman/fonts/Hi.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Pilkius Romeus"; super (); }}
@:keep @:expose('__ASSET__mods_dogman_fonts_luckiestguy_ttf') @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_luckiestguy_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "mods/dogman/fonts/LuckiestGuy.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Luckiest Guy"; super (); }}
@:keep @:expose('__ASSET__mods_dogman_fonts_planetbe_ttf') @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_planetbe_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "mods/dogman/fonts/planetbe.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Planet Benson 2"; super (); }}
@:keep @:expose('__ASSET__mods_dogman_fonts_snackercomic_ttf') @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_snackercomic_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "mods/dogman/fonts/SnackerComic.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Snacker Comic Personal Use Only"; super (); }}
@:keep @:expose('__ASSET__mods_dogman_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__mods_dogman_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "mods/dogman/fonts/vcr.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Pilkius Romeus"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_clearsans_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_clearsans_bold_ttf extends openfl.text.Font { public function new () { name = "Clear Sans Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_hi_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_hi_ttf extends openfl.text.Font { public function new () { name = "Pilkius Romeus"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_luckiestguy_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_luckiestguy_ttf extends openfl.text.Font { public function new () { name = "Luckiest Guy"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_planetbe_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_planetbe_ttf extends openfl.text.Font { public function new () { name = "Planet Benson 2"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_snackercomic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_snackercomic_ttf extends openfl.text.Font { public function new () { name = "Snacker Comic Personal Use Only"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_vcr_ttf extends openfl.text.Font { public function new () { name = "Pilkius Romeus"; super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/pixel.otf"; name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "assets/fonts/vcr.ttf"; name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_clearsans_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_clearsans_bold_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/ClearSans-Bold.ttf"; name = "Clear Sans Bold"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_hi_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_hi_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/Hi.ttf"; name = "Pilkius Romeus"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_luckiestguy_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_luckiestguy_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/LuckiestGuy.ttf"; name = "Luckiest Guy"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_planetbe_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_planetbe_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/planetbe.ttf"; name = "Planet Benson 2"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_snackercomic_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_snackercomic_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/SnackerComic.ttf"; name = "Snacker Comic Personal Use Only"; super (); }}
@:keep @:expose('__ASSET__OPENFL__mods_dogman_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__mods_dogman_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fontPath = ManifestResources.rootPath + "mods/dogman/fonts/vcr.ttf"; name = "Pilkius Romeus"; super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end