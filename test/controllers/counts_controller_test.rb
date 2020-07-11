require 'test_helper'

class CountsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get counts_update_url
    assert_response :success
  end

end
