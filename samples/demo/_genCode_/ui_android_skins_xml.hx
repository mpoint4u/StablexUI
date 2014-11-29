(function(){
ru.stablex.ui.UIBuilder.skins.set("switchSliderDayNight", function():ru.stablex.ui.skins.Skin{
var skin = new ru.stablex.ui.skins.Gradient();
skin.colors = [0xAAAAAA, 0x333333];
skin.padding = 2;
skin.borderColor = 0x333333;
skin.corners = [20];
skin.border = 1;
skin.rotation = 0;
return skin;
});
ru.stablex.ui.UIBuilder.skins.set("tabBottomActive", function():ru.stablex.ui.skins.Skin{
var skin = new ru.stablex.ui.skins.Layer();
if( !Std.is(skin.behind, ru.stablex.ui.skins.Paint) ){
     skin.behind = new ru.stablex.ui.skins.Paint();
     if( Std.is(skin.behind, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(skin.behind, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(skin.behind, ru.stablex.ui.skins.Paint).color = 0x33b5e5;
if( !Std.is(skin.current, ru.stablex.ui.skins.Paint) ){
     skin.current = new ru.stablex.ui.skins.Paint();
     if( Std.is(skin.current, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(skin.current, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(skin.current, ru.stablex.ui.skins.Paint).paddingTop = 6;
cast(skin.current, ru.stablex.ui.skins.Paint).color = 0x333333;
return skin;
});
ru.stablex.ui.UIBuilder.skins.set("tabBottomPressed", function():ru.stablex.ui.skins.Skin{
var skin = new ru.stablex.ui.skins.Layer();
if( !Std.is(skin.behind, ru.stablex.ui.skins.Paint) ){
     skin.behind = new ru.stablex.ui.skins.Paint();
     if( Std.is(skin.behind, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(skin.behind, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(skin.behind, ru.stablex.ui.skins.Paint).color = 0x33b5e5;
if( !Std.is(skin.current, ru.stablex.ui.skins.Paint) ){
     skin.current = new ru.stablex.ui.skins.Paint();
     if( Std.is(skin.current, ru.stablex.ui.widgets.Widget) ){
         var __tmp__ : ru.stablex.ui.widgets.Widget = cast(skin.current, ru.stablex.ui.widgets.Widget);
         ru.stablex.ui.UIBuilder.applyDefaults(__tmp__);
         __tmp__._onInitialize();
         __tmp__._onCreate();
     }
}
cast(skin.current, ru.stablex.ui.skins.Paint).paddingTop = 6;
cast(skin.current, ru.stablex.ui.skins.Paint).color = 0x33819d;
return skin;
});})()