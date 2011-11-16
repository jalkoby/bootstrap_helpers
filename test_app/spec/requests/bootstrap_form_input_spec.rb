require 'spec_helper'

describe SamplesController do

  it 'visit root page' do
    visit root_path
    page.should have_selector("form.sample_form")
    page.should have_selector(".sample_form legend", :text=>'Sample form')
    page.should have_selector('.sample_form .clearfix')
    page.should have_selector('.sample_form .clearfix label', :text=>'Sample input')
  end

  it 'should proper generate bootstrap form input' do
    visit bootstrap_form_input_path
    page.should have_selector("div.clearfix")
  end

end