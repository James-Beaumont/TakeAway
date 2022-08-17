class Current_Bakset
    def initialize
        @basket = []
    end

    def add(item)
        return @basket << item
    end

    def display_basket
        return @basket.map{|n| n.displayAddedItem}.join(", ")
    end

    def totalprice
        total_price = @basket.map{|n| n.price}
        return "Total: £#{'%.2f' % total_price.sum}"
    end

    def receipt
        return "#{display_basket}
        #{totalprice}"
    end

    def confirmation(input)
        if input.include?("Y") || input.include?("y")
            return "Order confirmed, we will send you a text confirming time"
        elsif input.include?("N") || input.include?("n")
            return "Order cancelled"
        else
            return "Sorry, I didn't get that, would you like to confirm order,  Y or N?"
        end
    end

    def removeItem(number)
            @basket.each do |n|
                if n.listNumber == number
                    @basket.delete(n)
                    return display_basket
                end
            end
        return "That item isnt on the order"
    end
end