require 'silver_screen/actions/handlers/enter_handlers'

module SilverScreen
  class Enter

    def initialize(the_text)
      @the_text = the_text
      @enter_handlers = [EnterWaiterElementHandler.new, EnterIdentifierHandler.new]
    end

    def self.the_value(text)
      self.new(text)
    end

    def into(element_to_add_text)
      handler = @enter_handlers.find { |handler| handler.handle?(element_to_add_text) }
      handler.element_to_add_text = element_to_add_text
      handler.the_text = @the_text
      handler
    end

  end
end
