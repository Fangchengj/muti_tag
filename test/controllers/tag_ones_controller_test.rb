require 'test_helper'

class TagOnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_one = tag_ones(:one)
  end

  test "should get index" do
    get tag_ones_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_one_url
    assert_response :success
  end

  test "should create tag_one" do
    assert_difference('TagOne.count') do
      post tag_ones_url, params: { tag_one: { name: @tag_one.name } }
    end

    assert_redirected_to tag_one_url(TagOne.last)
  end

  test "should show tag_one" do
    get tag_one_url(@tag_one)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_one_url(@tag_one)
    assert_response :success
  end

  test "should update tag_one" do
    patch tag_one_url(@tag_one), params: { tag_one: { name: @tag_one.name } }
    assert_redirected_to tag_one_url(@tag_one)
  end

  test "should destroy tag_one" do
    assert_difference('TagOne.count', -1) do
      delete tag_one_url(@tag_one)
    end

    assert_redirected_to tag_ones_url
  end
end
