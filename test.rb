#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

#指定字符集
#$KCODE = 'u'


=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end


puts "hello 刘超 !!! "

BEGIN {
	puts "application is start"
}

print <<'EOF'
	这是什么啊？
	这是你大爷
EOF

#执行命令
print <<`EOC`
	echo hi miss zhang
EOC



num = 2
num1 = 3
num2 = num*num1
#puts num2,num

print <<"foo"
	say foo $num
foo

puts  "num*num1=#{num2*num}"

ary = ["liuchao","heliang","chenqiang","zhouermao"]
ary1 = ["liuchao","小米"]

def printArray ( array )
	array.each do |i|
		puts "当前条目名称是 :"+i
	end
end

printArray(ary | ary1)

#ary.each do |i|
#	puts "this item :"+i
#end

puts ary.at(2)

str = "hello word !!"
str1 = str.upcase

str << "name liuchaoheliang"
puts str
puts "#{str1}"

str11 = "testOne"
str22 = "testPne"
#比较大小，转码比较
puts "#{str11<=>str22}"

str11.capitalize!
puts str11.count(str22)

str33 = String.new("hello;m'ss;Lin0")
puts str33.dump

puts str33.index('llo')
puts str33 =~ /\d/

puts str11.eql?('test')

# str33.each_string() {
	# |substr| 
	# puts substr
# } 

# str33.each_char() {
	# |substr| 
	# puts substr
# } 

# str33.each_byte() {
	# |substr| 
	# puts substr
# } 


arrStr = str33.split(';');

arrStr.each do |i|
	puts i
end

has = {"name"=>"liuchaoheliang","sex"=>"man","age"=>25}
has.each do |key,value|
	print key ," is " ,value ,"\n"
end

if 0 and true
	puts 'ok'
elsif
	puts 'no'
end

if !(0 && true)
	puts 'ok'
elsif
	puts 'no'
end

$i = 0
$num = 0
begin
   puts("在循环语句中 i = #$i" )
   $i +=1
end while $i < $num

$i = 0
while $i < 3 do
	 puts("在ary中 i = #{ary.at($i)}" )
	  $i +=1
end

names = Array.new(4){|e| 
						puts "#{e}" 
						e = e * 2
					}

puts "#{names}"

names.delete_if{ 
	|item| item == 2 
}
puts "#{names}"

str3 = "hello word"
putc str3
putc str3
putc str3


begin
	puts "这里异常测试"
	raise "A test Exception" 
rescue Exception => e
	puts e.message
ensure
	puts "最终执行"
	
end


END {
	puts "application is end "
}





