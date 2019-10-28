require_relative 'gemfile.rb'
class Memo < Post
  def input_data
    puts Post.start_data[1].first
    super
    puts 'Напоминание действует до: '
    begin
    @data_user[:date_end] = Date.parse((STDIN.gets.chomp).split('-').reverse.join('-')).strftime('%d-%m-%Y')
    rescue ArgumentError
      @data_user['date_end'] = (Date.today+ 1).strftime('%d-%m-%Y')
    end
  end
end
