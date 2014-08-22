require_relative 'config/application'
require_relative 'app/controllers/controller'
# require_relative '../models/Student'
# require_relative '../models/Lie'
# require_relative '../models/Truth'


game = Controller.new

game.user_input(ARGV)
