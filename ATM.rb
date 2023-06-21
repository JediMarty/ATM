
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

def Deposit(person1)

    puts "Please enter how much you want to add!"
    ds = gets.chomp().to_i
    person1.money+=ds
    
end

def Balance_Inquiry(person1)
    puts ("Your balance is #{person1.money} leva")
end

def Withdrawal(person1)

    puts "\t\tPlease choose how much you want to Withdrawal!"
    puts "1: 20 lv"
    puts "2: 40 lv"
    puts "3: 60 lv"
    puts "4: 80 lv"
    puts "5: 100 lv"
    puts "6: 200 lv"
    puts "7: Custom"
    
    choice = gets.chomp()

    case choice

    when "1"
        person1.money-=20

    when "2"
        person1.money-=40

    when "3"
        person1.money-=60

    when "4"
        person1.money-=80

    when "5"
        person1.money-=100

    when "6"
        person1.money-=200

    when "7"

    end

end

puts "\t\tPlease choose service"
puts "1: Withdrawal"
puts "2: Deposit"
puts "3: Balance Inquiry"
choice = gets.chomp()

case choice

when "1"
    Withdrawal(person1)
 
when "2"
    Deposit(person1)

when "3"
    Balance_Inquiry(person1)

end
=begin
puts "Would you like a note ?"
puts "Y/N"
choice = gets.chomp().upcase()

if choice == "Y"

else
    puts "Have a nice day!"

end
=end



