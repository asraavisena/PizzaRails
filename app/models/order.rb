class Order < ApplicationRecord
    belongs_to:cumstomers
    has_many:menuitems
end
