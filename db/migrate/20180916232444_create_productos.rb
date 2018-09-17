class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.decimal :precio, precision: 8, scale: 2

      t.timestamps
    end
  end
end
