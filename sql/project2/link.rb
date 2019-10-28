require_relative 'gemfile.rb'
class Link < Post
  def input_data
    puts Post.start_data[3].first
    super
  end
end
