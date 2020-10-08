require 'test_helper'

class ExperimentsControllerTest < ActionDispatch::IntegrationTest
  test "should get tts" do
    get experiments_tts_url
    assert_response :success
  end

end
