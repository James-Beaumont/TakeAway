class Item
    def initialize(listNum, item, size, price, description)
        @listNum = listNum
        @item = item
        @size = size
        @price = price
        @description = description
    end

    def listNumber
        return @listNum
    end

    def display
        str = "#{@listNum.to_s}) #{@item} #{@size}: £#{@price}
        #{@description}
        
        "
        return str
    end

    def displayAddedItem
        return "#{@listNum.to_s}) #{@item} #{@size}: £#{@price}"
    end

    def price
        return @price.to_f
    end
end