Gamestate.intro = Gamestate.new()
local state = Gamestate.intro
fade = 0

switchmenu = function() Gamestate.switch(Gamestate.menu) end

function state:enter()
  Timer.add(7, switchmenu)
end

function state:update(dt)
	Timer.update(dt)
	if fade < 255 then
		  fade=fade+50*dt
	end
end

function state:draw()
  
  love.graphics.setColor(255,255,255,fade)
  love.graphics.draw(images.logo, 0, 80, 0, 0.8) 
  love.graphics.setColor(255,255,255,255)
end 

function state:keypressed(key, unicode)
  Gamestate.switch(Gamestate.menu)
end

function state:mousepressed(x, y, button)
  Gamestate.switch(Gamestate.menu)
end

function state:leave()
  love.audio.stop()
end
