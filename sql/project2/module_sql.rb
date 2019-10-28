require_relative 'gemfile.rb'
module Base

  def self.db
    @db = SQLite3::Database.new("#{File.dirname(__FILE__)}/notepad.sqlite")
  end

  def save
    begin
      Base.db.execute("insert into post (" + @data_user.keys.join(', ') + ') ' +
                          'VALUES (' + ('?,' * @data_user.keys.size).chomp(',') + ')',
                      @data_user.values)
    rescue SQLite3::SQLException => e
      puts 'Не удалось сохранить данные!'
      puts e
    end
  end

  def find_data(data)
    begin
      if data[:type]
        d = find_type_data (data)
      elsif data[:sort_by]
        d = sort_data(data[:sort_by])
      elsif data[:date_create]
        d = find_data(data[:date_create])
      elsif data = ''
        d = sort_data('id')
      end
      d
    rescue NameError
      puts "Ошибка! Проверьте подключение к БД!"
    end
  end

  def print_data(data = '')
    begin
      d = find_data(data)
      if d.nil? or d == ''
        puts "Таких записей нет!"
        return b
      end
      # puts "№ Тип\tДата создания\tДата окончания\t\tТекст"
      d.each_with_index do |item, index|
        puts '==========================================================='
        print '№' + item[0].to_s + "\t"
        print 'Тип: ' + item[1] + "\t"
        puts 'Дата создания: ' + item[2] + "\t"
        puts 'Дата окончания: ' + (item[4] || "") if item[4]
        puts "Текст\n" + item[3]
        puts '==========================================================='
        # tab = "\t"
        # item.each do |val|
        #   print (" #{val}\t")
        # end
        puts
      end
    rescue NameError
      puts "Ошибка! Проверьте подключение к БД!"
    end
  end

  private

  def sort_data(data)
    Base.db.execute('select * from post order by ' + '"' + data + '"')
  end

  def find_data (data)
    query = 'select * from post'
    unless data == ''
      query += ' where "' +
          data.keys.join +
          '"' + ' = ' + '"' +
          data.values.join +
          '"' +
          ' order by "' + data.keys.join + '"'
    else
      query += ' order by id'
    end
    begin
      data = Base.db.execute(query)
    rescue
    end
    data = '' unless data
    data
  end

end
