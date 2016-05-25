class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :show_id
      t.integer :compra_id

      t.timestamps null: false
    end
  end
end
