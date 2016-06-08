class Referral

  TEXT_FIELD = {id: 'Dog'}

end

class LoginPage

  USERNAME = {id: 'username'}
  PASSWORD = {id: 'password'}
  LOGIN = {id: 'Login'}
  # REFERRALS = Referral
  REFERRALS = {class: 'referral_thing'}




  def page_url
    'test.salesforce.com'
  end

end

class HomePage


end

class SearchPage


end

class AgreementPage


end

class Reservation
  BOOKING = {}
end

class Request
  ROOT = {class: 'request'}
end

class Leg
  ROOT = {class: 'leg'}
  DESTINATION = {class: 'destination_airport'}
end

Reservation.new(Request.new(Leg.new))

Leg.new().on_a(Request.new())

do_thing_on(second(Leg.new().on(third(Request.new()))))

actor.attempts_to(Enter.the_value(destination_airport).into_the(Leg.destination).for(Request.with(rq_num: '')))
Request.number(2)

PageDescription