# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_cart do
    line_item nil
    buyer_id 1
  end
end
