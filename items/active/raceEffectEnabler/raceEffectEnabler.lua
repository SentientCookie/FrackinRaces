function activate(fireMode, shiftHeld)
    self.species = world.entitySpecies(activeItem.ownerEntityId())
    if fireMode == "primary" then
      if self.species == "avian" then
        player.makeTechAvailable("flight_avian")
        player.enableTech("flight_avian")
        player.equipTech("flight_avian")
      elseif self.species == "juux" then
        player.makeTechAvailable("juuxharden")
        player.enableTech("juuxharden")
        player.equipTech("juuxharden")          
      elseif self.species == "veluu" then
        player.makeTechAvailable("veluuclaw")
        player.enableTech("veluuclaw")
        player.equipTech("veluuclaw")  
	  elseif self.species == "cat" then
        player.makeTechAvailable("veluuclaw")
        player.enableTech("veluuclaw")
        player.equipTech("veluuclaw") 		
      elseif self.species == "avali" or self.species == "novali" then
        player.makeTechAvailable("flight_avali")
        player.enableTech("flight_avali")
        player.equipTech("flight_avali")
      elseif self.species == "saturn" then
        player.makeTechAvailable("flight_saturnian")
        player.enableTech("flight_saturnian")
        player.equipTech("flight_saturnian")
      elseif self.species == "saturn2" then
        player.makeTechAvailable("flight_saturnianmoth")
        player.enableTech("flight_saturnianmoth")
        player.equipTech("flight_saturnianmoth")        
      elseif self.species == "kazdra" then
        player.makeTechAvailable("dragonfireburst")
        player.enableTech("dragonfireburst")
        player.equipTech("dragonfireburst")  
      elseif self.species == "thelusian" then
        player.makeTechAvailable("bugarmor")
        player.enableTech("bugarmor")
        player.equipTech("bugarmor")       
      elseif self.species == "radien" then
        player.makeTechAvailable("xi_bulb")
        player.enableTech("xi_bulb")
        player.equipTech("xi_bulb")         
      elseif self.species == "shadow" then
        player.makeTechAvailable("tenebrhaeburst")
        player.enableTech("tenebrhaeburst")
        player.equipTech("tenebrhaeburst")            
      elseif self.species == "moogle" then
	player.makeTechAvailable("flight_moogle")
	player.enableTech("flight_moogle")
	player.equipTech("flight_moogle")
      elseif self.species == "felin" or self.species == "fenerox" or self.species == "sergal" then
	player.makeTechAvailable("huntersclaw")
	player.enableTech("huntersclaw")
	player.equipTech("huntersclaw")	
      elseif self.species == "gyrusens" then
	player.makeTechAvailable("minersclaw")
	player.enableTech("minersclaw")
	player.equipTech("minersclaw")	
      elseif self.species == "elduukhar" then
	player.makeTechAvailable("elduukharburst")
	player.enableTech("elduukharburst")
	player.equipTech("elduukharburst")
      elseif self.species == "nightar" then
        player.makeTechAvailable("nightarconshak")
        player.enableTech("nightarconshak")
        player.equipTech("nightarconshak")  	
      end
      animate()
    else
      animator.setParticleEmitterActive("butterflies", false)	
      animator.setParticleEmitterActive("butterflies2", false) 
      animator.setParticleEmitterActive("butterflies3", false)      
    end
    
end

function animate()
    	animator.setParticleEmitterOffsetRegion("butterflies", mcontroller.boundBox())
    	animator.setParticleEmitterActive("butterflies", true)	
    	animator.setParticleEmitterOffsetRegion("butterflies2", mcontroller.boundBox())
    	animator.setParticleEmitterActive("butterflies2", true) 
    	animator.setParticleEmitterOffsetRegion("butterflies3", mcontroller.boundBox())
    	animator.setParticleEmitterActive("butterflies3", true)    	
    	animator.playSound("activate") 
end

function update()
	if mcontroller.crouching() then
		activeItem.setArmAngle(-0.15)
	else
		activeItem.setArmAngle(-0.5)
	end
end







