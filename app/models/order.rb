class Order < ApplicationRecord
    belongs_to:cumstomers
    belongs_to:users
    has_many:menuitems
end
