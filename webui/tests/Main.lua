-- ****************************************************************************
-- *
-- *  PROJECT:     MTA:SA CEF utilities (https://github.com/Jusonex/mtasa_cef_tools)
-- *  FILE:        webui/tests/Main.lua
-- *  PURPOSE:     Resource entry point
-- *
-- ****************************************************************************

addEventHandler("onClientResourceStart", resourceRoot,
	function()
	
		-- Retrieve and set some basic information we need
		local screenWidth, screenHeight = guiGetScreenSize()
		local width, height = 640, 480
	
		-- Initialise the web ui manager (to be able to render web UIs)
		WebUIManager:new()
		
		-- Create our UIs
		local window1 = WebWindow:new(Vector2(screenWidth/2-width/2-100, screenHeight/2-height/2-100), Vector2(width, height), "tests/html/ui1.html", true)
		local window2 = WebWindow:new(Vector2(screenWidth/2-width/2, screenHeight/2-height/2), Vector2(width, height), "tests/html/ui2.html", true)
		local window3 = WebWindow:new(Vector2(screenWidth/2-width/2+100, screenHeight/2-height/2+100), Vector2(width, height), "tests/html/ui3.html", true)
		
		showCursor(true)
	end
)
