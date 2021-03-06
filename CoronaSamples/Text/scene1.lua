------------------------------------------------------------------------
--
-- scene1.lua
--
------------------------------------------------------------------------

-- Use the require function to include the Corona "composer" module so 
-- we can create a new scene.
local composer = require( "composer" )

-- Use composer to create a new scene. 
local scene = composer.newScene()

-- Set the background color to a light blue color. 
display.setDefault( "background", 0.2, 0.5, 1.0 )

function scene:create( event )

	local sceneGroup = self.view

	-- https://docs.coronalabs.com/api/library/display/newText.html

	local systemText = display.newText( "This is the native system font.", 510, 150, native.systemFont, 55 )
	systemText:setFillColor( 1.0, 0.0, 0.0 )


	local fancyText = display.newText( "This uses a fancy custom font!", 510, 300, "DelitschAntiqua", 55 )
	fancyText:setFillColor( 0.0 )

	local options = 
	{
	    text = "This text has been aligned to the right and forced onto multiple lines by setting the align and width properties in an option.",
	    x = 510,
	    y = 560,
	    width = 250, -- Required for multi-line
	    font = native.systemFontBold,
	    fontSize = 30,
	    align = "right"
	}

	local multiLineText = display.newText( options )

	sceneGroup:insert( systemText )
	sceneGroup:insert( fancyText )
	sceneGroup:insert( multiLineText )

end

------------------------------------------------------------------------

-- Add event listeners for all of the scene events we want to get called for!
scene:addEventListener( "create", scene )

------------------------------------------------------------------------

-- Finally, we return the scene that we just defined so composer can 
-- make use of it.
return scene
