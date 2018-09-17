class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.string :direccion
      t.string :email
      t.string :telefono
      t.integer :tipo_de_pago

      t.timestamps
    end
  end
end
