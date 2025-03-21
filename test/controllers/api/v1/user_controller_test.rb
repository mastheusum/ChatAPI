require "test_helper"

class Api::V1::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_user_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_user_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_user_delete_url
    assert_response :success
  end
end
