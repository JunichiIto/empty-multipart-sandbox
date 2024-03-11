require 'application_system_test_case'

class HelloTest < ApplicationSystemTestCase
  test '#create' do
    visit '/hello/new'
    assert_text 'Hello#new'
    assert_no_text 'Hi!'
    click_button 'Say Hi'
    assert_text 'Hi!'
  end
end
