require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/board_case'
require 'app/board'
require 'app/game'
require 'app/player'
require 'views/show'



class App
	attr_accessor :morpion
	
	def initialize
		puts "bienvenu dans le super mother fucking morpion game 2020!"
		@morpion = Game.new
		full_game
		
	end

	def full_game
		turn = 0
		while @morpion.is_still_ongoing == true
			
			@morpion.play_each_turn
			turn += 1
			@morpion.win_announcement(@morpion.player2)
        	
		end
	end


	
end
#binding.pry

App.new



