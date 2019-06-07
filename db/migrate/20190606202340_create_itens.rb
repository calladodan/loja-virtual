class CreateItens < ActiveRecord::Migration[6.0]
  def change
    create_table :itens do |t|
      t.decimal :preco_custo
      t.integer :quantidade
      t.references :produto, null: false, foreign_key: true
      t.decimal :preco_venda

      t.timestamps
    end
  end
end
