json.extract! item_carrinho, :id, :item_id, :carrinho_id, :qtd_adicionada, :qtd_reservada, :created_at, :updated_at
json.url item_carrinho_url(item_carrinho, format: :json)
