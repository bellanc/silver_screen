require 'silver_screen'
require 'faker'
require 'rspec/expectations'

require 'test_data/pages/login_page'
require 'test_data/tasks/open_salesforce'
require 'test_data/tasks/login_to_salesforce'

RSpec.configure do |config|

  config.include SilverScreen::TaskHarness

end
