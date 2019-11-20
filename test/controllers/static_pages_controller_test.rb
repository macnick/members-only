# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Members Only'
  end

  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', @base_title.to_s
  end

  test 'should get posts' do
    get posts_path
    assert_response :success
    assert_select 'title', @base_title.to_s
  end

  test 'should get signin' do
    get signin_path
    assert_response :success
    assert_select 'title', @base_title.to_s
  end
end
