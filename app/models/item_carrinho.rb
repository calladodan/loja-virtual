class ItemCarrinho < ApplicationRecord
  belongs_to :item
  belongs_to :carrinho
end
