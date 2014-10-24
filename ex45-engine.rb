require_relative 'ex45-map'

class Engine
  def initialize(scene_map)
    @map = scene_map
  end
  def play()
    curr_scene = @map.opening_scene()
	next_scene = curr_scene.enter()
	$stdin.gets.chomp
    while(next_scene) do
      #keep getting next_scene
	  curr_scene = @map.next_scene(next_scene);
	  next_scene = curr_scene.enter()
	  $stdin.gets.chomp
    end
  end
end
