/*The MIT License

Copyright (c) 2013 AS3Boyan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

(function () { "use strict";
var Main = function() {
	var _g = this;
	var timer = new haxe.Timer(5000);
	timer.run = function() {
		if(_g.socket.readyState != 1) _g.reload_js();
	};
	this.init();
};
Main.main = function() {
	new Main();
}
Main.prototype = {
	reload_script: function() {
	}
	,reload_js: function() {
		js.Browser.location.reload();
	}
	,init: function() {
		var _g = this;
		this.socket;
		this.socket = new WebSocket("ws://127.0.0.1:5001/");
		this.socket.onopen = function(e) {
			console.log("Socket open");
		};
		this.socket.onmessage = function(e) {
			if(e.data == "update") _g.reload_js();
			console.log(e.data);
		};
		this.socket.onclose = function(e) {
			console.log(e);
			console.log("closed");
		};
	}
}
var haxe = {}
haxe.Timer = function(time_ms) {
	var me = this;
	this.id = setInterval(function() {
		me.run();
	},time_ms);
};
haxe.Timer.prototype = {
	run: function() {
		console.log("run");
	}
}
var js = {}
js.Browser = function() { }
js.Browser.location = typeof window != "undefined" ? window.location : null;
Main.main();
})();
