class AddPedidoToItem < ActiveRecord::Migration
  def change
    add_column :items, :pedido_id, :integer
  end
end
