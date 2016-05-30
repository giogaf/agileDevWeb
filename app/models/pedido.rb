class Pedido < ActiveRecord::Base
	TIPO_PAGO = %w{Cheque Efectivo}
	has_many :items, dependent: :destroy
	validates :nombre, :direccion, :email, presence: true
	validates :tipo_pago, inclusion: TIPO_PAGO
	
	def tomar_compra(compra_actual)
		compra_actual.items.each do |item|
			item.compra_id = nil
			items << item
		end
	end
end
