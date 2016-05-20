require 'test_helper'

class TiendaControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "retorno tienda index" do
    get :index
    assert :success
    assert_select '.dropdown-menu a',minimum:3
    assert_select 'h3',4
    assert_select '.precio',/COP \$\d\d/
  end
end
