Rails.application.routes.draw do
    resources :books
    root 'books#index'
    get '/delete/:id' => 'books#destroy', as: :delete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
