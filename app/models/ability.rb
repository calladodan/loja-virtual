# frozen_string_literal: true

class Ability
  include CanCan::Ability
  attr_accessor :usuario

  def initialize(usuario_atual)
    @usuario = usuario_atual || Usuario.new

    if usuario.admin?
      can :manage, :all
    elsif usuario.cliente?
      can :read, Item
      can :manage, Carrinho, usuario_id: usuario.id
    else
      visitante
    end
  end

  def visitante
    can :read, Item
  end

  def cliente
  end

  def admin
    can :manage, :all
  end
end
