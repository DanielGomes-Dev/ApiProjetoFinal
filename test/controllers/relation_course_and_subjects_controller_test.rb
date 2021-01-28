require "test_helper"

class RelationCourseAndSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relation_course_and_subject = relation_course_and_subjects(:one)
  end

  test "should get index" do
    get relation_course_and_subjects_url, as: :json
    assert_response :success
  end

  test "should create relation_course_and_subject" do
    assert_difference('RelationCourseAndSubject.count') do
      post relation_course_and_subjects_url, params: { relation_course_and_subject: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show relation_course_and_subject" do
    get relation_course_and_subject_url(@relation_course_and_subject), as: :json
    assert_response :success
  end

  test "should update relation_course_and_subject" do
    patch relation_course_and_subject_url(@relation_course_and_subject), params: { relation_course_and_subject: {  } }, as: :json
    assert_response 200
  end

  test "should destroy relation_course_and_subject" do
    assert_difference('RelationCourseAndSubject.count', -1) do
      delete relation_course_and_subject_url(@relation_course_and_subject), as: :json
    end

    assert_response 204
  end
end
