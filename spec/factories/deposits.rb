# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deposit do
    amount 1
    to "MyString"
    from "MyString"
    user nil
  end
end
