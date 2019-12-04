require 'test_helper'

class CharactersSpellControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get characters_spell_index_url
    assert_response :success
  end

  test "should get show" do
    get characters_spell_show_url
    assert_response :success
  end

end
