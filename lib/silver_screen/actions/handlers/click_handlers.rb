module SilverScreen

  class ClickWaiterElementHandler
    attr_accessor :element_to_click

    def handle?(watir_element)
      watir_element.is_a? Watir::Element
    end

    def perform_as(actor)
      actor
    end

  end

  class ClickIdentifierHandler
    attr_accessor :element_to_click

    def handle?(identifier)
      identifier.is_a?(Hash)
    end

    def perform_as(actor)
      actor.ability_to(BrowseTheWeb).driver.element(element_to_click).click
    end

  end

end