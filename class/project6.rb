class Memo < Post

  def input_data

  end

  def to_string

  end

end

class Link < Post

  def initialize
    super
    @url = ''
  end

  def input_data

  end

  def to_string

  end


end

class Task < Post

  def initialize
    super
    @due_date
  end

  def input_data

  end

  def to_string

  end

end

class Post

  def initialize
    @text
    @created_at
  end

  def input_data

  end

  def to_string

  end

  def save
    file = File.new(file_path)
    for item in to_string do
      file.puts(item)
    end
    file.close

  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%d%m%Y-%h-%m-%s.txt")
    current_path + file_name
  end

end