class Item < ActiveRecord::Base
    belongs_to :show
    belongs_to :compra
    
    def subtotal
        show.precio * cantidad
    end
end
