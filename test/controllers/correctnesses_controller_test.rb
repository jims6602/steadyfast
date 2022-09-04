require 'test_helper'

class CorrectnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @correctness = correctnesses(:one)
  end

  test "should get index" do
    get correctnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_correctness_url
    assert_response :success
  end

  test "should create correctness" do
    assert_difference('Correctness.count') do
      post correctnesses_url, params: { correctness: { dictionary_id: @correctness.dictionary_id, rightCount: @correctness.rightCount, totalTryCount: @correctness.totalTryCount, user_id: @correctness.user_id } }
    end

    assert_redirected_to correctness_url(Correctness.last)
  end

  test "should show correctness" do
    get correctness_url(@correctness)
    assert_response :success
  end

  test "should get edit" do
    get edit_correctness_url(@correctness)
    assert_response :success
  end

  test "should update correctness" do
    patch correctness_url(@correctness), params: { correctness: { dictionary_id: @correctness.dictionary_id, rightCount: @correctness.rightCount, totalTryCount: @correctness.totalTryCount, user_id: @correctness.user_id } }
    assert_redirected_to correctness_url(@correctness)
  end

  test "should destroy correctness" do
    assert_difference('Correctness.count', -1) do
      delete correctness_url(@correctness)
    end

    assert_redirected_to correctnesses_url
  end
end
