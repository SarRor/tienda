require "application_system_test_case"

class CarritosTest < ApplicationSystemTestCase
  setup do
    @carrito = carritos(:one)
  end

  test "visiting the index" do
    visit carritos_url
    assert_selector "h1", text: "Carritos"
  end

  test "creating a Carrito" do
    visit carritos_url
    click_on "New Carrito"

    click_on "Create Carrito"

    assert_text "Carrito was successfully created"
    click_on "Back"
  end

  test "updating a Carrito" do
    visit carritos_url
    click_on "Edit", match: :first

    click_on "Update Carrito"

    assert_text "Carrito was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrito" do
    visit carritos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrito was successfully destroyed"
  end
end
