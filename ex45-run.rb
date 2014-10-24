require_relative 'ex45-engine'

mmap = MMap.new('central_corridor')
game = Engine.new(mmap)
game.play()
