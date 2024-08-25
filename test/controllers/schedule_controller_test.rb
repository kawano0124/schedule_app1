require "test_helper"

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get kanri" do
    get schedule_kanri_url
    assert_response :success
  end
end
