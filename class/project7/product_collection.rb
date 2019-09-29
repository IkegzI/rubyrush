require_relative 'product'
require_relative 'movie'
require_relative 'book'
require 'find'

class ProductCollection

  def self.from_dir
    a = []
        self.arr_file.each do |item|
      if item.match('data/movie')
        a << Movie.from_file(item.encode('UTF-8'))
      elsif item.match('data/book')
        a << Book.from_file(item.encode('UTF-8'))
      end
    end
    a
  end

  def self.arr_file
    arr = []
    Find.find("#{Dir.pwd}/project7/data") do |item|
      if item.match(/.txt/)
        arr << item
      end
    end
    arr
  end

end