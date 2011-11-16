TestApp::Application.routes.draw do
  controller :samples do
    get '/bootstrap_form_input'=>:bootstrap_form_input, :as=>:bootstrap_form_input
  end
end
