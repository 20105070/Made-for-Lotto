require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get makelines" do
    get pages_makelines_url
    assert_response :success
  end

  test "should get faqs" do
    get pages_faqs_url
    assert_response :success
  end

  test "should get loadlines" do
    get pages_loadlines_url
    assert_response :success
  end
end
