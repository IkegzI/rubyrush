file = File.open("#{File.dirname('__FILE__')}/gems/project4/hello.txt", 'a+')
file.syswrite("Hello, file!\n")
file.close