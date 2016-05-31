class AdminController < ApplicationController
  def index
    @pedidos_total = Pedido.count
  end
end
