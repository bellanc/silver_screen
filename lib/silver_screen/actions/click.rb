require 'silver_screen/actions/handlers/click_handlers'

module SilverScreen
  module Action
    class Click
      @click_handlers = [ClickWaiterElementHandler.new, ClickIdentifierHandler.new]

      def self.on(thing_to_click) #String
        handler = @click_handlers.find { |handler| handler.handle?(thing_to_click) }
        handler.element_to_click = thing_to_click
        handler
      end
    end
  end
end
