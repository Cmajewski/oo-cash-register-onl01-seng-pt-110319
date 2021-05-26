require "pry"

class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(employee_discount=nil)
    @total=0
    @discount=employee_discount
    @items=[]
  end

  def add_item(title, price,quantity=1)
    self.total+=quantity*price
  end

  def apply_discount
     if @discount
       self.total*=((100.0 - discount)/100).to_f
      "After the discount, the total comes to $#{@total}"
    else
      "There is no discount to apply."
    end
  end

  def items
  end

  def void_last_transaction
  end

end
