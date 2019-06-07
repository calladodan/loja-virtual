class AddStatusToCarrinho < ActiveRecord::Migration[6.0]
  def change
    add_column :carrinhos, :status, :integer
  end
end
