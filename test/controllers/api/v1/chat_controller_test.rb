require "test_helper"

class Api::V1::ChatControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get api_v1_chat_send_url
    assert_response :success
  end

  test "should get receive" do
    get api_v1_chat_receive_url
    assert_response :success
  end
end
