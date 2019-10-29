class Hashtag
  def self.check(word)
    # a = /#[0-9a-zA-Zа-яА-Я_]+/
    a = /#[0-9a-zA-Zа-яА-Я_]*[0-9a-zA-Zа-яА-Я]+/
# word = 'Будете #sdfsa у нас на #Колыме? Нет, уж лучше #вы_к_нам!'
    s = word.scan(a)
    return s
  end
end