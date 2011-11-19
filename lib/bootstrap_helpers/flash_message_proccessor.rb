module BootstrapHelpers

  module FlashMessageProccessor

    private
    
      def equal_bootstrap_class(flash_type)
        case flash_type.to_s.downcase
        when 'alert'
          'error'
        when 'notice'
          'success'
        when 'info'
          'info'
        else 'warning'
        end
      end

      def flash_message_template(message,type)
        content_tag :div, :class=>"alert-message #{equal_bootstrap_class(type)} fade in", 'data-alert'=>'alert' do
          content_tag(:a, '×', :href=>'#', :class=>'close') + content_tag(:p) {message}
        end
      end

      def flash_block_template(collection, type)
        content_tag :div, :class=>"alert-message #{equal_bootstrap_class(type)} block-message fade in", 
          'data-alert'=>'alert' do
            concat content_tag(:a, '×', :href=>'#', :class=>'close')
            collection.map {|message| content_tag :p, message}
        end
      end

  end

end