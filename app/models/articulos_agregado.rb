class ArticulosAgregado < ApplicationRecord
  belongs_to :producto, optional: true
  belongs_to :carrito
  belongs_to :pedido, optional: true

  def precio_total
    producto.precio * cantidad
  end
end
