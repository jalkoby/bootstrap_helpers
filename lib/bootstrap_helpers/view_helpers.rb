module BootstrapHelpers

  module ViewHelpers

    def clearfix_div(title)
      content_tag :div, :class=>'clearfix' do
        content_tag(:label, title) + content_tag(:div, :class=>'input') { yield }
      end
    end

  end

end