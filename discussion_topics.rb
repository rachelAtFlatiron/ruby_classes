#Self: https://learning.flatironschool.com/courses/5215/discussion_topics/14396?module_item_id=469865

# Question 1

# What is self in this line: @@bots << self ?
# What is self in this line: self.quotes.sample?
# What kind of method is self.bots and what is self?
# Will this work: archer.bots? Why / why not?
class FunnyBots
  attr_accessor :name, :quotes

  @@bots = []

  def initialize(name, quotes)
    @name = name
    @quotes = quotes
    @@bots << self
  end

  def random_quote
    self.quotes.sample
  end

  def self.bots
    @@bots
  end
end

quotes = [
  'Q: How did the programmer die in the shower? A: He read the shampoo bottle instructions: Lather. Rinse. Repeat. ',
  "A UI is like a joke. If you have to explain it, it's not good.",
  'Q: How many programmers does it take to change a light bulb? A: None – It’s a hardware problem',
]
archer = FunnyBots.new('Archer', quotes)



# Question 2

# For what reasons will the following method calls fail?

# mongoose.tire_size = 5
# mongoose.gears
# Bicycle.bikes
# Bicycle.styles
# Restructure the class to fix the issues.
class Bicycle
  attr_reader :tire

  def initialize(tire, gears, style)
    @tire = tire
    @gears = gears
    @style = style
  end

  def tire_size
    self.tire
  end

  def self.gears
    @gears
  end
end

mongoose = Bicycle.new(4, 10, 'BMX')
