require "Item.rb"
require "current_basket.rb"
require "send_sms.rb"


class Menu
    def initialize
        @menuDatabase = []
        @menuDatabase << margherita_pizza = Item.new(1, "Margherita Pizza", "14 inch", "10.50", "the pizza is hot yes")
        @menuDatabase << meat_feast = Item.new(2, "Meat Feast Pizza", "14 inch", "12.50", "the pizza is spicy yes")
        @menuDatabase << bbq = Item.new(3, "BBQ Chicken Pizza", "14 inch", "13.50", "the pizza is BBQ yes")
        @menuDatabase << farm = Item.new(4, "Farm House Pizza", "14 inch", "13.50", "the pizza is farmy yes")
        @menuDatabase << hawaiian = Item.new(5, "Hawaiian Pizza", "14 inch", "11.50", "the pizza is shit, why would you have fucking pineapple on a pizza yes")
        @menuDatabase << pepperoni = Item.new(6, "Pepperoni Pizza", "14 inch", "11.50", "the pizza is sausagey yes")
        @menuDatabase << tuna = Item.new(7, "Tuna & Sweetcorn Pizza", "14 inch", "10.50", "the pizza is fishy yes")
        @menuDatabase << calzone = Item.new(8, "Calzone", "Large", "13.50", "the pizza is folded yes")
        @menuDatabase << beefSingle_Burger = Item.new(9, "Beef Burger", "Single", "6.50", "the burger is beefy yes")
        @menuDatabase << beefDouble_Burger = Item.new(10, "Beef Burger", "Double", "8.50", "the burger is big beefy yes")
        @basket = Current_Bakset.new
        @time = Time.new
        @text = Send_Text.new
    end

    def add(food)
        foodNum = food.to_i - 1
        item = @menuDatabase[foodNum]
        puts "#{item.displayAddedItem} added to basket"
        return @basket.add(item)
    end

    def combine(inv)
        return @menuDatabase.concat(inv)
    end

    def displayMenu
        return @menuDatabase.map{|n| n.display}.join
    end

    def displayArray
        return @menuDatabase
    end

    def displayBasket
        return @basket.display_basket
    end

    def displayBasketPrice
        return @basket.totalprice
    end

    def displayReceipt
        return @basket.receipt
    end

    def confirm(input)
        return @basket.confirmation(input)
    end

    def eta
        eta = @time + 1 * 60 * 45
        p eta.strftime('%d/%m/%Y %H:%M')
        return eta.strftime('%d/%m/%Y %H:%M')
    end

    def sendTheMessage
        str = @basket.display_basket
        total = @basket.totalprice
        return @text.send_message(str, total)
    end

    def removeItem(itemNum)
        return @basket.removeItem(itemNum)
    end
end