class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :imagen
      t.string :titulo
      t.text :descripcion
      t.integer :precio

      t.timestamps null: false
    end
  end
end
