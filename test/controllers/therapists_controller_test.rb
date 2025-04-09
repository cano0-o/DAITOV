require "test_helper"

class TherapistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get therapists_new_url
    assert_response :success
  end

  test "should get create" do
    get therapists_create_url
    assert_response :success
  end
end
