class CreateItensCarrinho < ActiveRecord::Migration[6.0]
  def change
    create_table :itens_carrinho do |t|
      t.references :item, null: false, foreign_key: true
      t.references :carrinho, null: false, foreign_key: true
      t.integer :qtd_adicionada
      t.integer :qtd_reservada

      t.timestamps
    end
  end
end
