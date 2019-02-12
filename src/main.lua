local widget = require("widget")

if system.getInfo("platform") == 'html5' then
    local myplugin = require("myplugin_js")

    local data = native.newTextBox(160, 360, 320, 250)

    local function pluginListener( str )
        data.text = data.text .. '\n' .. str
        print(data.text)
    end

    local getData = function()
        local str = myplugin.get()
        data.text = data.text .. '\n' .. str
        print(data.text)
    end

    myplugin.init(pluginListener)

    widget.newButton { onRelease = getData, left=60, top=120, width=200, height=50, label = "Read Browser URL", labelColor = { default={ 1, 1, 1 }, over={ 0.6, 0.6, 0.6 } } }
else
    local label = display.newText{ text="If you see this you're not running this in a browser.", x=display.contentCenterX, y=display.contentCenterY, fontSize=32, width=display.safeActualContentWidth, align="center" }
end
