class Carrinho < ApplicationRecord
  enum status: [:aberto, :finalizado]

  belongs_to :usuario
  has_many :itens_carrinho
  before_save :seta_status, unless: self.status?

  private

  def seta_status
    self.status = :aberto
  end

end
