require 'test_helper'

class TiendaControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get tienda_inicio_url
    assert_response :success
  end

end
