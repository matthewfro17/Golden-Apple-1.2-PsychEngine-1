function onCreate()
	-- background shit
	makeLuaSprite('ogBackground', 'ogBackground', -600, -300);
	setScrollFactor('ogBackground', 0.9, 0.9);
	
	makeLuaSprite('ogClouds', 'ogClouds', -125, -100);
	setScrollFactor('ogClouds', 0.9, 0.9);
	scaleObject('ogClouds', 1.1, 1.1);
	
	makeLuaSprite('ogWindow', 'ogWindow', -600, -300);
	setScrollFactor('ogWindow', 0.9, 0.9);
	
	makeLuaSprite('ogGrass', 'ogGrass', -650, 600);
	setScrollFactor('ogGrass', 0.9, 0.9);
	scaleObject('ogGrass', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('ogCeiling', 'ogCeiling', -500, -650);
		setScrollFactor('ogCeiling', 1.3, 1.3);
		scaleObject('ogCeiling', 0.9, 0.9);
	end

	addLuaSprite('ogBackground', false);
	addLuaSprite('ogClouds', false);
	addLuaSprite('ogWindow', false);
	addLuaSprite('ogGrass', false);
	addLuaSprite('ogCeiling', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end