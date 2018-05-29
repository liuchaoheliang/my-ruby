#!/usr/bin/ruby -w
$KCODE = 'u'

COUNT = 0 


def say_hello(name = "liuchao",content ="nice to meet you") 
	puts "hello #{name},#{content} !"
	return "nice job"
end

say_hello "peter","how are you "

res = say_hello
puts res 

def eat(*foods) 
	puts "foods length is #{foods.length}"
	print "tonight eat those food :"
	for i in 0...foods.length
		print "#{foods[i]},"
	end
end 

eat "noods","cantle","clevir","poteto"


def test
	puts "frist"
	yield "GGGG"
end

test { |name| puts "this #{name} block "}
