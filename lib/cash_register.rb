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
       @total*=@discount
      puts "After the discount, the total comes to #{@total}"
    
  end

  def items
  end

  def void_last_transaction
  end

end
