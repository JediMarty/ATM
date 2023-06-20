
class Person_card

    attr_accessor :name, :money
    
    def initialize(name,money)
        @name = name
        @money = money
    end

end

person1 = Person_card.new("Andrew",1200)
card = false

while card==false
    
    puts "\t\tATM"
    puts "\tPlease insert your card!"
    insert = gets.chomp().downcase()
    if insert == "card"
    card = true
    end

end

def Withdrawal



end

def Deposit

end

def Balance_Inquiry(person1)
    puts ("Your balance is #{person1.money} leva")
end


puts "\t\tPlease choose service"
puts "1: Withdrawal"
puts "2: Deposit"
puts "3: Balance Inquiry"
choice = gets.chomp()

case choice

when "1"
    
 
when "2"

when "3"
    Balance_Inquiry(person1)
end



