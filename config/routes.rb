Rails.application.routes.draw do
  resources :addresses
  resources :adoption_histories
  resources :medical_records
  resources :vaccines
  resources :sections
  resources :animal_types
  resources :feed_stocks
  resources :people
  resources :voluntaries
  resources :partners
  resources :farmacinhas
  resources :animals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
