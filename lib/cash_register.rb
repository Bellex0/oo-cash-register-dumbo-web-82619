class CashRegister
  attr_accessor :total, :discount, :items, :price
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
      @price = price.to_f
      @total += (quantity * @price.to_f)
      counter = 0
      while counter < quantity
      @items << title
      counter += 1
    end
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
    new_total = (@total-= @price)
  end
    
  
    
    
    
end
