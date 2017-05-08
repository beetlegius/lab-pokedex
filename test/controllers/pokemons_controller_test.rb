require 'test_helper'

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get pokemons_dashboard_url
    assert_response :success
  end

end
