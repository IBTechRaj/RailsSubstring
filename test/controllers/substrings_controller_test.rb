require "test_helper"

class SubstringsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get substrings_new_url
    assert_response :success
  end

  test "should get create" do
    get substrings_create_url
    assert_response :success
  end
end
