require 'test_helper'

class ArticulosAgregadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulos_agregado = articulos_agregados(:one)
  end

  test "should get index" do
    get articulos_agregados_url
    assert_response :success
  end

  test "should get new" do
    get new_articulos_agregado_url
    assert_response :success
  end

  test "should create articulos_agregado" do
    assert_difference('ArticulosAgregado.count') do
      post articulos_agregados_url, params: { articulos_agregado: { cantidad: @articulos_agregado.cantidad, carrito_id: @articulos_agregado.carrito_id, pedido_id: @articulos_agregado.pedido_id, producto_id: @articulos_agregado.producto_id } }
    end

    assert_redirected_to articulos_agregado_url(ArticulosAgregado.last)
  end

  test "should show articulos_agregado" do
    get articulos_agregado_url(@articulos_agregado)
    assert_response :success
  end

  test "should get edit" do
    get edit_articulos_agregado_url(@articulos_agregado)
    assert_response :success
  end

  test "should update articulos_agregado" do
    patch articulos_agregado_url(@articulos_agregado), params: { articulos_agregado: { cantidad: @articulos_agregado.cantidad, carrito_id: @articulos_agregado.carrito_id, pedido_id: @articulos_agregado.pedido_id, producto_id: @articulos_agregado.producto_id } }
    assert_redirected_to articulos_agregado_url(@articulos_agregado)
  end

  test "should destroy articulos_agregado" do
    assert_difference('ArticulosAgregado.count', -1) do
      delete articulos_agregado_url(@articulos_agregado)
    end

    assert_redirected_to articulos_agregados_url
  end
end
