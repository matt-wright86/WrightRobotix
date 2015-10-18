require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  test "should get confirmation" do
    get :confirmation
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
