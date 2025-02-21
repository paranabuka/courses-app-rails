require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get redirect when logged in" do
    login_as(@user)

    get home_index_url
    assert_response :redirect
  end
end
