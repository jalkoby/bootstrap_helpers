TestApp::Application.routes.draw do
  root :to=>'Samples#index'
  controller :samples do
    get '/bootstrap_form_input'=>:bootstrap_form_input, :as=>:bootstrap_form_input
  end
end
