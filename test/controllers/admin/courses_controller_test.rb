require "test_helper"

class Admin::CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_courses_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_courses_create_url
    assert_response :success
  end
end
