require 'test_helper'

class OthersControllerTest < ActionController::TestCase
  test "should get delete_user" do
    get :delete_user
    assert_response :success
  end

end
