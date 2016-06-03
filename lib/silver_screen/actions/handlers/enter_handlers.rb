module SilverScreen
  module Action
    class EnterWaiterElementHandler
      attr_accessor :element_to_add_text, :the_text

      def handle?(watir_element)
        watir_element.is_a? Watir::Element
      end

      def perform_as(actor)
        element_to_add_text.set the_text
      end

    end

    class EnterIdentifierHandler
      attr_accessor :element_to_add_text, :the_text

      def handle?(identifier)
        identifier.is_a?(Hash)
      end

      def perform_as(actor)
        actor.ability_to(BrowseTheWeb).driver.text_field(element_to_add_text).set(@the_text)
      end

    end
  end
end
