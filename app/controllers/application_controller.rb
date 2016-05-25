class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  def compra_actual
    Compra.find(session[:compra_id])  
  rescue ActiveRecord::RecordNotFound
    compra= Compra.create
    session[:compra_id]=compra.id
    compra
  end
end
