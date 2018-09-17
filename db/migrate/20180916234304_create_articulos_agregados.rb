class CreateArticulosAgregados < ActiveRecord::Migration[5.2]
  def change
    create_table :articulos_agregados do |t|
      t.integer :cantidad, default: 1
      t.references :producto, foreign_key: true
      t.belongs_to :carrito, foreign_key: true
      t.references :pedido, foreign_key: true

      t.timestamps
    end
  end
end
