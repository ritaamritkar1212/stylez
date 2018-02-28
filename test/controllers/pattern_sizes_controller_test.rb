require 'test_helper'

class PatternSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pattern_size = pattern_sizes(:one)
  end

  test "should get index" do
    get pattern_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_pattern_size_url
    assert_response :success
  end

  test "should create pattern_size" do
    assert_difference('PatternSize.count') do
      post pattern_sizes_url, params: { pattern_size: {  } }
    end

    assert_redirected_to pattern_size_url(PatternSize.last)
  end

  test "should show pattern_size" do
    get pattern_size_url(@pattern_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_pattern_size_url(@pattern_size)
    assert_response :success
  end

  test "should update pattern_size" do
    patch pattern_size_url(@pattern_size), params: { pattern_size: {  } }
    assert_redirected_to pattern_size_url(@pattern_size)
  end

  test "should destroy pattern_size" do
    assert_difference('PatternSize.count', -1) do
      delete pattern_size_url(@pattern_size)
    end

    assert_redirected_to pattern_sizes_url
  end
end
