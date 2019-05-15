require "pry"

class Person
  attr_reader :name
  attr_accessor(:bank_account, :happiness, :hygiene)

  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def happiness=(score)
    if score > 10
      @happiness = 10
    elsif score < 0
      @happiness = 0
    else
      @happiness = score
    end
  end
  
  def hygiene=(score)
    if score > 10
      @hygiene = 10
    elsif score < 0
      @hygiene = 0
    else
      @hygiene = score
    end
  end

end
# binding.pry