require 'rspec'
require_relative './project4/game'

describe 'Visilica' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'Выиграл' do
      game = Game.new('ололол')
      game.quest_word_to_letter(game.quest_word)
      game.check_input_letter(game.input_letter('о'))
      game.check_input_letter(game.input_letter('л'))
      expect(game.check_win?).to eq true
      expect(game.end_attempt?).to eq false
    end
    it 'Проиграл' do
      game = Game.new('ололол')
      game.quest_word_to_letter(game.quest_word)
      game.check_input_letter(game.input_letter('а'))
      game.check_input_letter(game.input_letter('в'))
      game.check_input_letter(game.input_letter('ы'))
      game.check_input_letter(game.input_letter('ф'))
      game.check_input_letter(game.input_letter('е'))
      game.check_input_letter(game.input_letter('и'))
      game.check_input_letter(game.input_letter('д'))
      expect(game.end_attempt?).to eq true
      expect(game.check_win?).to eq false
    end
  end
end