require 'test_helper'

class PlanRouteControllerTest < ActionController::TestCase
  test "should get ptp" do
    get :ptp
    assert_response :success
  end

  test "should get bstbs" do
    get :bstbs
    assert_response :success
  end

  test "should get saved_searches" do
    get :saved_searches
    assert_response :success
  end

end
