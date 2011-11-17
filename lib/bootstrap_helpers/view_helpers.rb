require 'bootstrap_helpers/flash_message_proccessor'
module BootstrapHelpers

  module ViewHelpers

    include FlashMessageProccessor

    def bootstrap_form_tag(path,legend='',params={})
      form_tag path, params do
        concat content_tag :legend, legend
        yield
      end
    end

    def bootstrap_form_input(title)
      content_tag :div, :class=>'clearfix' do
        content_tag(:label, title) + content_tag(:div, :class=>'input') { yield }
      end
    end

    def bootstrap_flash_messages
      content_tag :div, :class=>'flash' do
        flash.each do |type, content|
          case content
          when Array
            content.each {|message| concat flash_message_template(message, type)}
          when String
            concat flash_message_template(content, type)
          end
        end
      end
    end

  end

end