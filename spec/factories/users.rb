FactoryGirl.define do
  factory :user do
    email 'tester@test.it'
    password '1234567890'
  end
  factory :admin, class: User do
    email 'admin_tester@test.it'
    password '1234567890'
    admin true
  end
end
