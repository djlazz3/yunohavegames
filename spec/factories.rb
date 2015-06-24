FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password "Password1"
    password_confirmation "Password1"
    admin false
  end
end
