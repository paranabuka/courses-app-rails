require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)

    login_as(@user)
  end

  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get redirect when not logged in" do
    logout!

    get home_index_url
    assert_response :redirect
  end
end
