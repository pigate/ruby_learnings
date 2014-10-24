require_relative 'ex45-scene'
#Map stuff
class MMap #stores 'sequence' of scenes
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
        'laser_weapon_armory' => LaserWeaponArmory.new(),
        'the_bridge' => TheBridge.new(),
        'escape_pod' => EscapePod.new(),
        'death' => Death.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end
  def next_scene(scene_name)
    return @@scenes[scene_name]
  end
  def opening_scene
    return next_scene(@start_scene)
   end
end

