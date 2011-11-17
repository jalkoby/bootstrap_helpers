require 'bootstrap_helpers/view_helpers'

module BootstrapHelpers
  class Railtie < Rails::Railtie
    initializer 'bootstrap_helpers.view_helpers' do
      ActionView::Base.include, ViewHelpers
    end
  end
end