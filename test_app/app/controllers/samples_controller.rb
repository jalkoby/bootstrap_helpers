class SamplesController < ApplicationController

  def index;end

  def bootstrap_form_input;end

  def bootstrap_flash_messages
    flash[:notice]='Example of notice'
    flash[:alert]='Example of error'
    flash[:just_another_type]=['Example of warning(default flash message)', 'Another warning info']
  end

end