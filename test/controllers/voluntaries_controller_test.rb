require 'test_helper'

class VoluntariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voluntary = voluntaries(:one)
  end

  test "should get index" do
    get voluntaries_url, as: :json
    assert_response :success
  end

  test "should create voluntary" do
    assert_difference('Voluntary.count') do
      post voluntaries_url, params: { voluntary: { cpf: @voluntary.cpf, email: @voluntary.email, genero: @voluntary.genero, name: @voluntary.name, rg: @voluntary.rg } }, as: :json
    end

    assert_response 201
  end

  test "should show voluntary" do
    get voluntary_url(@voluntary), as: :json
    assert_response :success
  end

  test "should update voluntary" do
    patch voluntary_url(@voluntary), params: { voluntary: { cpf: @voluntary.cpf, email: @voluntary.email, genero: @voluntary.genero, name: @voluntary.name, rg: @voluntary.rg } }, as: :json
    assert_response 200
  end

  test "should destroy voluntary" do
    assert_difference('Voluntary.count', -1) do
      delete voluntary_url(@voluntary), as: :json
    end

    assert_response 204
  end
end
