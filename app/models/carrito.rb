class Carrito < ApplicationRecord
  has_many :articulos_agregados, dependent: :destroy

  def add_producto(producto)
    articulo_actual = articulos_agregados.find_by(producto_id: producto.id)
    if articulo_actual
      articulo_actual.cantidad += 1
    else
      articulo_actual = articulos_agregados.build(producto_id: producto.id)
    end
    articulo_actual
  end

  def precio_total
    articulos_agregados.to_a.sum { |articulo| articulo.precio_total }
  end

end
