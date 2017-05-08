module Api
  class PokemonTypesController < BaseController
    load_and_authorize_resource instance_name: :type

    def index
      render json: @types, status: :ok
    end

    def show
      render_type @type
    end

    def create
      @type = PokemonType.create! pokemon_type_params
      render_type @type, :created
    end

    def update
      @type.update! pokemon_type_params
      render_type @type
    end

    def destroy
      @type.destroy
      render_type @type
    end

    private

    def pokemon_type_params
      params.require(:pokemon_type).permit(:name)
    end

    def render_type(type, status: :ok)
      render json: type, status: status, location: [:api, type]
    end
    
  end
end
