require 'test_helper'

class WorkSpaceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get work_space_index_url
    assert_response :success
  end

end
