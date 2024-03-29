require 'bootstrap_helpers/flash_message_proccessor'
require 'bootstrap_helpers/url_processor'
module BootstrapHelpers

  module ViewHelpers

    include FlashMessageProccessor
    include UrlProcessor

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
        content_tag(:div, :class=>'input-prepend') do
          concat content_tag(:span, symbol, :class=>'add-on') 
          concat yield
        end
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
            concat flash_block_template(content, type)
          when String
            concat flash_message_template(content, type)
          end
        end
        flash.clear
      end
    end

    def bootstrap_navigation_item(title, url_value, params={})
      content_tag :li, :class=>navigation_item_class(url_value) do
        link_to title, url_value, params
      end
    end

  end

end