require "test_helper"

class SchoolYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_year = school_years(:one)
  end

  test "should get index" do
    get school_years_url, as: :json
    assert_response :success
  end

  test "should create school_year" do
    assert_difference('SchoolYear.count') do
      post school_years_url, params: { school_year: { semester: @school_year.semester, status: @school_year.status, year: @school_year.year } }, as: :json
    end

    assert_response 201
  end

  test "should show school_year" do
    get school_year_url(@school_year), as: :json
    assert_response :success
  end

  test "should update school_year" do
    patch school_year_url(@school_year), params: { school_year: { semester: @school_year.semester, status: @school_year.status, year: @school_year.year } }, as: :json
    assert_response 200
  end

  test "should destroy school_year" do
    assert_difference('SchoolYear.count', -1) do
      delete school_year_url(@school_year), as: :json
    end

    assert_response 204
  end
end
