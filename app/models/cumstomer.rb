class Cumstomer < ApplicationRecord
    has_many:orders
    has_many:menuitems, :through => :orders 
end
