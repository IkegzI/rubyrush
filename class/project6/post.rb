class Post

  def initialize(text = nil)
    @text = text || (@text || input_data)
    @created_at
    #.strftime("%M:%H %d-%m-%Y")
  end


  def input_data
    @text = ARGV[1] || STDIN.gets
  end

  def to_string
    @created_at.strftime("%H:%M %d-%m-%Y")  +  "\n"
  end

  def save
    file = File.new(file_path, 'w+')
    file.puts(to_string)
    file.close
  end

  def file_path
    @created_at = Time.now
    current_path = "#{File.dirname(__FILE__)}/data/"
    file_name = @created_at.strftime("#{self.class.name}_%m%d%y-%H-%M-%S.txt")
    current_path + file_name
  end

end