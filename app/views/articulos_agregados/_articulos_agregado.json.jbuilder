json.extract! articulos_agregado, :id, :cantidad, :producto_id, :carrito_id, :pedido_id, :created_at, :updated_at
json.url articulos_agregado_url(articulos_agregado, format: :json)
