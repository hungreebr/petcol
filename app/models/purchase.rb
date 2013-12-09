class Purchase < ActiveRecord::Base
  attr_accessible :item, :price, :qtd, :status, :total
end
