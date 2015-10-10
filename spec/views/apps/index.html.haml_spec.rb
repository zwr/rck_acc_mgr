require 'rails_helper'

RSpec.describe 'apps/index', type: :view do
  before(:each) do
    assign(:apps, [
      App.create!(name: 'Name',
                  url: 'Url',
                  secret_hash: 'Secret Hash'),
      App.create!(name: 'Name',
                  url: 'Url',
                  secret_hash: 'Secret Hash')
    ])
  end

  it 'renders a list of apps' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Url'.to_s, count: 2
    assert_select 'tr>td', text: 'Secret Hash'.to_s, count: 2
  end
end
