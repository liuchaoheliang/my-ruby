#!/usr/bin/ruby -w

#ָ���ַ���
$KCODE = 'u'

class User
	#�����
	@@DEF_NUM = 8888
	@name=""
	@age=0
	@sex=""
	
	def initialize (name,age ,sex)
		@name = name
		@age = age
		@sex = sex	
	end
	
	def toString()
		puts "hello #@name age is #@age"
	end
	
	#�෽��
	def self.printCount()
      puts "Box DEF_NUM is : #@@DEF_NUM"
    end
	
	#��д�����ת�ı�����
	def to_s
      "(w:#@name,h:#@age)"  # ������ַ�����ʽ
	end
   
	def User.defaut()
		puts "number is #{@@DEF_NUM}"
	end
	
	attr_accessor :age
	#attr_writer :variable_name
	#attr_reader :variable_name
end

u = User.new("liuchao",26,"man")
#u.createUser("liuchao",26,"man")
u.setAge=88

u.toString();

puts User::defaut
puts User::printCount

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST
