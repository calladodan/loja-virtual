class AddNomeToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :nome, :string
  end
end
