require "pry"
# your code goes here
class Person

   attr_reader :name
   attr_accessor :happiness, :hygeine

      def initialize(name, bank: 25, happiness: 8, hygeine: 8) # remember to add $ before calling
         @name = name
         @bank = bank
         @happiness = happiness
         @hygeine = hygeine
      end

      def name
         puts name
      end

      def bank=(earnings)
         @bank += earnings
      end

      def bank
        "$#{@bank}"
      end

      def happiness
         @happiness 
         [[0, @happiness].min, 10].max  # limits the possible range of values
      end
      # binding.pry

      def hygeine
         @hygeiene
         [[0, @hygeiene].min, 10].max 
      end

 end
