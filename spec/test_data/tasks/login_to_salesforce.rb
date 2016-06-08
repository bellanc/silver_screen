class LogIntoSalesforce < SilverScreen::Task
  include SilverScreen::Action

  attr_accessor :who_to_login_as

  define_task_tenses :logged_into_salesforce

  LOGIN_PAGE = LoginPage.new


  def perform_as(actor)
    actor.attempts_to(Enter.the_value(who_to_login_as).into(LoginPage::USERNAME))
    actor.attempts_to(Enter.the_value(admin_password).into(LoginPage::PASSWORD))
    actor.attempts_to(Click.on(LoginPage::LOGIN))

    # actor.attempts_to(Enter.the_value(friend_to_refer).into.the(LoginPage.referral).with())


    # actor.attempts_to(Enter.the_value(destination_airport).into.the(Leg.on.the(Request.on.the(Reservation.request.first)).destination).with())
    actor.attempts_to(Enter.the_value(ac_type).into(Request.aircraft_type).on(Reservation.request).with(request_id: 1234))

    Reservation Request Leg
    Reservation.requests[0].legs[2].destination



  end

  def as_an_admin
    self.who_to_login_as = 'bbellanca@netjetsus.com.gcmdemo'
    self
  end

  def admin_password
    'Winter15'
  end

end