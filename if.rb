#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
 
#$KCODE = 'u'

$num = 5
if $num > 0 && $num < 3 
	puts "num is > 0 and < 3"
elsif $num >3 && $num < 5
	puts "num is > 3 and < 5"
else
	puts "num is other"	
end 

$flag = true
puts "flag is true " if $flag

$flag = false
puts "flag is false " if !$flag


unless $flag
	puts "unless is fase"
else	
	puts "unless is true"
end

$age = 56

case $age
	when 0..18
		puts "青年" 
	when 19..28
		puts "少年"
	when 28..50
		puts "中年"
	else
		puts "老年"
end

$i=0
while $i < 5 do 
	puts "it's item is #{$i}"
	$i += 1 
end

begin
	puts "this is two while ,item is #{$i}"
	$i += 1
end while $i < 10


