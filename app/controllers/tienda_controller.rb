class TiendaController < ApplicationController
    
    def index
     @shows = Show.all
     @compra = compra_actual
    end
end
