require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    login_as(@user)

    get dashboard_url
    assert_response :success
  end

  test "should get redirect when logged in" do
    get dashboard_url
    assert_response :redirect
  end
end
