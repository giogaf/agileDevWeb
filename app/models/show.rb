class Show < ActiveRecord::Base
    validates :titulo, :descripcion,presence: true
    validates :titulo,uniqueness:true
    validates :precio,numericality:{greater_than_or_equal_to: 0.01}
    validates :imagen,allow_blank: true, format:{
        with: /\.(gif|jpg|png)\z/,
        message: 'formatos admitidos gif,jpg,png'
    }
end
