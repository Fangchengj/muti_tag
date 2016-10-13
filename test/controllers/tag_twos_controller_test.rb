require 'test_helper'

class TagTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_two = tag_twos(:one)
  end

  test "should get index" do
    get tag_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_two_url
    assert_response :success
  end

  test "should create tag_two" do
    assert_difference('TagTwo.count') do
      post tag_twos_url, params: { tag_two: { name: @tag_two.name, tag_one_id: @tag_two.tag_one_id } }
    end

    assert_redirected_to tag_two_url(TagTwo.last)
  end

  test "should show tag_two" do
    get tag_two_url(@tag_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_two_url(@tag_two)
    assert_response :success
  end

  test "should update tag_two" do
    patch tag_two_url(@tag_two), params: { tag_two: { name: @tag_two.name, tag_one_id: @tag_two.tag_one_id } }
    assert_redirected_to tag_two_url(@tag_two)
  end

  test "should destroy tag_two" do
    assert_difference('TagTwo.count', -1) do
      delete tag_two_url(@tag_two)
    end

    assert_redirected_to tag_twos_url
  end
end
