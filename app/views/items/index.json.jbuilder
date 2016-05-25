json.array!(@items) do |item|
  json.extract! item, :id, :show_id, :compra_id
  json.url item_url(item, format: :json)
end
