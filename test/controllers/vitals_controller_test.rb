require "test_helper"

class VitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vital = vitals(:one)
  end

  test "should get index" do
    get vitals_url, as: :json
    assert_response :success
  end

  test "should create vital" do
    assert_difference("Vital.count") do
      post vitals_url, params: { vital: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show vital" do
    get vital_url(@vital), as: :json
    assert_response :success
  end

  test "should update vital" do
    patch vital_url(@vital), params: { vital: {  } }, as: :json
    assert_response :success
  end

  test "should destroy vital" do
    assert_difference("Vital.count", -1) do
      delete vital_url(@vital), as: :json
    end

    assert_response :no_content
  end
end
