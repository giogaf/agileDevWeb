class SesionesController < ApplicationController
  skip_before_filter :autorizacion
  def new
  end

  def create
    user = Usuario.find_by_nombre(params[:nombre])
    if user and user.authenticate(params[:password])
      session[:usuario_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, notice: "Datos no válidos"
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to tienda_url, notice: 'Ha salido del sistema'
  end
end
