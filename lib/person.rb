# your code goes here
require 'pry'
class Person 
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness
  
  def initialize(name, bank_account = 25, hygiene = 8, happiness = 8)
    @name = name
    @bank_account = bank_account
    @hygiene = hygiene
    @happiness = happiness
  end 
  
  def hygiene=(hygiene)
    if hygiene > 10  
      @hygiene = 10 
    elsif hygiene <= 0 
      @hygiene =0 
    else 
      @hygiene = hygiene
    end 
  end 
    
  def happiness=(happiness)
    if happiness > 10  
      @happiness = 10 
    elsif happiness <= 0 
      @happiness =0 
    else 
      @happiness = happiness
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
  
  def get_paid(salary_amount) 
    @bank_account = @bank_account + salary_amount
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
  
  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3 
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end 
  
  def start_conversation(friend, topic)
    case topic 
    when politics
      
    end 
  end 
end 