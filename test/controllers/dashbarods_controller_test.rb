require 'test_helper'

class DashbarodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashbarods_index_url
    assert_response :success
  end

end
