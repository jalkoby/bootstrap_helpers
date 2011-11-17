TestApp::Application.routes.draw do
  root :to=>'Samples#index'
  controller :samples do
    get '/bootstrap_forms_for'=>:bootstrap_forms_for, :as=>:bootstrap_forms_for
    get '/bootstrap_flash_messages'=>:bootstrap_flash_messages, :as=>:bootstrap_flash_messages
  end
end
