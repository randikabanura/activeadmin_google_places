module Formtastic
  module Inputs
    class GooglePlacesInput < Formtastic::Inputs::TextInput
      def to_html
        input_wrapping do
          label_html <<
              template.content_tag(:div, input_html_options.merge(class: 'google-places')) do
                builder.hidden_field(input_name, input_html_options.merge(class: 'google-places-hidden-field')) <<
                    template.content_tag(:input, input_html_options.merge(class: 'google-places-field', type: 'text')) do
                      template.content_tag(:input, input_html_options.merge(class: 'google-places-label-field', type: 'text', disabled: true, style: 'margin: auto;margin-top: 15px;', value: (object.send(method)))) do
                      end
                    end
              end
        end
      end
    end
  end
end
