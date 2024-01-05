require "test_helper"

class AgencesControllerTest < ActionDispatch::IntegrationTest
  test "should get neudorf" do
    get agences_neudorf_url
    assert_response :success
  end

  test "should get krutenau" do
    get agences_krutenau_url
    assert_response :success
  end

  test "should get orangerie" do
    get agences_orangerie_url
    assert_response :success
  end
end
