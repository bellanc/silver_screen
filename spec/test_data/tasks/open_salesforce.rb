class OpenSalesforce < SilverScreen::Task
  include SilverScreen::Action

  define_task_tenses :opened_salesforce

  LOGIN_PAGE = LoginPage.new


  def perform_as(actor)
    actor.attempts_to(Open.browser_on.the(LOGIN_PAGE.page_url))
  end

end