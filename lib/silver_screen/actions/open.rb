class Open
  attr_accessor :target_page

  def perform_as(actor)
    actor.ability_to(BrowseTheWeb).driver.goto(target_page)
  end

  def the(page)
    @target_page = page
    self
  end

  def self.browser_on(page=nil)
    self.new(page)

  end

  private
  def initialize(page)
    @target_page = page
  end

end