require_relative 'board'

class Game
	attr_accessor :board

	def initialize(board = nil)
		@board = board
	end

	def over?
		if board == nil
			false
		elsif board.full?
			true
		else
			false
		end
	end

	def tie?
		true
	end

	def winner
		:x
	end

end
