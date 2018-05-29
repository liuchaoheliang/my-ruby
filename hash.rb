#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

#指定字符集
#$KCODE = 'u'


puts "hello 刘超 !!! "

BEGIN {
	puts "application is start"
}

h = Hash.new()
h = {"1" => "January", "2" => "February","3"=>"April","4"=>"Octorber","5"=>"Desenber"}

keys = h.keys
puts "#{keys}"

keys.each { |v| puts "#{h[v]}" }

h.each{|key,value| puts "key is #{key}, value is #{value}"}
#选择值中包含a字符的项以及key为5的项，返回
h1 = h.select{ |key, value| flag = (value.index("a") || key == "5") }

puts "#{h1}"
 
time = Time.now
puts "当前时间是:"+time.inspect
puts time.strftime("%Y-%m-%d %H:%M:%S")

$, =", "   # Array 值分隔符
a = (1..5).to_a
puts "#{a}"
b = 0..9
puts b.include?(5)
puts "最小值为：#{b.min}"

b.each {|v| puts "当前循环值：#{v}"}

puts "please input a number "
input = gets
puts "输入的值为：#{input}"

END {
	puts "application is end "
}





