package com.example;

import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.Lib;
import openfl.Assets;
import openfl.display.FPS;
import ru.stablex.ui.UIBuilder;


/**
* Simple demo project for StablexUI
*/
class Main extends ru.stablex.ui.widgets.Widget{

    //callback to create alert popups
    static public var alert : Dynamic->ru.stablex.ui.widgets.Floating;


    /**
    * Enrty point
    *
    */
    static public function main () : Void{

// ... IN PROGRESS ...

        Lib.current.stage.align     = StageAlign.TOP_LEFT;
        Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;

        UIBuilder.saveCodeTo('C:/Users/marcus/Documents/GitHub/__forks__/StablexUI/samples/demo/_genCode_');

        //set theme
        UIBuilder.setTheme('ru.stablex.ui.themes.android4');

        //register main class to access it's methods and properties in xml
        UIBuilder.regClass('com.example.Main');

        //initialize StablexUI
        UIBuilder.init('ui/android/defaults.xml');

        //register skins
        UIBuilder.regSkins('ui/android/skins.xml');

        //create callback for alert popup
        Main.alert = UIBuilder.buildFn('ui/alert.xml');

        //Create our UI
        UIBuilder.buildFn('ui/index.xml')().show();

         // FPS counter {
             //var fps : flash.display.FPS = cast Lib.current.stage.addChild(new flash.display.FPS());
			 
			 var fps:FPS = cast Lib.current.stage.addChild(new FPS());
			 
             //var format = new flash.text.TextFormat (flash.Assets.getFont ("ui/android/fonts/regular.ttf").fontName, 12, 0xFFFFFF);
             
			 var format = new flash.text.TextFormat(Assets.getFont("ui/android/fonts/regular.ttf").fontName, 12, 0xFFFF00);
			 
			 fps.defaultTextFormat = format;
             fps.selectable = false;
             fps.embedFonts = true;
             //fps.x = 0;
             
			 fps.x = Lib.current.stage.stageWidth - 50;
			 
			 
			 fps.y = 0;
             fps.mouseEnabled = false;
         //}
    }//function main()


}//class Main


