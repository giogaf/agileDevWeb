class Show < ActiveRecord::Base
    validates :titulo, :descripcion,presence: true
    validates :titulo,uniqueness:true
    validates :precio,numericality:{greater_than_or_equal_to: 0.01}
    validates :imagen,allow_blank: true, format:{
        with: /\.(gif|jpg|png)\z/,
        message: 'formatos admitidos gif,jpg,png'
    }
    
    has_many :items
    before_destroy :verificar_referencia_en_item
    
    private
    
    def verificar_referencia_en_item
        if items.empty?
            return true
        else
            errors.add(:base,"Serie presente en compras")
            return false
        end
    end

end