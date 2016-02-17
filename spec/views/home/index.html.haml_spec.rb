require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do
  #pending "add some examples to (or delete) #{__FILE__}"

  it 'rspec match my name' do
    render
    expect(rendered).to match /Premnisha Balakumar/
  end

  it 'rspec not match my name' do
    render
    expect(rendered).not_to match '<h1>Premnisha BalakumarB</h1>'
  end

  it 'capybara displays my name' do
    render
    expect(rendered).to have_css('h1', text: 'Premnisha Balakumar')
  end

  it 'capybara displays other names' do
    render
    expect(rendered).not_to have_css('h1', text:'hello')
  end

  it 'has a hyperlink' do
    render
    expect(rendered).to have_link('Premnisha Balakumar')
    expect(rendered).to have_link('Premnisha Balakumar', :href=>'www.google.com/hello')
    expect(rendered).not_to have_link('Premnisha Balakumar', :href=>'www.goog.com/hello')
  end
end
