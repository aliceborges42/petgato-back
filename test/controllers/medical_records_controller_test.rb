require 'test_helper'

class MedicalRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_record = medical_records(:one)
  end

  test "should get index" do
    get medical_records_url, as: :json
    assert_response :success
  end

  test "should create medical_record" do
    assert_difference('MedicalRecord.count') do
      post medical_records_url, params: { medical_record: { disease: @medical_record.disease, end_date: @medical_record.end_date, medical_procedure: @medical_record.medical_procedure, remedy: @medical_record.remedy, remedy_description: @medical_record.remedy_description, start_date: @medical_record.start_date, status: @medical_record.status } }, as: :json
    end

    assert_response 201
  end

  test "should show medical_record" do
    get medical_record_url(@medical_record), as: :json
    assert_response :success
  end

  test "should update medical_record" do
    patch medical_record_url(@medical_record), params: { medical_record: { disease: @medical_record.disease, end_date: @medical_record.end_date, medical_procedure: @medical_record.medical_procedure, remedy: @medical_record.remedy, remedy_description: @medical_record.remedy_description, start_date: @medical_record.start_date, status: @medical_record.status } }, as: :json
    assert_response 200
  end

  test "should destroy medical_record" do
    assert_difference('MedicalRecord.count', -1) do
      delete medical_record_url(@medical_record), as: :json
    end

    assert_response 204
  end
end
