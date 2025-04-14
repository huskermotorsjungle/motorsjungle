require "test_helper"

class CarJungleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car_jungle_index_url
    assert_response :success
  end
end
