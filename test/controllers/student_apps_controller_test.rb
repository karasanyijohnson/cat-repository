require 'test_helper'

class StudentAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_app = student_apps(:one)
  end

  test "should get index" do
    get student_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_student_app_url
    assert_response :success
  end

  test "should create student_app" do
    assert_difference('StudentApp.count') do
      post student_apps_url, params: { student_app: { category: @student_app.category, firstname: @student_app.firstname, lastname: @student_app.lastname } }
    end

    assert_redirected_to student_app_url(StudentApp.last)
  end

  test "should show student_app" do
    get student_app_url(@student_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_app_url(@student_app)
    assert_response :success
  end

  test "should update student_app" do
    patch student_app_url(@student_app), params: { student_app: { category: @student_app.category, firstname: @student_app.firstname, lastname: @student_app.lastname } }
    assert_redirected_to student_app_url(@student_app)
  end

  test "should destroy student_app" do
    assert_difference('StudentApp.count', -1) do
      delete student_app_url(@student_app)
    end

    assert_redirected_to student_apps_url
  end
end
