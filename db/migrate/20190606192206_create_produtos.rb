class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.string :referencia
      t.string :marca

      t.timestamps
    end
  end
end
