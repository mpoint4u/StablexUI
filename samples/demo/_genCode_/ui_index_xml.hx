function(__ui__arguments:Dynamic = null) : ru.stablex.ui.widgets.Floating {
var __ui__widget1 : ru.stablex.ui.widgets.Floating = new ru.stablex.ui.widgets.Floating();
if( ru.stablex.ui.UIBuilder.defaults.exists("Floating") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Floating");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget1);
     }
}
__ui__widget1.addEventListener(ru.stablex.ui.events.WidgetEvent.RESIZE, function(event:ru.stablex.ui.events.WidgetEvent){
        ru.stablex.ui.UIBuilder.get("screens").h = cast(event.currentTarget, ru.stablex.ui.widgets.Floating).h - ru.stablex.ui.UIBuilder.get("bottomMenu").h - ru.stablex.ui.UIBuilder.get("topMenu").h;

        if( flash.Lib.current.stage.stageWidth < 320 || flash.Lib.current.stage.stageHeight < 480 ){
            var popup = com.example.Main.alert({
                msg:'This app is designed for at least 320x480 screens. You may proceed but some things may go wrong.'
            });
            popup.show();
        }
    });
__ui__widget1.id = 'root';
__ui__widget1.widthPt = 100;
__ui__widget1.heightPt = 100;
if( !Std.is(__ui__widget1.skin, ru.stablex.ui.skins.Paint) ){
     __ui__widget1.skin = new ru.stablex.ui.skins.Paint();
     if( Std.is(__ui__widget1.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__ui__widget1.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__ui__widget1.skin, ru.stablex.ui.skins.Paint).color = 0x000000;
__ui__widget1._onInitialize();

var __ui__widget2 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = 'TopMenu'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget2);
     }
}
__ui__widget2.id = 'topMenu';
__ui__widget2.defaults = 'TopMenu';
__ui__widget2._onInitialize();

var __ui__widget3 : ru.stablex.ui.widgets.Bmp = new ru.stablex.ui.widgets.Bmp();
if( ru.stablex.ui.UIBuilder.defaults.exists("Bmp") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Bmp");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget3);
     }
}
__ui__widget3.bitmapData = ru.stablex.ui.themes.android4.Main.getBitmapData('img/ico/light/settings.png');
__ui__widget3._onInitialize();
__ui__widget3._onCreate();
__ui__widget2.addChild(__ui__widget3);

var __ui__widget3 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'H1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget3);
     }
}
__ui__widget3.text = 'StablexUI';
__ui__widget3.defaults = 'H1';
__ui__widget3._onInitialize();
__ui__widget3._onCreate();
__ui__widget2.addChild(__ui__widget3);
__ui__widget2._onCreate();
__ui__widget1.addChild(__ui__widget2);

var __ui__widget2 : ru.stablex.ui.widgets.ViewStack = new ru.stablex.ui.widgets.ViewStack();
if( ru.stablex.ui.UIBuilder.defaults.exists("ViewStack") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("ViewStack");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget2);
     }
}
__ui__widget2.id = 'screens';
__ui__widget2.widthPt = 100;
if( !Std.is(__ui__widget2.trans, ru.stablex.ui.transitions.Slide) ){
     __ui__widget2.trans = new ru.stablex.ui.transitions.Slide();
     if( Std.is(__ui__widget2.trans, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__ui__widget2.trans, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__ui__widget2.trans, ru.stablex.ui.transitions.Slide).direction = 'left';
cast(__ui__widget2.trans, ru.stablex.ui.transitions.Slide).duration = 0.2;
__ui__widget2._onInitialize();

__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.defaults = 'Screen';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = 'Menu'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.defaults = 'Menu';
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Buttons';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('buttons');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Radio & Checkboxes';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('toggles');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Skins';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('skins');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Progress bar';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('progressBars');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Options list';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('options');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Sliders';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('sliders');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'View stack transitions';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('viewStack');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'TabStack';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('tabs');});
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 1';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 2';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 3';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 4';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 5';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 6';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 7';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 8';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 9';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HR';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MenuItem'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Fake item 10';
__meta__include3.ico = null;
__meta__include3.defaults = 'MenuItem';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'buttons';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 20;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.childPadding = 10;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Simple';
__meta__include4.h = 60;
__meta__include4.id = 'simpleButton';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('simpleButtonSettings');
            });
__meta__include4.defaults = 'Settings';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.childPadding = 10;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Toggle = new ru.stablex.ui.widgets.Toggle();
if( ru.stablex.ui.UIBuilder.defaults.exists("Toggle") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Toggle");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.states.up.text = 'Toggle up';
__meta__include4.states.down.text = 'Toggle down';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                var popup = com.example.Main.alert({
                    msg:'Toggle button has the same settings as simple one. Plus it has separate skin / icon / text for each state.'
                });
                popup.show();
            });
__meta__include4.defaults = 'Settings';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.childPadding = 10;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.StateButton = new ru.stablex.ui.widgets.StateButton();
if( ru.stablex.ui.UIBuilder.defaults.exists("StateButton") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("StateButton");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.states.first.text = 'Multi-state button';
__meta__include4.states.third.text = 'Third state';
__meta__include4.states.second.text = 'Second state';
__meta__include4.states.fourth.text = 'Fourth state';
__meta__include4.order = ['first', 'second', 'third', 'fourth'];
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                var popup = com.example.Main.alert({
                    msg:'Multi-state button has the same settings as simple one. Plus it has separate skin / icon / text for each state.'
                });
                popup.show();
            });
__meta__include4.defaults = 'Settings';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level2'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'simpleButtonSettings';
__meta__include1.defaults = 'Screen,Level2';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 2;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Basic settings for button';
__meta__include3.align = 'center,middle';
__meta__include3.defaults = 'Dark';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'There are more settings described in docs';
__meta__include3.align = 'center,middle';
__meta__include3.defaults = 'DarkTip';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.align = 'middle';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.left = 10;
__meta__include4.align = 'left,middle';
__meta__include4.widthPt = 60;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Enable icon';
__meta__include5.defaults = 'Dark';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'It\'s also possible to set separate icon for each state';
__meta__include5.defaults = 'DarkTip';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.right = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                var btn = ru.stablex.ui.UIBuilder.getAs("simpleButton", ru.stablex.ui.widgets.Button);

                if( cast(event.currentTarget, ru.stablex.ui.widgets.Switch).selected ){
                    btn.ico.bitmapData = ru.stablex.ui.themes.android4.Main.getBitmapData('img/ico/light/star.png');
                }else{
                    btn.ico = null;
                }

                btn.refresh();
            });
__meta__include4.selected = false;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.align = 'middle';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.left = 10;
__meta__include4.align = 'left,middle';
__meta__include4.widthPt = 60;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Vertical';
__meta__include5.defaults = 'Dark';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Whether label and icon should be placed top to bottom or left to right';
__meta__include5.defaults = 'DarkTip';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.right = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                var btn = ru.stablex.ui.UIBuilder.getAs("simpleButton", ru.stablex.ui.widgets.Button);

                if( cast(event.currentTarget, ru.stablex.ui.widgets.Switch).selected ){
                    btn.vertical = true;
                }else{
                    btn.vertical = false;
                }

                btn.alignElements();
            });
__meta__include4.selected = false;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.align = 'middle';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.left = 10;
__meta__include4.align = 'left,middle';
__meta__include4.widthPt = 60;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Icon before label';
__meta__include5.defaults = 'Dark';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.right = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                var btn = ru.stablex.ui.UIBuilder.getAs("simpleButton", ru.stablex.ui.widgets.Button);

                if( cast(event.currentTarget, ru.stablex.ui.widgets.Switch).selected ){
                    btn.icoBeforeLabel = true;
                }else{
                    btn.icoBeforeLabel = false;
                }

                btn.alignElements();
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.align = 'middle';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.left = 10;
__meta__include4.align = 'left,middle';
__meta__include4.widthPt = 60;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Move apart';
__meta__include5.defaults = 'Dark';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Stick ico and text to opposite borders';
__meta__include5.defaults = 'DarkTip';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.right = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                var btn = ru.stablex.ui.UIBuilder.getAs("simpleButton", ru.stablex.ui.widgets.Button);

                if( cast(event.currentTarget, ru.stablex.ui.widgets.Switch).selected ){
                    btn.apart = true;
                }else{
                    btn.apart = false;
                }

                btn.alignElements();
            });
__meta__include4.selected = false;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.align = 'middle';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.left = 10;
__meta__include4.align = 'left,middle';
__meta__include4.widthPt = 60;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Default,Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Disable';
__meta__include5.defaults = 'Default,Dark';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Default,DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Make button ignore mouse events';
__meta__include5.defaults = 'Default,DarkTip';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.right = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.getAs("simpleButton", ru.stablex.ui.widgets.Button).disabled = cast(event.currentTarget, ru.stablex.ui.widgets.Switch).selected;
            });
__meta__include4.selected = false;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'toggles';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.align = '';
__meta__include2.widthPt = 100;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.left = 0;
__meta__include3.padding = 15;
__meta__include3.childPadding = 20;
__meta__include3.align = 'left,top';
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Checkbox = new ru.stablex.ui.widgets.Checkbox();
if( ru.stablex.ui.UIBuilder.defaults.exists("Checkbox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Checkbox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'static text';
__meta__include4.selected = true;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Checkbox = new ru.stablex.ui.widgets.Checkbox();
if( ru.stablex.ui.UIBuilder.defaults.exists("Checkbox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Checkbox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.states.up.text = 'check me';
__meta__include4.states.down.text = 'uncheck me';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = 'Default,Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'Default,Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = 'Classic,Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'Classic,Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Switch = new ru.stablex.ui.widgets.Switch();
if( ru.stablex.ui.UIBuilder.defaults.exists("Switch") ){
     var defs = 'DayNight,Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Switch");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.labelOn.text = 'day';
__meta__include4.defaults = 'DayNight,Dark';
__meta__include4.labelOff.text = 'night';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.padding = 15;
__meta__include3.right = 0;
__meta__include3.childPadding = 20;
__meta__include3.align = 'right,top';
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Radio = new ru.stablex.ui.widgets.Radio();
if( ru.stablex.ui.UIBuilder.defaults.exists("Radio") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Radio");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'radio 1';
__meta__include4.group = 'demo';
__meta__include4.icoBeforeLabel = false;
__meta__include4.selected = true;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Radio = new ru.stablex.ui.widgets.Radio();
if( ru.stablex.ui.UIBuilder.defaults.exists("Radio") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Radio");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'radio 2';
__meta__include4.group = 'demo';
__meta__include4.icoBeforeLabel = false;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Radio = new ru.stablex.ui.widgets.Radio();
if( ru.stablex.ui.UIBuilder.defaults.exists("Radio") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Radio");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.states.up.text = 'radio?';
__meta__include4.group = 'demo';
__meta__include4.icoBeforeLabel = false;
__meta__include4.states.down.text = 'radio!';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'skins';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 20;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'BASIC SKINS';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'LightTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'There are more skins + you can implement custom skin';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'LightTip';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'HR';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Paint';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('paintSkin');});
__meta__include3.w = 185;
__meta__include3.defaults = 'Settings';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Gradient';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('gradientSkin');});
__meta__include3.w = 185;
__meta__include3.defaults = 'Settings';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Tile';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('tileSkin');});
__meta__include3.w = 185;
__meta__include3.defaults = 'Settings';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'Settings'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Slice9';
__meta__include3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack).show('scale9Skin');});
__meta__include3.w = 185;
__meta__include3.defaults = 'Settings';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level2'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'paintSkin';
__meta__include1.defaults = 'Screen,Level2';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 10;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Paint skin options';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'Dark';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'There are more settings described in docs';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'DarkTip';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'HRLight';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Corners elipse width';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 300;
__meta__include4.min = 1;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("pex").skin.as(ru.stablex.ui.skins.Paint).corners[0] = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
                ru.stablex.ui.UIBuilder.get("pex").refresh();
            });
__meta__include4.value = 50;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Corners elipse height';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 80;
__meta__include4.min = 1;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("pex").skin.as(ru.stablex.ui.skins.Paint).corners[1] = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
                ru.stablex.ui.UIBuilder.get("pex").refresh();
            });
__meta__include4.value = 50;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Color';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 0xFFFFFF;
__meta__include4.min = 0x000000;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("pex").skin.as(ru.stablex.ui.skins.Paint).color = Std.int(cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value);
                ru.stablex.ui.UIBuilder.get("pex").refresh();
            });
__meta__include4.value = 0xAAAAAA;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Alpha';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 1;
__meta__include4.min = 0;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("pex").skin.as(ru.stablex.ui.skins.Paint).alpha = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
                ru.stablex.ui.UIBuilder.get("pex").refresh();
            });
__meta__include4.value = 1;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Border width';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 20;
__meta__include4.min = 0;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("pex").skin.as(ru.stablex.ui.skins.Paint).border = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
                ru.stablex.ui.UIBuilder.get("pex").refresh();
            });
__meta__include4.value = 2;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Border color';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 0xFFFFFF;
__meta__include4.min = 0x000000;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("pex").skin.as(ru.stablex.ui.skins.Paint).borderColor = Std.int(cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value);
                ru.stablex.ui.UIBuilder.get("pex").refresh();
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 5;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 80;
__meta__include3.id = 'pex';
__meta__include3.widthPt = 90;
if( !Std.is(__meta__include3.skin, ru.stablex.ui.skins.Paint) ){
     __meta__include3.skin = new ru.stablex.ui.skins.Paint();
     if( Std.is(__meta__include3.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__meta__include3.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__meta__include3.skin, ru.stablex.ui.skins.Paint).color = 0xAAAAAA;
cast(__meta__include3.skin, ru.stablex.ui.skins.Paint).corners = [50, 50];
cast(__meta__include3.skin, ru.stablex.ui.skins.Paint).border = 2;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level2'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'gradientSkin';
__meta__include1.defaults = 'Screen,Level2';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 10;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Gradient skin options';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'Dark';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'There are more settings described in docs';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'DarkTip';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'HRLight';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'First color';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 0xFFFFFF;
__meta__include4.min = 0x000000;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                var colors = ru.stablex.ui.UIBuilder.get("gex").skin.as(ru.stablex.ui.skins.Gradient).colors;
                colors[0] = Std.int(cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value);
                colors[1] = colors[0] + Std.int((colors[2] - colors[0]) / 2);
                ru.stablex.ui.UIBuilder.get("gex").refresh();
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Last color';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 0xFFFFFF;
__meta__include4.min = 0x000000;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                var colors = ru.stablex.ui.UIBuilder.get("gex").skin.as(ru.stablex.ui.skins.Gradient).colors;
                colors[2] = Std.int(cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value);
                colors[1] = colors[0] + Std.int((colors[2] - colors[0]) / 2);
                ru.stablex.ui.UIBuilder.get("gex").refresh();
            });
__meta__include4.value = 0xFFFFFF;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.text = 'Gradient skin can take any amount of colors';
__meta__include3.h = 5;
__meta__include3.align = 'left,bottom';
__meta__include3.defaults = 'DarkTip';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Ratio';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 255;
__meta__include4.min = 0;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("gex").skin.as(ru.stablex.ui.skins.Gradient).ratios[1] = Std.int(cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value);
                ru.stablex.ui.UIBuilder.get("gex").refresh();
            });
__meta__include4.value = 127;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Rotation';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = Math.PI;
__meta__include4.min = 0;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("gex").skin.as(ru.stablex.ui.skins.Gradient).rotation = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
                ru.stablex.ui.UIBuilder.get("gex").refresh();
            });
__meta__include4.value = Math.PI/2;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 5;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 80;
__meta__include3.id = 'gex';
__meta__include3.widthPt = 90;
if( !Std.is(__meta__include3.skin, ru.stablex.ui.skins.Gradient) ){
     __meta__include3.skin = new ru.stablex.ui.skins.Gradient();
     if( Std.is(__meta__include3.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__meta__include3.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__meta__include3.skin, ru.stablex.ui.skins.Gradient).colors = [0x000000, 0x888888, 0xFFFFFF];
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level2'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'tileSkin';
__meta__include1.defaults = 'Screen,Level2';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 10;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Tile skin options';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'Dark';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'There are more settings described in docs';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'DarkTip';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'HRLight';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Width';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = flash.Lib.current.stage.stageWidth * 0.9;
__meta__include4.min = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("tex").w = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
            });
__meta__include4.value = 64;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Height';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 200;
__meta__include4.min = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("tex").h = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
            });
__meta__include4.value = 64;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 5;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 64;
__meta__include3.w = 64;
__meta__include3.id = 'tex';
if( !Std.is(__meta__include3.skin, ru.stablex.ui.skins.Tile) ){
     __meta__include3.skin = new ru.stablex.ui.skins.Tile();
     if( Std.is(__meta__include3.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__meta__include3.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__meta__include3.skin, ru.stablex.ui.skins.Tile).src = 'ui/android/img/nme.png';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level2'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'scale9Skin';
__meta__include1.defaults = 'Screen,Level2';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 10;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Tile skin options';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'Dark';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'DarkTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'There are more settings described in docs';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'DarkTip';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'HRLight';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Width';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = flash.Lib.current.stage.stageWidth * 0.9;
__meta__include4.min = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("sex").w = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
            });
__meta__include4.value = 64;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.unifyChildren = true;
__meta__include3.align = 'middle,center';
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'Dark'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Height';
__meta__include4.defaults = 'Dark';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.max = 200;
__meta__include4.min = 10;
__meta__include4.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                ru.stablex.ui.UIBuilder.get("sex").h = cast(event.currentTarget, ru.stablex.ui.widgets.Slider).value;
            });
__meta__include4.value = 64;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HRLight'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'HRLight';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 5;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 64;
__meta__include3.w = 64;
__meta__include3.id = 'sex';
if( !Std.is(__meta__include3.skin, ru.stablex.ui.skins.Slice9) ){
     __meta__include3.skin = new ru.stablex.ui.skins.Slice9();
     if( Std.is(__meta__include3.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__meta__include3.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__meta__include3.skin, ru.stablex.ui.skins.Slice9).src = 'ui/android/img/winxp.png';
cast(__meta__include3.skin, ru.stablex.ui.skins.Slice9).slice = [5, 10, 32, 48];
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'progressBars';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.widthPt = 100;
__meta__include2.heightPt = 100;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.Progress = new ru.stablex.ui.widgets.Progress();
if( ru.stablex.ui.UIBuilder.defaults.exists("Progress") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Progress");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.max = 200;
__meta__include3.addEventListener(flash.events.Event.ENTER_FRAME, function(event:flash.events.Event){
            cast(event.currentTarget, ru.stablex.ui.widgets.Progress).value ++;
            if( cast(event.currentTarget, ru.stablex.ui.widgets.Progress).value > cast(event.currentTarget, ru.stablex.ui.widgets.Progress).max ) cast(event.currentTarget, ru.stablex.ui.widgets.Progress).value = 0;
        });
__meta__include3.widthPt = 95;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'options';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 20;
__meta__include2.align = 'top,center';
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 10;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.widthPt = 100;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Options list';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'LightTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Here are two most common cases for options list.';
__meta__include4.align = 'center,middle';
__meta__include4.defaults = 'LightTip';
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.defaults = 'HR';
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Options = new ru.stablex.ui.widgets.Options();
if( ru.stablex.ui.UIBuilder.defaults.exists("Options") ){
     var defs = 'Picker'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Options");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.options = [['apple', 'wow'], ['pancakes', 'yay'], ['peanut butter', 'doh']];
__meta__include3.defaults = 'Picker';
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Options = new ru.stablex.ui.widgets.Options();
if( ru.stablex.ui.UIBuilder.defaults.exists("Options") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Options");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.options = [['lion', 1], ['camel', 2], ['elephant', 3]];
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'sliders';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.childPadding = 30;
__meta__include2.widthPt = 100;
__meta__include2.paddingTop = 20;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.h = 18;
__meta__include3.widthPt = 90;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = 'Rect'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'Rect';
__meta__include3.widthPt = 90;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.Slider = new ru.stablex.ui.widgets.Slider();
if( ru.stablex.ui.UIBuilder.defaults.exists("Slider") ){
     var defs = 'Haxe'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Slider");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.defaults = 'Haxe';
__meta__include3.widthPt = 90;
__meta__include3._onInitialize();
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'tabs';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.TabStack = new ru.stablex.ui.widgets.TabStack();
if( ru.stablex.ui.UIBuilder.defaults.exists("TabStack") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("TabStack");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.name = 'tabs';
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.TabPage = new ru.stablex.ui.widgets.TabPage();
if( ru.stablex.ui.UIBuilder.defaults.exists("TabPage") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("TabPage");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.title.text = 'First tab';
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.widthPt = 100;
__meta__include4.heightPt = 100;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.childPadding = 10;
__meta__include5.align = 'left,middle';
__meta__include5._onInitialize();

var __meta__include6 : ru.stablex.ui.widgets.Radio = new ru.stablex.ui.widgets.Radio();
if( ru.stablex.ui.UIBuilder.defaults.exists("Radio") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Radio");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include6);
     }
}
__meta__include6.text = 'Bottom tabs';
__meta__include6.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                        if( !cast(event.currentTarget, ru.stablex.ui.widgets.Radio).selected ) return;

                        var ts = cast(event.currentTarget, ru.stablex.ui.widgets.Radio).getParentAs('tabs', ru.stablex.ui.widgets.TabStack);
                        ts.setChildIndex(ts.tabBar, ts.numChildren - 1);

                        //change tabs skins
                        var tab : ru.stablex.ui.widgets.TabPage;
                        for(i in 0...ts.numChildren){
                            tab = ( Std.is(ts.getChildAt(i), ru.stablex.ui.widgets.TabPage) ? cast(ts.getChildAt(i), ru.stablex.ui.widgets.TabPage) : null);
                            if( tab != null ){
                                tab.title.states.down.skinName = 'tabBottomActive';
                                tab.title.skinPressedName = 'tabBottomPressed';
                                tab.title.updateState();
                            }
                        }

                        ts.refresh();
                    });
__meta__include6.group = 'tabsPos';
__meta__include6._onInitialize();
__meta__include6._onCreate();
__meta__include5.addChild(__meta__include6);

var __meta__include6 : ru.stablex.ui.widgets.Radio = new ru.stablex.ui.widgets.Radio();
if( ru.stablex.ui.UIBuilder.defaults.exists("Radio") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Radio");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include6);
     }
}
__meta__include6.text = 'Top tabs';
__meta__include6.addEventListener(ru.stablex.ui.events.WidgetEvent.CHANGE, function(event:ru.stablex.ui.events.WidgetEvent){
                        if( !cast(event.currentTarget, ru.stablex.ui.widgets.Radio).selected ) return;

                        var ts = cast(event.currentTarget, ru.stablex.ui.widgets.Radio).getParentAs('tabs', ru.stablex.ui.widgets.TabStack);
                        ts.setChildIndex(ts.tabBar, 0);

                        //change tabs skins
                        var tab : ru.stablex.ui.widgets.TabPage;
                        for(i in 0...ts.numChildren){
                            tab = ( Std.is(ts.getChildAt(i), ru.stablex.ui.widgets.TabPage) ? cast(ts.getChildAt(i), ru.stablex.ui.widgets.TabPage) : null);
                            if( tab != null ){
                                tab.title.states.down.skinName = 'tabActive';
                                tab.title.skinPressedName = 'tabPressed';
                                tab.title.updateState();
                            }
                        }

                        ts.refresh();
                    });
__meta__include6.group = 'tabsPos';
__meta__include6.selected = true;
__meta__include6._onInitialize();
__meta__include6._onCreate();
__meta__include5.addChild(__meta__include6);
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.TabPage = new ru.stablex.ui.widgets.TabPage();
if( ru.stablex.ui.UIBuilder.defaults.exists("TabPage") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("TabPage");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.title.text = 'OpenFL';
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.widthPt = 100;
__meta__include4.heightPt = 100;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Bmp = new ru.stablex.ui.widgets.Bmp();
if( ru.stablex.ui.UIBuilder.defaults.exists("Bmp") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Bmp");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.src = 'ui/android/img/nme.png';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.TabPage = new ru.stablex.ui.widgets.TabPage();
if( ru.stablex.ui.UIBuilder.defaults.exists("TabPage") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("TabPage");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.title.text = 'HAXE';
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.widthPt = 100;
__meta__include4.heightPt = 100;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Bmp = new ru.stablex.ui.widgets.Bmp();
if( ru.stablex.ui.UIBuilder.defaults.exists("Bmp") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Bmp");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.src = 'ui/android/img/haxe.png';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());


__ui__widget2.addChild((function() : ru.stablex.ui.widgets.Widget {
var __meta__include1 : ru.stablex.ui.widgets.Scroll = new ru.stablex.ui.widgets.Scroll();
if( ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ){
     var defs = 'Screen,Level1'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Scroll");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include1);
     }
}
__meta__include1.name = 'viewStack';
__meta__include1.defaults = 'Screen,Level1';
__meta__include1._onInitialize();

var __meta__include2 : ru.stablex.ui.widgets.ViewStack = new ru.stablex.ui.widgets.ViewStack();
if( ru.stablex.ui.UIBuilder.defaults.exists("ViewStack") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("ViewStack");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include2);
     }
}
__meta__include2.id = 'vs';
__meta__include2.widthPt = 100;
__meta__include2.heightPt = 100;
__meta__include2._onInitialize();

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = 'DarkGray'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.name = 'page1';
__meta__include3.align = 'center,top';
__meta__include3.defaults = 'DarkGray';
__meta__include3.paddingTop = 10;
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'ViewStack transitions';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Text = new ru.stablex.ui.widgets.Text();
if( ru.stablex.ui.UIBuilder.defaults.exists("Text") ){
     var defs = 'LightTip'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Text");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Also you can implement custom transitions.';
__meta__include5.align = 'center,middle';
__meta__include5.defaults = 'LightTip';
__meta__include5.widthPt = 100;
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Widget = new ru.stablex.ui.widgets.Widget();
if( ru.stablex.ui.UIBuilder.defaults.exists("Widget") ){
     var defs = 'HR'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Widget");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.defaults = 'HR';
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Fade';
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                var trans : ru.stablex.ui.transitions.Fade = new ru.stablex.ui.transitions.Fade();
                trans.duration = 0.25;

                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page2');
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Random slide';
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                var direction : Array<String> = ['left', 'right', 'top', 'bottom'];
                var trans     : ru.stablex.ui.transitions.Slide = new ru.stablex.ui.transitions.Slide();
                trans.duration  = 0.25;
                trans.direction = direction[ Std.random(direction.length) ];

                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page2');
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.text = 'Scale up';
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                var trans : ru.stablex.ui.transitions.Scale = new ru.stablex.ui.transitions.Scale();
                trans.duration = 0.25;
                trans.scaleUp  = true;

                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page2');
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.name = 'btn';
__meta__include4.text = 'Scale down';
__meta__include4.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                var trans : ru.stablex.ui.transitions.Scale = new ru.stablex.ui.transitions.Scale();
                trans.duration = 0.25;
                trans.scaleUp  = false;

                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page2');
            });
__meta__include4._onInitialize();
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);

var __meta__include3 : ru.stablex.ui.widgets.VBox = new ru.stablex.ui.widgets.VBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("VBox") ){
     var defs = 'LightGray'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("VBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include3);
     }
}
__meta__include3.name = 'page2';
__meta__include3.defaults = 'LightGray';
__meta__include3._onInitialize();

var __meta__include4 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.paddingLeft = 10;
__meta__include4.unifyChildren = true;
__meta__include4.childPadding = 10;
__meta__include4.paddingRight = 10;
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Fade';
__meta__include5.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                    var trans : ru.stablex.ui.transitions.Fade = new ru.stablex.ui.transitions.Fade();
                    trans.duration = 0.25;

                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page1');
                });
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Random slide';
__meta__include5.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                    var direction : Array<String> = ['left', 'right', 'top', 'bottom'];
                    var trans     : ru.stablex.ui.transitions.Slide = new ru.stablex.ui.transitions.Slide();
                    trans.duration  = 0.25;
                    trans.direction = direction[ Std.random(direction.length) ];

                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page1');
                });
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);

var __meta__include4 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include4);
     }
}
__meta__include4.paddingLeft = 10;
__meta__include4.unifyChildren = true;
__meta__include4.childPadding = 10;
__meta__include4.paddingRight = 10;
__meta__include4.widthPt = 100;
__meta__include4._onInitialize();

var __meta__include5 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.text = 'Scale up';
__meta__include5.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                    var trans : ru.stablex.ui.transitions.Scale = new ru.stablex.ui.transitions.Scale();
                    trans.duration = 0.25;
                    trans.scaleUp  = true;

                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page1');
                });
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);

var __meta__include5 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = "Default".split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__meta__include5);
     }
}
__meta__include5.name = 'btn';
__meta__include5.text = 'Scale down';
__meta__include5.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
                    var trans : ru.stablex.ui.transitions.Scale = new ru.stablex.ui.transitions.Scale();
                    trans.duration = 0.25;
                    trans.scaleUp  = false;

                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).trans = trans;
                    ru.stablex.ui.UIBuilder.getAs("vs", ru.stablex.ui.widgets.ViewStack).show('page1');
                });
__meta__include5._onInitialize();
__meta__include5._onCreate();
__meta__include4.addChild(__meta__include5);
__meta__include4._onCreate();
__meta__include3.addChild(__meta__include4);
__meta__include3._onCreate();
__meta__include2.addChild(__meta__include3);
__meta__include2._onCreate();
__meta__include1.addChild(__meta__include2);
__meta__include1._onCreate();
return __meta__include1;})());

__ui__widget2._onCreate();
__ui__widget1.addChild(__ui__widget2);

var __ui__widget2 : ru.stablex.ui.widgets.HBox = new ru.stablex.ui.widgets.HBox();
if( ru.stablex.ui.UIBuilder.defaults.exists("HBox") ){
     var defs = 'BottomMenu'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("HBox");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget2);
     }
}
__ui__widget2.id = 'bottomMenu';
__ui__widget2.defaults = 'BottomMenu';
__ui__widget2._onInitialize();

var __ui__widget3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MainBack'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget3);
     }
}
__ui__widget3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
            var vs = ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack);

            //change transition to slide back
            var transition     = vs.trans;
            vs.trans           = new ru.stablex.ui.transitions.Slide();
            vs.trans.duration  = 0.2;
            vs.trans.as(ru.stablex.ui.transitions.Slide).direction = 'right';

            //return previous screen
            vs.back();

            //recover default transition
            vs.trans = transition;
        });
__ui__widget3.defaults = 'MainBack';
__ui__widget3._onInitialize();
__ui__widget3._onCreate();
__ui__widget2.addChild(__ui__widget3);

var __ui__widget3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MainHome'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget3);
     }
}
__ui__widget3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){
            var vs = ru.stablex.ui.UIBuilder.getAs("screens", ru.stablex.ui.widgets.ViewStack);

            //change transition to slide back
            var transition     = vs.trans;
            vs.trans           = new ru.stablex.ui.transitions.Slide();
            vs.trans.duration  = 0.2;
            vs.trans.as(ru.stablex.ui.transitions.Slide).direction = 'right';

            //show main screen
            vs.show('main');
            vs.clearHistory();

            //recover default transition
            vs.trans = transition;
        });
__ui__widget3.defaults = 'MainHome';
__ui__widget3._onInitialize();
__ui__widget3._onCreate();
__ui__widget2.addChild(__ui__widget3);

var __ui__widget3 : ru.stablex.ui.widgets.Button = new ru.stablex.ui.widgets.Button();
if( ru.stablex.ui.UIBuilder.defaults.exists("Button") ){
     var defs = 'MainRecent'.split(",");
     var defFns = ru.stablex.ui.UIBuilder.defaults.get("Button");
     for(i in 0...defs.length){
         var defaultsFn : ru.stablex.ui.widgets.Widget->Void = defFns.get(defs[i]);
         if( defaultsFn != null ) defaultsFn(__ui__widget3);
     }
}
__ui__widget3.addEventListener(flash.events.MouseEvent.CLICK, function(event:flash.events.MouseEvent){});
__ui__widget3.defaults = 'MainRecent';
__ui__widget3._onInitialize();
__ui__widget3._onCreate();
__ui__widget2.addChild(__ui__widget3);
__ui__widget2._onCreate();
__ui__widget1.addChild(__ui__widget2);
__ui__widget1._onCreate();
return __ui__widget1;}