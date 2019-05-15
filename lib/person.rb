require "pry"
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    attr_reader(:name)

    def bank_account
        @bank_account
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness
        @happiness
    end

    def happiness=(happiness)
        if happiness > 10 
            @happiness = 10
        elsif happiness <0
            @happiness = 0
        else
        @happiness = happiness
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene > 10 
            @hygiene = 10
        elsif hygiene <0
            @hygiene = 0
        else
        @hygiene = hygiene
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        return "Hi #{name.name}! It's #{@name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
             name.happiness += 1
            'blah blah sun blah rain'
        else 'blah blah blah blah blah'
        end
    end
end