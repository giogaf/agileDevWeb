class TiendaController < ApplicationController
    
    def index
     #@shows = Show.all
     @shows = Show.paginate page: params[:page], per_page: 3
     @compra = compra_actual
    end
end
