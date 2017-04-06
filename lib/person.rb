class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness, @hygiene = 8, 8
  end

  def happiness=(n)
    @happiness = n
    @happiness = 0 if n < 0
    @happiness = 10 if n > 10
  end

  def hygiene=(n)
    @hygiene = n
    @hygiene = 0 if n < 0
    @hygiene = 10 if n > 10
  end

  def happy?() @happiness > 7 end

  def clean?() @hygiene > 7 end

  def get_paid(n)
    @bank_account += n
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(name,topic)
    case topic
      when "politics"
        self.happiness -= 2
        name.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        name.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end

end
