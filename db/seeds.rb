# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Show.delete_all
Show.create(
    imagen:'http://www.giovanygafaro.com/wp-content/uploads/2016/05/silicon.jpg',
    titulo:'Silicon Valley',
    descripcion:
    %{
        Silicon Valley es una serie de televisión estadounidense creada 
        por Mike Judge. Su emisión comenzó el 6 de abril de 2014 
        en la cadena HBO. La primera temporada consta de ocho episodios
    },
    precio:2999
    )
Show.create(
    imagen:'http://www.giovanygafaro.com/wp-content/uploads/2016/05/house.jpg',
    titulo:'House of cards',
    descripcion:
    %{
    House of Cards es una serie dramática estadounidense desarrollada 
    y producida por Beau Willimon. Es una adaptación de la miniserie
    británica del mismo nombre basada en la novela de Michael Dobbs
    y transmitida por la BBC en 1990
    },
    precio:3999
    )    
Show.create(
    imagen:'http://www.giovanygafaro.com/wp-content/uploads/2016/05/game.jpg',
    titulo:'Juego de tronos',
    descripcion:
    %{
    Juego de tronos es una serie de televisión estadounidense de
    fantasía medieval, drama y aventuras creada por David Benioff
    y D. B. Weiss para la cadena HBO
    },
    precio:2999
    )        
Show.create(
    imagen:'http://www.giovanygafaro.com/wp-content/uploads/2016/05/bones.jpg',
    titulo:'Bones',
    descripcion:
    %{
    Bones es una serie de televisión estadounidense que se estrenó
    en el canal Fox el 13 de septiembre de 2005. Está inspirada
    en la vida de la antropóloga forense y escritora de éxito Kathy Reichs
    },
    precio:3999
    )   
Show.create(
    imagen:'http://www.giovanygafaro.com/wp-content/uploads/2016/05/person.jpg',
    titulo:'Person of interest',
    descripcion:
    %{
    Person of Interest es una serie de televisión 
    estadounidense de CBS. Está basada en un guión de J. J.
    Abrams y Jonathan Nolan, y protagonizada por 
    Jim Caviezel y Michael Emerson    
    },
    precio:3999
    )
