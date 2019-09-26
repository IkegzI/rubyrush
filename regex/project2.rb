a = /#[a-zA-Zа-яА-Я_]+/

word = 'Будете #sdfsa у нас на #Колыме? Нет, уж лучше #вы_к_нам!'
s = word.scan(a)
puts s