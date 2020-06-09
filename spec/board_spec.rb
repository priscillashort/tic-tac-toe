require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  # it 'needs covered with tests' do
  #   fail 'See spec/board_spec.rb'
  # end

  it 'exists' do
    Board.new
  end

  it 'has locations' do
    expect(Board.new).to respond_to(:locations)
  end

end
