class BrowseTheWeb

  attr_reader :actor, :driver

  def self.with(webdriver_browser)
    self.new(webdriver_browser)
  end

  def self.as(actor)
    actor.ability_to(self).as_actor(actor)
  end

  def as_actor(actor)
    @actor = actor
    self
  end

  protected
  def initialize(webdriver_browser)
    @driver = webdriver_browser
  end

end