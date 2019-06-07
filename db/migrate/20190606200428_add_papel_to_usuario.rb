class AddPapelToUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :papel, :string
  end
end
