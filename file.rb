#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

#指定字符集
#$KCODE = 'u'


puts "hello 刘超 !!! "

BEGIN {
	puts "application is start"
}

#追加模式
File.open("test.txt","a+"){|file| file.syswrite ("hello word !!!") }

#文件读取
testFile = File.new("test.txt","r")
if testFile
	content = testFile.sysread(20)	
	puts content	
	#testFile.syswrite ("hello word !!!")	
else
	puts "文件不存在"
end

#读取每一行内容
#arr = IO.readlines("test.txt")
#arr.each{|v| puts "#{v}"}

IO.foreach("test.txt"){|block| puts block}

#修改文件名称
File.rename("test.txt","demo,txt")

# 删除文件 test2.txt
#File.delete("text2.txt")

#打开文件前，先检查是否存在
#File.open("file.rb") if File::exists?( "file.rb" )

# 检查目录
#File::directory?( "/usr/local/bin" ) # => true
 
# 检查一个文件
#File::directory?( "file.rb" ) # => false

#返回文件大小
#File.size?( "text.txt" )     # => 1002

END {
	puts "application is end "
}





