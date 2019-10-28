require_relative 'gemfile.rb'



class Post

  include Base

  def initialize
    @data_user = {}
  end

  def self.start_data
    {
        1 => ['Напоминание', 'memo'],
        2 => ['Задача', 'task'],
        3 => ['Ссылка', 'link']
    }
  end

  def input_data
    @data_user['type'] = self.class.name
    @data_user['date_create'] = (Date.today).strftime('%d-%m-%Y')
    input_user = ''
    loop do #текст
      input_text  = STDIN.gets
      break if input_text.chomp == '!'
      input_user += input_text
    end
    @data_user['text'] = input_user
    @data_user
  end


end
