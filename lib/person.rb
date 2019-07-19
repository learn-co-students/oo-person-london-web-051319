# your code goes here

class Person
  attr_reader(:name)
  attr_accessor(:bank_account,:happiness, :hygiene)

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(n)
    @happiness = n
    applyBounds("@happiness")
  end

  def hygiene=(n)
    @hygiene = n
    applyBounds("@hygiene")
  end

  def applyBounds(param)
    n = instance_variable_get(param)
    n = n > 10 ? 10 : n < 0 ? 0 : n
    instance_variable_set(param, n)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    people = [self, person]
    case topic
    when "politics"
      people.each {|person| person.happiness -= 2}
      return "blah blah partisan blah lobbyist"
    when "weather"
      people.each {|person| person.happiness += 1}
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
