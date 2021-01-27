require "test_helper"

class GradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grade = grades(:one)
  end

  test "should get index" do
    get grades_url, as: :json
    assert_response :success
  end

  test "should create grade" do
    assert_difference('Grade.count') do
      post grades_url, params: { grade: { classroom_id: @grade.classroom_id, grade: @grade.grade, professor_id: @grade.professor_id, student_id: @grade.student_id, subject_id: @grade.subject_id } }, as: :json
    end

    assert_response 201
  end

  test "should show grade" do
    get grade_url(@grade), as: :json
    assert_response :success
  end

  test "should update grade" do
    patch grade_url(@grade), params: { grade: { classroom_id: @grade.classroom_id, grade: @grade.grade, professor_id: @grade.professor_id, student_id: @grade.student_id, subject_id: @grade.subject_id } }, as: :json
    assert_response 200
  end

  test "should destroy grade" do
    assert_difference('Grade.count', -1) do
      delete grade_url(@grade), as: :json
    end

    assert_response 204
  end
end
