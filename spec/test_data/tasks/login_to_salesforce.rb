class LogIntoSalesforce
  include SilverScreen
  include SilverScreen::Task

  attr_accessor :who_to_login_as

  define_task_tenses :logged_into_salesforce

  LOGIN_PAGE = LoginPage.new


  def perform_as(actor)
    actor.attempts_to(Enter.the_value(who_to_login_as).into(LoginPage.username))
    actor.attempts_to(Enter.the_value(admin_password).into(LoginPage.password))
    actor.attempts_to(Click.on(LoginPage.login))
    actor.attempts_to(Enter.the_value(friend_to_refer).into(LoginPage.referrals.first))
  end

  def as_an_admin
    self.who_to_login_as = 'salesforce@example.com'
    self
  end

  def admin_password
    'password'
  end

end