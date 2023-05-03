Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :users, except: [:edit, :new]
  get 'users/', to: 'users#index',    as: 'users'
  post 'users/', to: 'users#create'
  get 'users/new', to: 'user#new', as: 'new_user'
  get 'users/edit', to: 'user#edit', as: 'edit_user'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/', to: 'users#update'
  put 'users/', to: 'users#update'
  delete 'users/', to: 'user#destroy'
end
