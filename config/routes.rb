Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'about' ,to: 'welcome#about'
  get 'contact' ,to: 'welcome#contact'
  resources :users
  resources :products
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories ,expect: [:destroy]
end