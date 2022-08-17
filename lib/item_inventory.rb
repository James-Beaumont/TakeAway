require "./menu.rb"
require "./item.rb"

class Item_inventory

    def initialize
        @menu_items = []
        @menu_items << margherita_pizza = Item.new(1, "Margherita Pizza", "14 inch", "10.50", "the pizza is hot yes")
        @menu_items << meat_feast = Item.new(2, "Meat Feast pizza", "14 inch", "12.50", "the pizza is spicy yes")
        @menu_items << bbq = Item.new(3, "BBQ Chicken Pizza", "14 inch", "13.50", "the pizza is BBQ yes")
        @menu_items << farm = Item.new(4, "Farm House Pizza", "14 inch", "13.50", "the pizza is farmy yes")
        @menu_items << hawaiian = Item.new(5, "Hawaiian Pizza", "14 inch", "11.50", "the pizza is shit, why would you have fucking pineapple on a pizza yes")
        @menu_items << pepperoni = Item.new(6, "Pepperoni Pizza", "14 inch", "11.50", "the pizza is sausagey yes")
        @menu_items << tuna = Item.new(7, "Tuna & Sweetcorn Pizza", "14 inch", "10.50", "the pizza is fishy yes")
        @menu_items << calzone = Item.new(8, "Calzone", "Large", "13.50", "the pizza is folded yes")
        @menu_items << beefSingle_Burger = Item.new(9, "Beef Burger", "Single", "6.50", "the burger is beefy yes")
        @menu_items << beefDouble_Burger = Item.new(10, "Beef Burger", "Double", "8.50", "the burger is big beefy yes")
        @menu_items << chicken_Burger = Item.new(11, "Chicken Burger", "Single", "6.50", "the burger is a chicken yes")
        @menu_items << cowboy_Burger = Item.new(12, "Cowboy Burger", "Douleb", "9.50", "2 patties with onion rings and BBQ sauce")
        @menu = Menu.new
        @menu.combine(@menu_items)
    end

    def compile_menu
    return @menu.displayMenu
    end

    def menulength
        return @menu.displayArray.length
    end

    def display_item(itemNum)
        return @menu.displayArray[itemNum - 1].displayAddedItem
    end

end