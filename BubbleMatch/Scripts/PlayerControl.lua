local playerSpeed = 20

local player = display.newCircle( 100, 100, 30 )
player.strokeWidth = 5
player:setStrokeColor(128,0,0)  -- red

-- Called when a new gyroscope measurement has been received.
local function onGyroscopeDataReceived( event )
	player:translate(event.xGravity*playerSpeed, event.yGravity*(-playerSpeed))
end

Runtime:addEventListener( "accelerometer", onGyroscopeDataReceived )
