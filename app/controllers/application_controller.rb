class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :autorizacion
  
  protected
  def autorizacion
    unless Usuario.find_by_id(session[:usuario_id])
    redirect_to login_url, notice: 'Por favor ingrese sus datos'
  end
  end
  
  private
  def compra_actual
    Compra.find(session[:compra_id])  
  rescue ActiveRecord::RecordNotFound
    compra= Compra.create
    session[:compra_id]=compra.id
    compra
  end
end
