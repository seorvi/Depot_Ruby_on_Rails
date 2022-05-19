Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'
  get 'sessions/destroy'
  delete 'delete_line_item/:id', to: 'delete_line_item#destroy', as: 'delete_line_item'
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  # get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end
end
