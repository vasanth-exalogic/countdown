Rails.application.routes.draw do
  root "home#index"
  resources :users
  get '/bday/:id' => 'home#bday', as: 'bday'
  get '/countdown/:id' => 'home#countdown', as: 'countdown'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
