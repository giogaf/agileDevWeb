class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.string :tipo_pago
      t.string :email
      t.text :direccion

      t.timestamps null: false
    end
  end
end
