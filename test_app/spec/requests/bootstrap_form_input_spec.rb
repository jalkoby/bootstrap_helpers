require 'spec_helper'

describe SamplesController do

  it 'visit root page' do
    visit root_path
    page.should have_selector("form.sample_form")
    page.should have_selector(".sample_form legend", :text=>'Sample form')
    page.should have_selector('.sample_form .clearfix.custom_class')
    page.should have_selector('.sample_form .clearfix label', :text=>'Sample input')
    page.should have_selector(".sample_form .actions")
    page.should have_selector('.sample_form .actions a', :count=>2)
  end

  it 'should have several kind of flash' do
    visit bootstrap_flash_messages_path
    page.should have_selector("div.customer_bootstrap_class")
    page.should have_selector("div.alert-message", :count=>5)
    page.should have_selector("div.alert-message.error", :text=>'Example of error')
    page.should have_selector("div.alert-message.success", :text=>'Example of notice')
    page.should have_selector("div.alert-message.info", :text=>'Example of info')
    page.should have_selector("div.alert-message.warning", :text=>'Example of warning(default flash message)')
    page.should have_selector("div.alert-message.warning", :text=>'Another warning info')
    find("div.info a").click
    page.should_not have_selector("div.alert-message.info")
  end

  it 'should have form resource' do
    visit bootstrap_forms_for_path
    page.should have_selector("form.sample")
    page.should have_selector("form.sample legend", :text=>'Edit post')
    page.should have_selector("form.sample .clearfix", :count=>3)
    page.should have_selector("form.sample select")
  end

end