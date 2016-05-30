require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, pedido: { direccion: @pedido.direccion, email: @pedido.email, nombre: @pedido.nombre, tipo_pago: @pedido.tipo_pago }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, id: @pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido
    assert_response :success
  end

  test "should update pedido" do
    patch :update, id: @pedido, pedido: { direccion: @pedido.direccion, email: @pedido.email, nombre: @pedido.nombre, tipo_pago: @pedido.tipo_pago }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, id: @pedido
    end

    assert_redirected_to pedidos_path
  end
  
  test "requiere item en compra" do
    get :new
    assert_redirected_to tienda_path
    assert_equal  flash[:notice], "Carro vacío"  
  end
  
  test "nuevo pedido" do
    compra = Compra.create
    session[:compra_id] = compra.id
    Item.create(compra: compra, show: shows(:one))
    get :new
    assert_response :success
  end
  
end
