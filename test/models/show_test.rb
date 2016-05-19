require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  
  fixtures :shows
  
  test "atributos Serie no debe ser vacios" do 
    serie= Show.new
    assert serie.invalid?
    assert serie.errors[:titulo].any?
    assert serie.errors[:descripcion].any?
    assert serie.errors[:precio].any?
  end
  
  test "precio valores positivos" do
    serie=Show.new(titulo: 'un titulo',
                  descripcion:'una descripción',
                  imagen: 'imagen.jpg')
    serie.precio=-1
    assert !serie.valid?
    serie.precio=0
    assert serie.invalid?    
    serie.precio=1
    assert serie.valid?    
  end
 def nueva_serie una_url
    Show.new(
      titulo: 'un titulo serie',
      descripcion: 'una descripcion serie',
      precio: 999,
      imagen: una_url
      )
  end
  
  test 'imagen_url' do
    urls_ok=%w{ img.jpg img.jpg img.gif img.png  
                 https://ide.c9.io/img.png}
    urls_bad = %w{noimg.pdf noimg.jpg/dir noimg.gif.rb }
  
    urls_ok.each do |url|
      assert nueva_serie(url).valid?
    end
    urls_bad.each do |url|
      assert nueva_serie(url).invalid?
    end    
  end  
  
    test "titulo único" do
        serie= Show.new(
            titulo: shows(:modernfamily).titulo,
            descripcion: "otra descripción",
            precio:99,
            imagen: "otraimg.gif"
            )
    assert !serie.save
    end
 
end

