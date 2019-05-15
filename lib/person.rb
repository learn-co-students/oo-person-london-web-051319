# your code goes here
class Person
  attr_reader :name

  attr_accessor(:bank_account, :happiness, :hygiene)

  def initialize(name)
    @name = name
    self.bank_account = 25
    self.hygiene = 8
    self.happiness = 8
  end
  #


  # def happiness=(score)
  #   if score (1..10)
  #     self.happiness = score
  # else
  #   self.happiness = score > 10 ? 10 : 0
  # end
  # end
  #
  #   def hygiene= (score)
  #     if score > 10
  #       self.hygiene = 10
  #     elsif score < 0
  #       self.hygiene = 0
  #     else
  #       self.hygiene = score
  #     end
  #     end
end
