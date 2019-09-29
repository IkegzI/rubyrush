require 'find'
require_relative 'project7/product_collection'

#  a = []
# a[0] = Movie.new(title: 'Леон', price: 100, amount:  2, producer: 'Люк Бессон', year: 1994)
# a[1] = Movie.new(title: 'Дурак', price: 1000, amount:  12, producer: 'Юрий Быков', year: 2014)
# a[2] = Movie.new(title: 'Человек-паук: вдали от дома', price: 2000, amount:  2, producer: 'Джон Уоттс', year: 2019)
# a[3] = Book.new(title: 'Готовка для чайников',author: 'Иван Поваров', price: 600, genre: 'образование', amount: 4, publishing: 'Просвещение', year: 2019)
# a[4] = Book.new(author: 'Достоевский Ф.М.', title: 'Идиот', price: 1200, amount: 4, publishing: 'Классическая книга', year: 2010, genre: 'классика')
# a[5] = Book.new(author: 'Грибодедов А.С.', title: 'Горе от ума', price: 6200, amount: 4, publishing: 'Классическая книга', year: 2000, genre: 'классика')
# # #
#a = Movie.from_file('./project7/data/movie/Дур1ак.txt')
#
# a.each {|item| item.file_create}
# a.each {|item| item.print_info}

ProductCollection.from_dir
arr = ProductCollection.sort!(by: :year)
# ProductCollection.sort_collection.each {|item| print item.print_info}
arr.each {|item| item.print_info}