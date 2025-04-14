require "test_helper"

class TutorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutors_new_url
    assert_response :success
  end

  test "should get create" do
    get tutors_create_url
    assert_response :success
  end
end
