require 'test_helper'

class CommonsControllerTest < ActionDispatch::IntegrationTest
  test "should get load_comercios" do
    get commons_load_comercios_url
    assert_response :success
  end

end
