#README

=begin
Game: Player is goldilocks. 
Player goes through many scenes and has to overcome obstacles to survive. 
Player may die after failing to complete obstacles.
  Deaths: funny, random ways to die
Obstacles include: Telling a funny joke, guessing a passcode, choosing a correct action.
   
  Each room prints its description as player enters room. 
  The room tells the game engine which room to run next on the map
  
  Scenes:
    0. Death: funny. 
    1. Central Corridor: Starting place. There is Golem standing here. Must defeat with funny joke.
	2. Laser Weapon Armory: Contains Johnny Neutron's neutrom bomb. Must use to blow up ship before getting to escape pod. Player must provide correct passcode
    3. The Bridge: You have arrows that you must fire at aliens that pop out of the hole. Evaluate correct positions for them.
	4. Escape Pod: Hero can escape after guessing the correct pod.

Nouns: 
Alien
Player
Ship
Escape Pod
Room 
Scenes
Golem
Planet
Map
Engine
Deaths
Central COrridor
Laser Weapon Armory
The Bridge
Obstacle

Actors:
  Alien
  Player
  Golem
Map:
  next_scene
  opening_scene
Engine
  play
Scene
  -enter
  Death 
  Central Corridor
  Laser Weapon Armory
  The Bridge
  Escape Pod
=end


class Scene
  def enter()
  end
end

class Death < Scene
  def enter()
    puts "You have entered Death"
	return nil
  end
end

class CentralCorridor < Scene
  def enter()
    puts "You have entered the Central Corridor"
	puts "Guess a number from 1 to 10"
	begin 
	  number = $stdin.gets.chomp.to_i
	  if number > 5
        return 'death'	  
	  else
	    puts "Good choice"
	  end
	rescue
	  puts "Bad input"
	  return 'death'
	end
	return 'laser_weapon_armory'
  end
end

class LaserWeaponArmory < Scene
  def enter()
    puts "You have entered the Laser Weapon Armory"
	return 'the_bridge'
  end
end

class TheBridge < Scene
  def enter()
    puts "You have entered the bridge"
	return 'escape_pod'
  end
end

class EscapePod < Scene
  def enter()
    puts "You have entered the Escape Pod"
	return 'death'
  end
end

