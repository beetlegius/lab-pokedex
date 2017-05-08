module Api
  class PokemonsController < BaseController
    load_and_authorize_resource

    def index
      render json: @pokemons.includes(:types), status: :ok
    end

    def show
      render_pokemon @pokemon
    end

    def create
      @pokemon = Pokemon.create! pokemon_params
      render_pokemon @pokemon, :created
    end

    def update
      @pokemon.update! pokemon_params
      render_pokemon @pokemon
    end

    def destroy
      @pokemon.destroy
      render_pokemon @pokemon
    end

    private

    def pokemon_params
      params.require(:pokemon).permit(:name, :description, :weight, :height, :image, types: [])
    end

    def render_pokemon(pokemon, status: :ok)
      render json: pokemon, status: status, location: [:api, pokemon]
    end

  end
end
