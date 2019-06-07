Rails.application.routes.draw do
  resources :itens_carrinho
  resources :carrinhos
  resources :itens
  resources :items
  resources :produtos
  devise_for :usuarios, controllers: { registrations:  'usuarios/registros'  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
