require 'rspec'
require_relative 'project2.rb'
describe 'MyBehavior' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'succeeds' do
      expect(Hashtag.check('tutu #poezda')).to eq %w(#poezda)
    end
    it 'Комбинированные хештеги с |_| , латнинским и русским алфавитами ' do
      expect(Hashtag.check('Будете #sdfsa у нас на #Колыме? Нет, уж лучше #вы_к_нам!')).to eq %w(#sdfsa #Колыме #вы_к_нам)
    end
    it '#Латиница' do
      expect(Hashtag.check('Будете #sdfsa')).to eq %w(#sdfsa)
    end
    it 'Много Нижних подчёркиваний' do
      expect(Hashtag.check('tutu #po_e_________________zda')).to eq %w(#po_e_________________zda)
    end
    it '# Кириллица' do
      expect(Hashtag.check('tutu #выкнам')).to eq %w(#выкнам)
    end
    it 'Только подчёркивания' do
      expect(Hashtag.check('tutu #___')).to eq %w()
    end
    it 'succeeds' do
      expect(Hashtag.check('tutu #324321')).to eq %w(#324321)
    end
  end
end