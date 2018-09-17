class TiendaController < ApplicationController
  include CarritoActual
  before_action :set_carrito
  def inicio
    @productos = Producto.order(:nombre)
  end

end
