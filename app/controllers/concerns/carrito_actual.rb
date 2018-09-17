module CarritoActual

  private

    def set_carrito
      @carrito = Carrito.find(session[:carrito_id])
    rescue ActiveRecord::RecordNotFound
      @carrito = Carrito.create
      session[:carrito_id] = @carrito.id
    end
end
