require 'test_helper'

class AttachFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attach_file = attach_files(:one)
  end

  test "should get index" do
    get attach_files_url
    assert_response :success
  end

  test "should get new" do
    get new_attach_file_url
    assert_response :success
  end

  test "should create attach_file" do
    assert_difference('AttachFile.count') do
      post attach_files_url, params: { attach_file: { attachment_name: @attach_file.attachment_name, attachment_type: @attach_file.attachment_type, maps_to: @attach_file.maps_to, priority: @attach_file.priority, scrapy_config_id: @attach_file.scrapy_config_id } }
    end

    assert_redirected_to attach_file_url(AttachFile.last)
  end

  test "should show attach_file" do
    get attach_file_url(@attach_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_attach_file_url(@attach_file)
    assert_response :success
  end

  test "should update attach_file" do
    patch attach_file_url(@attach_file), params: { attach_file: { attachment_name: @attach_file.attachment_name, attachment_type: @attach_file.attachment_type, maps_to: @attach_file.maps_to, priority: @attach_file.priority, scrapy_config_id: @attach_file.scrapy_config_id } }
    assert_redirected_to attach_file_url(@attach_file)
  end

  test "should destroy attach_file" do
    assert_difference('AttachFile.count', -1) do
      delete attach_file_url(@attach_file)
    end

    assert_redirected_to attach_files_url
  end
end
