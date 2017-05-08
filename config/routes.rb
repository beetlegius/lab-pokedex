Rails.application.routes.draw do

  namespace :api do
    defaults format: :json do
      resources :pokemons
      resources :pokemon_types
    end
  end

  root to: 'pokemons#dashboard'
end
