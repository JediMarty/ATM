#in works!!!
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

ds = 0
value = 0

def note_w(person1,value)
    
    File.open("c:/Users/Admin/Desktop/gits/ATM/note.txt","w") do |file|
        file.write("Withdrawal: #{value}")
        file.write("Balance_Inquiry: #{person1.money}")
    end

end

def note_D(person1,ds)
    
    File.open("c:/Users/Admin/Desktop/gits/ATM/note.txt","w") do |file|
        file.write("Deposit: #{ds}")
        file.write("Balance_Inquiry: #{person1.money}")
    end

end

def note_BI(person1)
    
    File.open("c:/Users/Admin/Desktop/gits/ATM/note.txt","w") do |file|
        file.write("Balance_Inquiry: #{person1.money}")
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

    puts "\t\tPlease choose how much you want to withdrawal!"
    puts "1: 20 lv"
    puts "2: 40 lv"
    puts "3: 60 lv"
    puts "4: 80 lv"
    puts "5: 100 lv"
    puts "6: 200 lv"
    puts "7: Custom amount"
    
    choice2 = gets.chomp()

    case choice2

    when "1"
        value = 20
        person1.money-=value

    when "2"
        value = 40
        person1.money-=value

    when "3"
        value = 60
        person1.money-=value

    when "4"
        value = 80
        person1.money-=value

    when "5"
        value = 100
        person1.money-=value

    when "6"
        value = 200
        person1.money-=value

    when "7"
        puts "Please enter how much you want to withdraw!"
        value = gets.chomp().to_i
        person1.money-=value
      
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

puts "Would you like a note ?"
puts "Y/N"
choice3 = gets.chomp().upcase()

if choice3 == "Y"
    if choice == "1"
        note_w(person1,value)

    elsif choice=="2"
        note_D(person1,ds)
    
    else
        note_BI(person1)
    
    end

else
    puts "Have a nice day!"

end




