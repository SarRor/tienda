require "application_system_test_case"

class ArticulosAgregadosTest < ApplicationSystemTestCase
  setup do
    @articulos_agregado = articulos_agregados(:one)
  end

  test "visiting the index" do
    visit articulos_agregados_url
    assert_selector "h1", text: "Articulos Agregados"
  end

  test "creating a Articulos agregado" do
    visit articulos_agregados_url
    click_on "New Articulos Agregado"

    fill_in "Cantidad", with: @articulos_agregado.cantidad
    fill_in "Carrito", with: @articulos_agregado.carrito_id
    fill_in "Pedido", with: @articulos_agregado.pedido_id
    fill_in "Producto", with: @articulos_agregado.producto_id
    click_on "Create Articulos agregado"

    assert_text "Articulos agregado was successfully created"
    click_on "Back"
  end

  test "updating a Articulos agregado" do
    visit articulos_agregados_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @articulos_agregado.cantidad
    fill_in "Carrito", with: @articulos_agregado.carrito_id
    fill_in "Pedido", with: @articulos_agregado.pedido_id
    fill_in "Producto", with: @articulos_agregado.producto_id
    click_on "Update Articulos agregado"

    assert_text "Articulos agregado was successfully updated"
    click_on "Back"
  end

  test "destroying a Articulos agregado" do
    visit articulos_agregados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articulos agregado was successfully destroyed"
  end
end
