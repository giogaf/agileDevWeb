json.array!(@shows) do |show|
  json.extract! show, :id, :imagen, :titulo, :descripcion, :precio
  json.url show_url(show, format: :json)
end
