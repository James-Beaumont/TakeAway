require "./menu.rb"

menu = Menu.new

puts menu.displayMenu
puts "Type number of item to add your order, type O to look at current order, type C to complete order"

input = gets.chomp


if input  == "1" || input == "2" || input == "3" || input == "4" || input == "5" || input == "6" || input == "7" || input == "8" || input == "9" || input == "10"
    puts input
    menu.add(input)
    return restart
elsif input == "o" || "O"
    puts "#{menu.displayBasket}"
end
