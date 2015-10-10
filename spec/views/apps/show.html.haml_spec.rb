require 'rails_helper'

RSpec.describe 'apps/show', type: :view do
  before(:each) do
    @app = assign(:app, App.create!(name: 'Name',
                                    url: 'Url',
                                    secret_hash: 'Secret Hash'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Secret Hash/)
  end
end
