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
		if (board.token_at(:top, :left) == :o && board.token_at(:top, :middle) == :o && board.token_at(:top, :right) == :o) ||
			(board.token_at(:middle, :left) == :o && board.token_at(:middle, :middle) == :o && board.token_at(:middle, :right) == :o) ||
			(board.token_at(:bottom, :left) == :o && board.token_at(:bottom, :middle) == :o && board.token_at(:bottom, :right) == :o)
			:o
		else
			:x
		end

		# board.each do |row|
		# 	if token_at(:top, :left) == :o
		# end
		# :x
	end

end
