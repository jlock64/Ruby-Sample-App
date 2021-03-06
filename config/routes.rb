Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root :to => 'static_pages#home'
  get '/help' => 'static_pages#help'

  # you can also use the to: keyword
  get    '/about', to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup', to: 'users#new'
  post   '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
