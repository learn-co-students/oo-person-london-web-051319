require "pry"

class Person
	attr_reader(:name)

	attr_accessor(:bank_account, :happiness, :hygiene)

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(num)
		if num <= 0
			@happiness = 0
		elsif num >= 10
			@happiness = 10
		else @happiness = num			
		end
	end

	def hygiene=(num)
		if num <= 0
			@hygiene = 0
		elsif num >= 10
			@hygiene = 10
		else 

			@hygiene = num			
		end
	end

	def happy?
		@happiness >7 ? true : false
	end

	def clean?
		@hygiene >7 ? true : false
	end

	def get_paid(salary)
		@bank_account = @bank_account + salary
		"all about the benjamins"	
	end

	def take_bath
		@hygiene = @hygiene + 4
		self.hygiene=(@hygiene)
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		@hygiene = @hygiene - 3
		self.hygiene=(@hygiene)
		@happiness = @happiness + 2
		self.happiness=(@happiness)
		"♪ another one bites the dust ♫"
	end

	def call_friend(name)
		@happiness = @happiness + 3
		self.happiness=(@happiness)
		name.happiness = name.happiness + 3
		"Hi #{name.name}! It's #{self.name}. How are you?"
		
	end

	def start_conversation(name,topic)
		if topic == "politics"
			name.happiness = name.happiness - 2
			@happiness = @happiness - 2
			# name.happiness=(name.happiness)
			self.happiness=(@happiness)
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			name.happiness = name.happiness + 1
			@happiness = @happiness + 1
			# name.happiness=(@happiness)
			self.happiness=(@happiness)
			# @happiness=(@happiness)
			"blah blah sun blah rain"
		else 
			"blah blah blah blah blah"
		end
		
	end

	


end

john = Person.new("john")

