class Soup 
    attr_accessor :name 
    attr_writer :heat 
    @@total_bowls = 0 
    
    def initialize(name)
        @name = name
        @heat = 10
        @@total_bowls += 1 
    end 

    def heat 
        if @heat > 7 
            puts "#{@name} is hot"
        elsif @heat > 3 
            puts "ew #{@name} is lukewarm"
        else 
            puts "please microwave #{@name}"
        end 
    end 

    def blow
        @heat -= 1 
    end  


    def total_bowls 
        @@total_bowls
    end 
end 

gazpacho = Soup.new("gazpacho")
chowder = Soup.new("chowder")

gazpacho.heat = 2
gazpacho.heat 
