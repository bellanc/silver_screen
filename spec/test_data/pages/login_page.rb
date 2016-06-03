class LoginPage
  attr_accessor :username,
                :password,
                :login

    def self.username
      element_by({id: 'username'})
    end
    @password = {id: 'password'}
    @login = {id: 'Login'}
    @referrals =

  def page_url
    'test.salesforce.com'
  end

end

class Referral
  def initialize
    @text_field = {type: :text_field}
  end
end