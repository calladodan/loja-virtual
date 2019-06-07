json.extract! item, :id, :preco_custo, :quantidade, :produto_id, :preco_venda, :created_at, :updated_at
json.url item_url(item, format: :json)
