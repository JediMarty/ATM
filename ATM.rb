card = false

while card==false
    
    puts "\t\tATM"
    puts "\tPlease insert your card!"
    insert = gets.chomp().downcase()
    if insert == "card"
    card = true
    end

end

=begin
puts "\t\tPlease choose service"
puts "1: Withdrawal"
puts "2: Deposit"
puts "3: Balance Inquiry"
=end

