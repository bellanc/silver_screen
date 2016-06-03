require 'silver_screen'
require 'page-object'

describe 'Browsing the web with SilverScreen' do

  before(:all) do
    @his_browser = Watir::Browser.new :chrome
  end

  describe 'opening the browser' do
    it 'searches the web' do

      sales_user = SilverScreen::Actor.new('Alan Guy')
      sales_user.can(BrowseTheWeb.with(@his_browser))
      sales_user.has(opened_salesforce)

      sales_user.has(logged_into_salesforce.as_an_admin)

    end
  end
end


