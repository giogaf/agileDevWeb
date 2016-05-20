class TiendaController < ApplicationController
    
    def index
     @shows = Show.all

    end
end
