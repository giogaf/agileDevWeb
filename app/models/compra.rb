class Compra < ActiveRecord::Base
    has_many :items, dependent: :destroy
    def agregar_serie(serie_id)
        item_actual= items.find_by_show_id(serie_id)
        if item_actual
            item_actual.cantidad +=1
        else
            item_actual = items.build(show_id:serie_id)
        end
        item_actual
    end  
    def total
        items.to_a.sum {|item| item.subtotal}
    end    
end
