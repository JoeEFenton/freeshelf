Rails.application.routes.draw do
    resources :books
    root 'books#index'
    get '/delete/:id' => 'books#destroy', as: :delete
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    get '/signup'=> 'users#new'
    post '/users' => 'user#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
