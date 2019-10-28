require_relative 'gemfile.rb'
class Task < Post
  def input_data
    begin
      puts 'Введите "deadline"'
      @data_user['date_end'] = Date.parse((STDIN.gets.chomp).split('-').reverse.join('-')).strftime('%d-%m-%Y')
    rescue ArgumentError
      @data_user['date_end'] = (Date.today + 7).strftime('%d-%m-%Y')
    rescue RuntimeError
      @data_user['date_end'] = (Date.today + 7).strftime('%d-%m-%Y')
    end
    puts Post.start_data[2].first
    super
  end
end
