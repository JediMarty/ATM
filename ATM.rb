#in progress...
class Person_card

    attr_accessor :name, :money, :ds, :value
    
    def initialize(name,money,ds,value)
        @name = name
        @money = money
        @ds = ds
        @value = value
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
            person1.value = 20
            person1.money-=person1.value
    
        when "2"
            person1.value = 40
            person1.money-=person1.value
    
        when "3"
            person1.value = 60
            person1.money-=person1.value
    
        when "4"
            person1.value = 80
            person1.money-=person1.value
    
        when "5"
            person1.value = 100
            person1.money-=person1.value
    
        when "6"
            person1.value= 200
            person1.money-=person1.value
    
        when "7"
            puts "Please enter how much you want to withdraw!"
            person1.value = gets.chomp().to_i
            person1.money-=person1.value
          
        end
        
    end
    
    def Deposit(person1)

        puts "Please enter how much you want to add!"
        person1.ds = gets.chomp().to_i
        person1.money+=person1.ds
        
    end
    
    def Balance_Inquiry(person1)
        puts ("Your balance is #{person1.money} leva")
        
    end

    def note_w(person1)
    
        File.open("c:/Users/Admin/Desktop/gits/ATM/note.txt","w") do |file|
            file.write("Withdrawal: #{person1.value}\n")
            file.write("Balance Inquiry: #{person1.money}")
        end
    
    end

    def note_D(person1)
    
        File.open("c:/Users/Admin/Desktop/gits/ATM/note.txt","w") do |file|
            file.write("Deposit: #{person1.ds}\n")
            file.write("Balance Inquiry: #{person1.money}")
        end
    
    end
  
    def note_BI(person1)
    
        File.open("c:/Users/Admin/Desktop/gits/ATM/note.txt","w") do |file|
            file.write("Balance Inquiry: #{person1.money}")
        end
    
    end

  
    
        def saves_note(person1)
           
            file = File.open("c:/Users/Admin/Desktop/gits/ATM/notes.txt","w+")
            
            file.write("#{person1.money}")
            
            file.close()
    
        end
    

end

person1 = Person_card.new("Andrew",1200,0,0)

card = false

while card==false
    
    puts "\t\tATM"
    puts "\tPlease insert your card!"
    insert = gets.chomp().downcase()
    if insert == "card"
    card = true
    end

end

puts "\t\tPlease choose service"
puts "1: Withdrawal"
puts "2: Deposit"
puts "3: Balance Inquiry"
choice = gets.chomp()

case choice

when "1"
    person1.Withdrawal(person1)
 
when "2"
    person1.Deposit(person1)

when "3"
    person1.Balance_Inquiry(person1)

end

puts "Would you like a note ?"
puts "Y/N"
choice3 = gets.chomp().upcase()

if choice3 == "Y"
    if choice == "1"
        person1.note_w(person1)
        person1.saves_note(person1)

    elsif choice=="2"
        person1.note_D(person1)
        person1.saves_note(person1)
    
    else
        person1.note_BI(person1)
        person1.saves_note(person1)
    
    end

else
    person1.saves_note(person1)
    puts "Have a nice day!"

end


