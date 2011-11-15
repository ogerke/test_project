class LineItem < ActiveRecord::Base
  belongs_to  :cart
  belongs_to :smart
end

#cart.line_items << LineItem.create(:smart => Smart.find_by_name("Motorola Atrix"))

