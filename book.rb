class Book 
    #allows read/write capabilities 
    attr_accessor :page, :serial 

    def initialize(page, serial)
        @page = page 
        @serial = serial 
    end 
end 

science = Book.new(200, 'SC12')
computer = Book.new(250, 'CO34')

p science 
p computer 

