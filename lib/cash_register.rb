require 'pry'
class CashRegister
  attr_accessor :discount, :total

 
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items_total = []
    @item_hash = {}
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
      quantity.times do
      @items_total << item 
      end
      @item_hash[item] = price
  end

  def apply_discount
    if discount == 0
      discount_error_message = "There is no discount to apply."
      discount_error_message
    else
      @total = @total * ((100 - @discount) * 0.01)
      discount_message =  "After the discount, the total comes to $#{@total.round(0)}."
      discount_message
    end
  end

  def items
    @items_total
  end

  def void_last_transaction
    @total = @total - @item_hash[items.pop]
  end








end
