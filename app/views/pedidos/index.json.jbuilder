json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :nombre, :tipo_pago, :email, :direccion
  json.url pedido_url(pedido, format: :json)
end
