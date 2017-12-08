class Menuitem < ApplicationRecord
    has_many:orders
    has_many:cumstomers, :through => :orders
    
    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
