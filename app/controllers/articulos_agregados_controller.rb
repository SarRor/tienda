class ArticulosAgregadosController < ApplicationController
  include CarritoActual
  before_action :set_carrito, only: [:create]
  before_action :set_articulos_agregado, only: [:show, :edit, :update, :destroy]

  # GET /articulos_agregados
  # GET /articulos_agregados.json
  def index
    @articulos_agregados = ArticulosAgregado.all
  end

  # GET /articulos_agregados/1
  # GET /articulos_agregados/1.json
  def show
  end

  # GET /articulos_agregados/new
  def new
    @articulos_agregado = ArticulosAgregado.new
  end

  # GET /articulos_agregados/1/edit
  def edit
  end

  # POST /articulos_agregados
  # POST /articulos_agregados.json
  def create
    producto = Producto.find(params[:producto_id])
    @articulos_agregado = @carrito.add_producto(producto)

    respond_to do |format|
      if @articulos_agregado.save
        format.html { redirect_to tienda_inicio_url }
        format.js   { @articulo_actual = @articulos_agregado }
        format.json { render :show, status: :created, location: @articulos_agregado }
      else
        format.html { render :new }
        format.json { render json: @articulos_agregado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulos_agregados/1
  # PATCH/PUT /articulos_agregados/1.json
  def update
    respond_to do |format|
      if @articulos_agregado.update(articulos_agregado_params)
        format.html { redirect_to @articulos_agregado, notice: 'Articulo agregado Se actualizó exitosamente' }
        format.json { render :show, status: :ok, location: @articulos_agregado }
      else
        format.html { render :edit }
        format.json { render json: @articulos_agregado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos_agregados/1
  # DELETE /articulos_agregados/1.json
  def destroy
    @articulos_agregado.destroy
    respond_to do |format|
      format.html { redirect_to articulos_agregados_url, notice: 'Articulo agregado fue eliminado exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulos_agregado
      @articulos_agregado = ArticulosAgregado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articulos_agregado_params
      params.require(:articulos_agregado).permit(:producto_id)
    end
end
