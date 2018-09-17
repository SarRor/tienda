json.extract! pedido, :id, :nombre, :direccion, :email, :telefono, :tipo_de_pago, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
