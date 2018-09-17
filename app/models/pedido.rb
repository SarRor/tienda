class Pedido < ApplicationRecord
  enum tipo_de_pago: {
    "Cheque" => 0,
    "Tarjeta de credito" => 1,
    "Purchase pedido" => 2
  }
  has_many :articulos_agregados, dependent: :destroy
  # ...
  validates :nombre, :direccion, :email, :telefono, presence: true
  validates :tipo_de_pago, inclusion: tipo_de_pagos.keys
  def add_articulos_agregados_from_carrito(carrito)
    carrito.articulos_agregados.each do |item|
      item.carrito_id = nil
      articulos_agregados << item
    end
  end
end
