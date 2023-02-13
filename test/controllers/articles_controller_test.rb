require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index--skiip-routes" do
    get articles_index--skiip-routes_url
    assert_response :success
  end
end
