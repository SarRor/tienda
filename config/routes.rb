Rails.application.routes.draw do

  root 'tienda#inicio', as: 'tienda_inicio'
  resources :pedidos
  resources :articulos_agregados
  resources :carritos
  
  resources :productos do
    get :who_bought, on: :member
  end

  # resources :productos, path_names: { new: 'nuevo', edit: 'editar' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
