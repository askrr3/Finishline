require 'test_helper'

class ShowAllControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
