# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    title "Coffee"
    description "It wakes you up"
    quantity 1000
  end
end
