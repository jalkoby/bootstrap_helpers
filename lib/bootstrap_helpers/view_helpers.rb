require 'bootstrap_helpers/flash_message_proccessor'
module BootstrapHelpers

  module ViewHelpers

    include FlashMessageProccessor

    def bootstrap_form_tag(path,legend='',params={})
      form_tag path, params do
        concat(content_tag(:fieldset) do
          concat content_tag(:legend, legend)
          yield
        end)
      end
    end

    def bootstrap_form_for(form_object, legend='', params={})
      form_for form_object, params do |f|
        concat(content_tag(:fieldset) do
          concat content_tag(:legend, legend)
          yield(f)
        end)
      end
    end

    def bootstrap_form_input(title, params={})
      params[:class]="clearfix #{params[:class]}"
      content_tag :div, params do
        concat content_tag(:label, title) 
        concat content_tag(:div, :class=>'input') { yield }
      end
    end

    def bootstrap_prepended_input(title, symbol, params={})
      bootstrap_form_input(title, params) do
        concat (content_tag(:div, :class=>'input-prepend') do
          concat concat_tag(:span, symbol, :class=>'add-on')
          yield
        end)
      end
    end

    def bootstrap_form_actions(params={})
      params[:class]="actions #{params[:class]}"
      content_tag :div, params do
        yield
      end
    end

    def bootstrap_flash_messages(params={})
      params[:class]="bootstrap_flash_messages #{params[:class]}"
      content_tag :div, params do
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