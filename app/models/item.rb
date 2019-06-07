class Item < ApplicationRecord
  belongs_to :produto

  validates :quantidade, presence: true, numericality: { greater_than_or_equal_to: 0 }


  delegate :imagem, to: :produto

end
