require_relative './test_helper'

class Sample1AppTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def self.backshop_participant_name
    @backshop_participant_name ||= 'john doe'
  end
  
  def app
    Sample1App.new(self.class.backshop_participant_name)
  end

  def test_should_return_web_page_with_name_and_current_date
    current_time = DateTime.now
    Timecop.freeze(current_time) do
      get "/"
      assert_equal last_response.body, "<html><body><p>#{self.class.backshop_participant_name}</p><br><p>#{current_time}</p></body></html>"
    end
  end

end