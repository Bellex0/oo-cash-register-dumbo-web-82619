class CashRegister
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
      @total += (quantity * price)
      counter = 0
      while counter < quantity
      @items << title
      counter += 1
    end
    @last_item = price * quantity
  end
  
  def apply_discount
     if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
     @total -= @last_item
  end
    
  
    
    
    
end
