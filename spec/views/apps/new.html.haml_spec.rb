require 'rails_helper'

RSpec.describe 'apps/new', type: :view do
  before(:each) do
    assign(:app, App.new(name: 'MyString',
                         url: 'MyString',
                         secret_hash: 'MyString'))
  end

  it 'renders new app form' do
    render

    assert_select 'form[action=?][method=?]', apps_path, 'post' do
      assert_select 'input#app_name[name=?]', 'app[name]'

      assert_select 'input#app_url[name=?]', 'app[url]'

      assert_select 'input#app_secret_hash[name=?]', 'app[secret_hash]'
    end
  end
end
