require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get buy" do
    get :buy
    assert_response :success
  end

  test "should get remove" do
    get :remove
    assert_response :success
  end

end
