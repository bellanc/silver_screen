class LoginPage

    USERNAME = {id: 'username'}
    PASSWORD = {id: 'password'}
    LOGIN = {id: 'Login'}
    # @referrals =

  def page_url
    'test.salesforce.com'
  end

end

class Referral
  def initialize
    @text_field = {type: :text_field}
  end
end