require 'rails_helper'

RSpec.describe App, type: :model do
  it 'can be created if name and url are specified' do
    App.delete_all
    App.create name: 'Rocky App', url: 'www.rocky.com'
    expect(App.count).to be(1)
    expect(App.first.secret_hash).to be_instance_of(String)
    expect(App.first.secret_hash.length).to be > 32
  end
end
