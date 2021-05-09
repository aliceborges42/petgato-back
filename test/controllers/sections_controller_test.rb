require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @section = sections(:one)
  end

  test "should get index" do
    get sections_url, as: :json
    assert_response :success
  end

  test "should create section" do
    assert_difference('Section.count') do
      post sections_url, params: { section: { max_capacity: @section.max_capacity, number_section: @section.number_section, quantity: @section.quantity } }, as: :json
    end

    assert_response 201
  end

  test "should show section" do
    get section_url(@section), as: :json
    assert_response :success
  end

  test "should update section" do
    patch section_url(@section), params: { section: { max_capacity: @section.max_capacity, number_section: @section.number_section, quantity: @section.quantity } }, as: :json
    assert_response 200
  end

  test "should destroy section" do
    assert_difference('Section.count', -1) do
      delete section_url(@section), as: :json
    end

    assert_response 204
  end
end
