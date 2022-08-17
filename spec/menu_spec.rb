require "menu.rb"
require "Item.rb"

RSpec.describe "Menu" do
    
    it "displays items" do
        menu = Menu.new
        expect(menu.displayMenu).to eq "1) Margherita Pizza 14 inch: £10.50
        the pizza is hot yes
        
        2) Meat Feast Pizza 14 inch: £12.50
        the pizza is spicy yes
        
        3) BBQ Chicken Pizza 14 inch: £13.50
        the pizza is BBQ yes
        
        4) Farm House Pizza 14 inch: £13.50
        the pizza is farmy yes
        
        5) Hawaiian Pizza 14 inch: £11.50
        the pizza is shit, why would you have fucking pineapple on a pizza yes
        
        6) Pepperoni Pizza 14 inch: £11.50
        the pizza is sausagey yes
        
        7) Tuna & Sweetcorn Pizza 14 inch: £10.50
        the pizza is fishy yes
        
        8) Calzone Large: £13.50
        the pizza is folded yes
        
        9) Beef Burger Single: £6.50
        the burger is beefy yes
        
        10) Beef Burger Double: £8.50
        the burger is big beefy yes
        
        "
    end

    xit "displays item added to the basket" do
        menu = Menu.new
        expect(menu.add(1)).to eq "1) Margherita Pizza 14 inch: £10.50"
    end

    it "displays current basket" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.displayBasket).to eq "1) Margherita Pizza 14 inch: £10.50, 3) BBQ Chicken Pizza 14 inch: £13.50, 6) Pepperoni Pizza 14 inch: £11.50"
    end

    it "shows total price" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.displayBasketPrice).to eq "Total: £35.50"
    end

    it "shows receitp" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.displayReceipt).to eq "1) Margherita Pizza 14 inch: £10.50, 3) BBQ Chicken Pizza 14 inch: £13.50, 6) Pepperoni Pizza 14 inch: £11.50
        Total: £35.50"
    end

    it "confirms order y" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.confirm("y")).to eq "Order confirmed, we will send you a text confirming time"
    end

    it "confirms order Y" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.confirm("Y")).to eq "Order confirmed, we will send you a text confirming time"
    end

    it "confirms order n" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.confirm("n")).to eq "Order cancelled"
    end

    it "confirms order N" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.confirm("N")).to eq "Order cancelled"
    end

    it "confirms order k" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.confirm("k")).to eq "Sorry, I didn't get that, would you like to confirm order,  Y or N?"
    end

    it "confirms time of arrival" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.eta).to eq "#{(Time.now + 1 * 60 * 45).strftime('%d/%m/%Y %H:%M')}"
    end

    it "sends text" do
        menu = Menu.new
        menu.add(3)
        menu.add(6)
        menu.add(9)
        expect(menu.sendTheMessage).to eq "sent"
    end

    it "removes item" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.removeItem(3)).to eq "1) Margherita Pizza 14 inch: £10.50, 6) Pepperoni Pizza 14 inch: £11.50"
    end

    it "removes item 2" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.removeItem(1)).to eq "3) BBQ Chicken Pizza 14 inch: £13.50, 6) Pepperoni Pizza 14 inch: £11.50"
    end

    it "removes item 3" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.removeItem(6)).to eq "1) Margherita Pizza 14 inch: £10.50, 3) BBQ Chicken Pizza 14 inch: £13.50"
    end

    it "removes item not item" do
        menu = Menu.new
        menu.add(1)
        menu.add(3)
        menu.add(6)
        expect(menu.removeItem(5)).to eq "That item isnt on the order"
    end
end