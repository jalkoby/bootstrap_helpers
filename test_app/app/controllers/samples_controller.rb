class SamplesController < ApplicationController

  def index;end

  def bootstrap_forms_for
    @post = Post.new
    @years = [10.years.ago.year .. 12.years.since.year]
  end

  def bootstrap_flash_messages
    flash[:notice]='Example of notice'
    flash[:alert]='Example of error'
    flash[:info] = "Example of info"
    flash[:just_another_type]=['Example of warning(default flash message)', 'Another warning info']
  end

end