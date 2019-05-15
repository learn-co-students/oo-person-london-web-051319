
require "pry"
class Person
  attr_reader(:name)
  attr_accessor(:bank_account)

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.cleaner += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happier += 3
    friend.happier += 3
    return "Hi #{friend}! it's #{self.name}. How are you?"
  end

  def start_conversation(topic)

  end
end
