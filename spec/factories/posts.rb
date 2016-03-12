FactoryGirl.define do
  factory :post do
    sequence(:title)  { |n| "Ruby book #{n}" }
    content          'This is a great short content'
  end
end
