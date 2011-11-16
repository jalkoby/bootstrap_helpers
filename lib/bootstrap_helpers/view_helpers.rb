module BootstrapHelpers

  module ViewHelpers

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

  end

end