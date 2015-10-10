require 'rails_helper'

RSpec.describe User, type: :model do
  it 'can be created if proper email is passed' do
    User.delete_all
    User.create email: 'rocky@example.com', password: 'fdlsih39846'
    expect User.count == 1
  end
  it 'cannot be created if non email is used passed' do
    User.delete_all
    User.create email: 'rocky', password: 'fdlsih39846'
    expect User.count == 0
  end
end
