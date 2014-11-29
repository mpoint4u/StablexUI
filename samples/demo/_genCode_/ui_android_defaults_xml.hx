(function() : Void {
flash.Lib.current.stage.removeEventListener(flash.events.Event.ENTER_FRAME, ru.stablex.ui.UIBuilder.skinQueue);
flash.Lib.current.stage.addEventListener(flash.events.Event.ENTER_FRAME, ru.stablex.ui.UIBuilder.skinQueue);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Scroll") ) ru.stablex.ui.UIBuilder.defaults.set("Scroll", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Scroll").set("Level1", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Scroll = cast(__ui__widget0, ru.stablex.ui.widgets.Scroll);
__ui__widget1.skinName = 'BlackGradient1';
});
ru.stablex.ui.UIBuilder.defaults.get("Scroll").set("Level2", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Scroll = cast(__ui__widget0, ru.stablex.ui.widgets.Scroll);
if( !Std.is(__ui__widget1.skin, ru.stablex.ui.skins.Paint) ){
     __ui__widget1.skin = new ru.stablex.ui.skins.Paint();
     if( Std.is(__ui__widget1.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__ui__widget1.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__ui__widget1.skin, ru.stablex.ui.skins.Paint).color = 0xf2f2f2;
});
ru.stablex.ui.UIBuilder.defaults.get("Scroll").set("Screen", ru.stablex.ui.themes.android4.defaults.Scroll.Screen);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Slider") ) ru.stablex.ui.UIBuilder.defaults.set("Slider", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Slider").set("Haxe", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Slider = cast(__ui__widget0, ru.stablex.ui.widgets.Slider);
__ui__widget1.h = 20;
__ui__widget1.w = 20;
__ui__widget1.slider.h = 20;
__ui__widget1.slider.w = 20;
__ui__widget1.slider.top = -2;
if( !Std.is(__ui__widget1.skin, ru.stablex.ui.skins.Paint) ){
     __ui__widget1.skin = new ru.stablex.ui.skins.Paint();
     if( Std.is(__ui__widget1.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__ui__widget1.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__ui__widget1.skin, ru.stablex.ui.skins.Paint).color = 0x969696;
cast(__ui__widget1.skin, ru.stablex.ui.skins.Paint).padding = 8;
if( !Std.is(__ui__widget1.slider.skin, ru.stablex.ui.skins.Img) ){
     __ui__widget1.slider.skin = new ru.stablex.ui.skins.Img();
     if( Std.is(__ui__widget1.slider.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__ui__widget1.slider.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__ui__widget1.slider.skin, ru.stablex.ui.skins.Img).src = 'ui/android/img/haxe24.png';
cast(__ui__widget1.skin, ru.stablex.ui.skins.Paint).corners = [20];
});
ru.stablex.ui.UIBuilder.defaults.get("Slider").set("Default", ru.stablex.ui.themes.android4.defaults.Slider.Default);
ru.stablex.ui.UIBuilder.defaults.get("Slider").set("Rect", ru.stablex.ui.themes.android4.defaults.Slider.Rect);
if( !ru.stablex.ui.UIBuilder.defaults.exists("HBox") ) ru.stablex.ui.UIBuilder.defaults.set("HBox", new Map());
ru.stablex.ui.UIBuilder.defaults.get("HBox").set("TopMenu", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.HBox = cast(__ui__widget0, ru.stablex.ui.widgets.HBox);
__ui__widget1.padding = 5;
__ui__widget1.skinName = 'BlackBlueStripe';
__ui__widget1.align = 'left,middle';
__ui__widget1.widthPt = 100;
});
ru.stablex.ui.UIBuilder.defaults.get("HBox").set("BottomMenu", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.HBox = cast(__ui__widget0, ru.stablex.ui.widgets.HBox);
__ui__widget1.padding = 5;
__ui__widget1.unifyChildren = true;
__ui__widget1.align = 'top,center';
__ui__widget1.widthPt = 100;
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
});
if( !ru.stablex.ui.UIBuilder.defaults.exists("VBox") ) ru.stablex.ui.UIBuilder.defaults.set("VBox", new Map());
ru.stablex.ui.UIBuilder.defaults.get("VBox").set("Menu", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.VBox = cast(__ui__widget0, ru.stablex.ui.widgets.VBox);
__ui__widget1.paddingBottom = 4;
__ui__widget1.childPadding = 2;
__ui__widget1.widthPt = 100;
__ui__widget1.paddingTop = 4;
});
ru.stablex.ui.UIBuilder.defaults.get("VBox").set("LightGray", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.VBox = cast(__ui__widget0, ru.stablex.ui.widgets.VBox);
__ui__widget1.padding = 5;
__ui__widget1.skinName = 'LightGray';
__ui__widget1.childPadding = 10;
__ui__widget1.widthPt = 100;
__ui__widget1.heightPt = 100;
});
ru.stablex.ui.UIBuilder.defaults.get("VBox").set("DarkGray", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.VBox = cast(__ui__widget0, ru.stablex.ui.widgets.VBox);
__ui__widget1.padding = 5;
__ui__widget1.skinName = 'DarkGray';
__ui__widget1.childPadding = 10;
__ui__widget1.widthPt = 100;
__ui__widget1.heightPt = 100;
});
if( !ru.stablex.ui.UIBuilder.defaults.exists("Button") ) ru.stablex.ui.UIBuilder.defaults.set("Button", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Button").set("MainBack", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Button = cast(__ui__widget0, ru.stablex.ui.widgets.Button);
__ui__widget1.ico.src = 'ui/android/img/mainBack.png';
});
ru.stablex.ui.UIBuilder.defaults.get("Button").set("MainHome", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Button = cast(__ui__widget0, ru.stablex.ui.widgets.Button);
__ui__widget1.ico.src = 'ui/android/img/mainHome.png';
});
ru.stablex.ui.UIBuilder.defaults.get("Button").set("MainRecent", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Button = cast(__ui__widget0, ru.stablex.ui.widgets.Button);
__ui__widget1.ico.src = 'ui/android/img/mainRecent.png';
});
ru.stablex.ui.UIBuilder.defaults.get("Button").set("Default", ru.stablex.ui.themes.android4.defaults.Button.Default);
ru.stablex.ui.UIBuilder.defaults.get("Button").set("Settings", ru.stablex.ui.themes.android4.defaults.Button.Settings);
ru.stablex.ui.UIBuilder.defaults.get("Button").set("MenuItem", ru.stablex.ui.themes.android4.defaults.Button.MenuItem);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Switch") ) ru.stablex.ui.UIBuilder.defaults.set("Switch", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Switch").set("Dark", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Switch = cast(__ui__widget0, ru.stablex.ui.widgets.Switch);
if( !Std.is(__ui__widget1.skin, ru.stablex.ui.skins.Paint) ){
     __ui__widget1.skin = new ru.stablex.ui.skins.Paint();
     if( Std.is(__ui__widget1.skin, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(__ui__widget1.skin, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(__ui__widget1.skin, ru.stablex.ui.skins.Paint).alpha = 0.6;
});
ru.stablex.ui.UIBuilder.defaults.get("Switch").set("DayNight", function(__ui__widget0:ru.stablex.ui.widgets.Widget) : Void {
var __ui__widget1 : ru.stablex.ui.widgets.Switch = cast(__ui__widget0, ru.stablex.ui.widgets.Switch);
__ui__widget1.slider.skinName = 'switchSliderDayNight';
__ui__widget1.h = 24;
__ui__widget1.w = 97;
__ui__widget1.labelOn.format.color = 0xFFFFFF;
__ui__widget1.slider.w = 47;
__ui__widget1.skinName = 'switcher';
__ui__widget1.labelOff.format.color = 0x999999;
});
ru.stablex.ui.UIBuilder.defaults.get("Switch").set("Default", ru.stablex.ui.themes.android4.defaults.Switch.Default);
ru.stablex.ui.UIBuilder.defaults.get("Switch").set("Classic", ru.stablex.ui.themes.android4.defaults.Switch.Classic);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Progress") ) ru.stablex.ui.UIBuilder.defaults.set("Progress", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Progress").set("Default", ru.stablex.ui.themes.android4.defaults.Progress.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("StateButton") ) ru.stablex.ui.UIBuilder.defaults.set("StateButton", new Map());
ru.stablex.ui.UIBuilder.defaults.get("StateButton").set("Default", ru.stablex.ui.themes.android4.defaults.StateButton.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("TabPage") ) ru.stablex.ui.UIBuilder.defaults.set("TabPage", new Map());
ru.stablex.ui.UIBuilder.defaults.get("TabPage").set("Default", ru.stablex.ui.themes.android4.defaults.TabPage.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Options") ) ru.stablex.ui.UIBuilder.defaults.set("Options", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Options").set("Default", ru.stablex.ui.themes.android4.defaults.Options.Default);
ru.stablex.ui.UIBuilder.defaults.get("Options").set("Picker", ru.stablex.ui.themes.android4.defaults.Options.Picker);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Radio") ) ru.stablex.ui.UIBuilder.defaults.set("Radio", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Radio").set("Default", ru.stablex.ui.themes.android4.defaults.Radio.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("TabStack") ) ru.stablex.ui.UIBuilder.defaults.set("TabStack", new Map());
ru.stablex.ui.UIBuilder.defaults.get("TabStack").set("Default", ru.stablex.ui.themes.android4.defaults.TabStack.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Checkbox") ) ru.stablex.ui.UIBuilder.defaults.set("Checkbox", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Checkbox").set("Default", ru.stablex.ui.themes.android4.defaults.Checkbox.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("InputText") ) ru.stablex.ui.UIBuilder.defaults.set("InputText", new Map());
ru.stablex.ui.UIBuilder.defaults.get("InputText").set("Default", ru.stablex.ui.themes.android4.defaults.InputText.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Widget") ) ru.stablex.ui.UIBuilder.defaults.set("Widget", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Widget").set("HR", ru.stablex.ui.themes.android4.defaults.Widget.HR);
ru.stablex.ui.UIBuilder.defaults.get("Widget").set("HRLight", ru.stablex.ui.themes.android4.defaults.Widget.HRLight);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Text") ) ru.stablex.ui.UIBuilder.defaults.set("Text", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Text").set("Default", ru.stablex.ui.themes.android4.defaults.Text.Default);
ru.stablex.ui.UIBuilder.defaults.get("Text").set("Dark", ru.stablex.ui.themes.android4.defaults.Text.Dark);
ru.stablex.ui.UIBuilder.defaults.get("Text").set("DarkTip", ru.stablex.ui.themes.android4.defaults.Text.DarkTip);
ru.stablex.ui.UIBuilder.defaults.get("Text").set("LightTip", ru.stablex.ui.themes.android4.defaults.Text.LightTip);
ru.stablex.ui.UIBuilder.defaults.get("Text").set("H1", ru.stablex.ui.themes.android4.defaults.Text.H1);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Tip") ) ru.stablex.ui.UIBuilder.defaults.set("Tip", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Tip").set("Default", ru.stablex.ui.themes.android4.defaults.Tip.Default);
if( !ru.stablex.ui.UIBuilder.defaults.exists("Toggle") ) ru.stablex.ui.UIBuilder.defaults.set("Toggle", new Map());
ru.stablex.ui.UIBuilder.defaults.get("Toggle").set("Default", ru.stablex.ui.themes.android4.defaults.Toggle.Default);
ru.stablex.ui.UIBuilder.regSkins();
ru.stablex.ui.themes.android4.Main.main();})()