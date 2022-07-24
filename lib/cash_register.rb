require 'pry'
class CashRegister
    attr_accessor :total ,:discount, :items, :last_transaction
    def initialize(discount=0)
        @total = 0
        @discount=discount
        @items=[]
    end

    def add_item(item,prc,qty=1)
        self.last_transaction = prc *qty
        self.total += self.last_transaction
        qty.times do 
            self.items<<item
        end
    end

    def apply_discount
        if(self.discount !=0)
            @total = @total * (100 - @discount)/100
            "After the discount, the total comes to $#{@total}."
         else
           "There is no discount to apply."
         end
    end
    def void_last_transaction
        self.total -= last_transaction
    end
end
