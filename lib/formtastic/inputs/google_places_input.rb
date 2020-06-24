module Formtastic
  module Inputs
    class GooglePlacesInput < Formtastic::Inputs::TextInput
      def to_html
        input_wrapping do
          label_html <<
              template.content_tag(:div, input_html_options.merge(class: 'google-places')) do
                builder.hidden_field(input_name) <<
                    template.content_tag(:div, class: 'google-places-content') do
                      object.send(method).try :html_safe
                    end
              end
        end
      end
    end
  end
end
