require 'rspec'
require_relative 'project1.rb'
describe 'Polindrom' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'Polindrom' do
    it 'check Палиндром' do
      # puts Polindrom.check('pop')
      expect( Polindrom.check('pop')).to eq 'Палиндром'
      # pending 'Not implemented'
    end

    it 'check Слово обычное' do
      expect( Polindrom.check('ffvаааcff')).to eq 'Слово обычное'
    end
    it 'check Слово обычное' do
      expect( Polindrom.check('ffcапcff')).to eq 'Слово обычное'
    end
    it 'check Слово обычное' do
      expect( Polindrom.check('ffсаcff')).to eq 'Слово обычное'
    end
    it 'check Слово обычное' do
      expect( Polindrom.check('ffvаааfсf')).to eq 'Слово обычное'
    end
    it 'check Слово обычное' do
      expect( Polindrom.check('ffvаааfсf')).to eq 'Слово обычное'
    end

  end
end