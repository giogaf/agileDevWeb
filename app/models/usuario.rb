class Usuario < ActiveRecord::Base
	validates :nombre ,presence: true, uniqueness: true
	validates :password,presence: true
	has_secure_password
	after_destroy :garantizar_una_cuenta_administrador
	
	private
	def garantizar_una_cuenta_administrador
		if Usuario.count.zero?
			raise "No se puede borrar la única cuenta Admin"
		end
		
	end
end
