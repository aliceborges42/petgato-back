require 'test_helper'

class FarmacinhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farmacinha = farmacinhas(:one)
  end

  test "should get index" do
    get farmacinhas_url, as: :json
    assert_response :success
  end

  test "should create farmacinha" do
    assert_difference('Farmacinha.count') do
      post farmacinhas_url, params: { farmacinha: { brand: @farmacinha.brand, name: @farmacinha.name, quantity: @farmacinha.quantity, validade: @farmacinha.validade } }, as: :json
    end

    assert_response 201
  end

  test "should show farmacinha" do
    get farmacinha_url(@farmacinha), as: :json
    assert_response :success
  end

  test "should update farmacinha" do
    patch farmacinha_url(@farmacinha), params: { farmacinha: { brand: @farmacinha.brand, name: @farmacinha.name, quantity: @farmacinha.quantity, validade: @farmacinha.validade } }, as: :json
    assert_response 200
  end

  test "should destroy farmacinha" do
    assert_difference('Farmacinha.count', -1) do
      delete farmacinha_url(@farmacinha), as: :json
    end

    assert_response 204
  end
end
