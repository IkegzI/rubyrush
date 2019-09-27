require "digest"

a = "Хороший программист"

puts Digest::MD5.hexdigest(a)
puts Digest::SHA1.hexdigest(a)
puts Digest::SHA2.hexdigest(a)

