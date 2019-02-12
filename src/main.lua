local text = display.newText{ x=display.safeCenterX, y=display.safeCenterY, fontSize=40, text="TEST" }

if system.getInfo("platform") == 'html5' then
	text.text = require("js").jsTest()
end
