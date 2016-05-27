class AddCantidadToItems < ActiveRecord::Migration
  def change
    add_column :items, :cantidad, :integer, default:1
  end
end
