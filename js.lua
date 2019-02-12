local lib = {}

function lib.jsTest()
	local js = require("js_js")
	js.init()
	print( "Values:", js.someInt, js.someString, js.log() )
	return js.log()
end

return lib
