require "pry"

class Person

  attr_reader :name, :bank_account
  attr_accessor :happiness, :hygiene

     def initialize(name, bank_account: 25, happiness: 8, hygiene: 8) # remember to add $ before calling
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
     end

     def name
        @name
     end

     def happiness=(new_happiness)
      @happiness = new_happiness
      happiness_check
     end

     def hygiene=(new_hygiene)
      @hygiene = new_hygiene
      hygiene_check
     end

     def bank_account=(bank_account)
      #  "$#{@bank_account}" This would give the dollar value
      @bank_account
     end

     def happiness_check
       if @happiness > 10 
         @happiness = 10
       elsif @happiness < 0
         @happiness = 0
       end
       @happiness
     end
     # binding.pry

     def hygiene_check
        if @hygiene > 10 
           @hygiene = 10
         elsif @hygiene < 0
           @hygiene = 0
         end
         @hygiene
     end

     def clean?
       @hygiene > 7 ? true : false
     end

     def happy?
       @happiness > 7 ? true : false
     end

     def get_paid(earnings)
       @bank_account += earnings
       "all about the benjamins"
     end

     def take_bath
      #  @hygiene += 4
       self.hygiene += 4
      #  hygiene_check
       "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
      self.happiness += 2 
      #  happiness_check
      self.happiness
      self.hygiene -= 3
      #  hygiene_check
      self.hygiene
       "♪ another one bites the dust ♫"
     end

     def call_friend(other_person)
       self.happiness += 3
       happiness_check
       other_person.happiness += 3
       happiness_check
       "Hi #{other_person.name}! It's #{@name}. How are you?"
     end

     def start_conversation(other_person, topic)
       if topic == "politics"
         self.happiness -= 2 
         # happiness_check
         other_person.happiness -= 2
         other_person.happiness_check
         "blah blah partisan blah lobbyist"
      elsif topic == "weather"
         self.happiness += 1 
         # happiness_check
         other_person.happiness += 1
         other_person.happiness_check
           "blah blah sun blah rain"
         else
           "blah blah blah blah blah"
       end
     end
     
end