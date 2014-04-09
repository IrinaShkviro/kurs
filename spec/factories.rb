FactoryGirl.define do
  factory :user do
    name     "Michael"
    surname  "Hartl"
    group    "111"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
