require_relative 'product'
require_relative 'movie'
require_relative 'book'
require 'find'

class ProductCollection

  def self.from_dir(dir_path = nil)
    @a = []
    self.arr_file(dir_path).each do |item|
      if item.match('data/movie')
        @a << Movie.from_file(item.encode('UTF-8'))
      elsif item.match('data/book')
        @a << Book.from_file(item.encode('UTF-8'))
      end
    end
    @a
  end

  def self.arr_file(dir_path)
    arr = []
    dir_pwd = dir_path || "#{Dir.pwd}/project7/data"
    Find.find(dir_pwd) do |item|
      if item.match(/.txt/)
        arr << item
      end
    end
    arr
  end

  def self.sort!(params)
    self.sort_element(params[:by])
    @a.reverse! if params[:order] == :asc
    @a
  end

  private

  def self.sort_element(srt_by)
    i = 0
    @a.each { |obj| i += 1 if obj.product[srt_by].to_i == 0 }
    @a.sort_by! { |obj| i != 0 ? obj.product[srt_by].to_s : obj.product[srt_by].to_i }
  end

end