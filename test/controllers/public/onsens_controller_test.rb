require "test_helper"

class Public::OnsensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_onsens_index_url
    assert_response :success
  end

  test "should get show" do
    get public_onsens_show_url
    assert_response :success
  end
end
