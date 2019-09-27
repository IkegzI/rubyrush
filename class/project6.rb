require_relative './project6/memo'
require_relative './project6/task'
require_relative './project6/link'
require_relative './project6/post'

if ["memo", "task", "link"].include?(ARGV[0]) and ARGV[0] != nil
  case ARGV[0]
  when "memo"
    s = 1
  when "task"
    s = 2
  when "link"
    s = 3
  end
else
  puts "Вы неправильно указали тип поста"
end

s = STDIN.gets.to_i unless defined?(s)

case s
when 1
  a = Memo.new(ARGV[1])
  a.save
when 2
  a = Task.new(ARGV[1], ARGV[2])
  a.save
when 3
  a = Link.new(ARGV[1], ARGV[2])
  a.save
end

