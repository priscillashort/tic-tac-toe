require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  # it 'needs covered with tests' do
  #   fail 'See spec/board_spec.rb'
  # end

  let(:full_board) {
    Board.new({
      top: {left: :fake, middle: :fake, right: :fake},
      middle: {left: :fake, middle: :fake, right: :fake},
      bottom: {left: :fake, middle: :fake, right: :fake}
    })
  }

  let(:midgame_board) {
    Board.new({
      top: {left: :o, middle: nil, right: nil},
      middle: {left: nil, middle: :x, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    })
  }

  let(:x_wins_board) {
    Board.new({
      top: {left: :x, middle: :x, right: :x},
      middle: {left: :o, middle: :o, right: nil},
      bottom: {left: :o, middle: nil, right: nil}
    })
  }

  let(:o_wins_board) {
    Board.new({
      top: {left: :o, middle: :o, right: :o},
      middle: {left: :x, middle: :x, right: nil},
      bottom: {left: :x, middle: nil, right: nil}
    })
  }

  it 'exists' do
    Board.new
  end

  it 'has locations' do
    expect(Board.new).to respond_to(:locations)
  end

  it 'reports the token at a given location' do
    expect(midgame_board.token_at(:top, :left)).to eq(:o)
  end

  it 'can place a token at a given location' do
    midgame_board.place(:x, :top, :left)
    expect(midgame_board.token_at(:top, :left)).to eq(:x)
  end
end
