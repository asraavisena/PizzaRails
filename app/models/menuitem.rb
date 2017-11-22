class Menuitem < ApplicationRecord
    has_many:orders
    has_many:cumstomers, :through => :orders
end
