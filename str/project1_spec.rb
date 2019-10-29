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
      # puts Polindrom.check('pop')
      expect( Polindrom.check('зddfщз')).to eq 'Слово обычное'
        # pending 'Not implemented'
    end

  end
end