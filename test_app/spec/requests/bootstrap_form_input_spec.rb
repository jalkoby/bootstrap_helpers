require 'spec_helper'

describe SamplesController do

  it 'visit root page' do
    visit root_path
    page.should have_selector("form.sample_form")
    page.should have_selector(".sample_form legend", :text=>'Sample form')
    page.should have_selector('.sample_form .clearfix')
    page.should have_selector('.sample_form .clearfix label', :text=>'Sample input')
  end

  it 'should have several kind of flash' do
    visit bootstrap_flash_messages_path
    page.should have_selector("div.alert-message", :count=>5)
    page.should have_selector("div.alert-message.error", :text=>'Example of error')
    page.should have_selector("div.alert-message.success", :text=>'Example of notice')
    page.should have_selector("div.alert-message.info", :text=>'Example of info')
    page.should have_selector("div.alert-message.warning", :text=>'Example of warning(default flash message)')
    page.should have_selector("div.alert-message.warning", :text=>'Another warning info')
    find("div.info a").click
    page.should_not have_selector("div.alert-message.info")
  end

end