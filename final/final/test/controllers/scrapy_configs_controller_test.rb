require 'test_helper'

class ScrapyConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scrapy_config = scrapy_configs(:one)
  end

  test "should get index" do
    get scrapy_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_scrapy_config_url
    assert_response :success
  end

  test "should create scrapy_config" do
    assert_difference('ScrapyConfig.count') do
      post scrapy_configs_url, params: { scrapy_config: { approved_mail_subjects: @scrapy_config.approved_mail_subjects, approved_senders: @scrapy_config.approved_senders, client_id: @scrapy_config.client_id, tgm_assigned_mailbox: @scrapy_config.tgm_assigned_mailbox } }
    end

    assert_redirected_to scrapy_config_url(ScrapyConfig.last)
  end

  test "should show scrapy_config" do
    get scrapy_config_url(@scrapy_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_scrapy_config_url(@scrapy_config)
    assert_response :success
  end

  test "should update scrapy_config" do
    patch scrapy_config_url(@scrapy_config), params: { scrapy_config: { approved_mail_subjects: @scrapy_config.approved_mail_subjects, approved_senders: @scrapy_config.approved_senders, client_id: @scrapy_config.client_id, tgm_assigned_mailbox: @scrapy_config.tgm_assigned_mailbox } }
    assert_redirected_to scrapy_config_url(@scrapy_config)
  end

  test "should destroy scrapy_config" do
    assert_difference('ScrapyConfig.count', -1) do
      delete scrapy_config_url(@scrapy_config)
    end

    assert_redirected_to scrapy_configs_url
  end
end
