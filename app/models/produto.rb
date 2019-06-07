class Produto < ApplicationRecord
  mount_uploader :imagem, ImagemUploader

  has_many :itens

  validates_presence_of :descricao, :marca, :nome, :imagem
  validates :descricao, length: { minimum: 30 }

end
