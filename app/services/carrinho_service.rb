class CarrinhoService
  include ActiveModel::Model

  attr_accessor :carrinho, :usuario

  def initialize usuario_id
    @usuario = Usuario.find(usuario)
    @carrinho = Carrinho.new(usuario: usuario)
  end

  def adiciona_item item:, qtd:
    carrinho.itens_carrinho.build(item: item, qtd_adicionada: qtd)
  end

  def salva_carrinho
    carrinho.save
  end

  def fecha_carrinho
    ActiveRecord::Base.transaction do
      carrinho.itens_carrinho.each do |item_carrinho|
        item_carrinho.item.update_attributes(quantidade: item_carrinho.item.quantidade - item_carrinho.qtd_adicionada)
        carrinho.errors.add(:item, item.errors) if item.errors.any?
      end
      carrinho.status = :finalizado
      carrinho.save
      raise ActiveRecord::Rollback unless carrinho.valid?
    end
    chama_gerenciador_compra
    carrinho.valid?
  end

private
  def chama_gerenciador_compra
  end

end