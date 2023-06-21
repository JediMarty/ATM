
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

def Deposit(person1)

    puts "Please enter how much you want to add!"
    ds = gets.chomp().to_i
    person1.money+=ds
    
end

def Balance_Inquiry(person1)
    puts ("Your balance is #{person1.money} leva")
end

def caseWithdrawal

    puts "\t\tPlease choose how much you want to Withdrawal!"
    puts "1: 20 lv"
    puts "2: 40 lv"
    puts "3: 60 lv"
    puts "4: 80 lv"
    puts "5: 100 lv"
    puts "6: 200 lv"
    puts "7: Custom"
    
    case cho

    when "1"

    when "2"

    when "3"

    when "4"

    when "5"

    when "6"

    when "7"

    end


puts "\t\tPlease choose service"
puts "1: Withdrawal"
puts "2: Deposit"
puts "3: Balance Inquiry"
choice = gets.chomp()

case choice

when "1"
    
 
when "2"
    Deposit(person1)

when "3"
    Balance_Inquiry(person1)

end



