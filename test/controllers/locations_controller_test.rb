require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get appartements" do
    get locations_appartements_url
    assert_response :success
  end

  test "should get maisons" do
    get locations_maisons_url
    assert_response :success
  end
end
