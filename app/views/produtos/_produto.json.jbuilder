json.extract! produto, :id, :nome, :descricao, :referencia, :marca, :created_at, :updated_at
json.url produto_url(produto, format: :json)
