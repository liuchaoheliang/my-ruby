#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-

#指定字符集
#$KCODE = 'u'

require "dbi"


begin
	 # 连接到 MySQL 服务器
     dbh = DBI.connect("DBI:Mysql:TESTDB:localhost","root", "123456")
     # 获取服务器版本字符串，并显示
     row = dbh.select_one("SELECT VERSION()")
     puts "Server version: " + row[0]
rescue Exception => e
	puts e.message
ensure
	# 断开与服务器的连接
     dbh.disconnect if dbh
end


END {
	puts "application is end "
}





