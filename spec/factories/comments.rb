FactoryGirl.define do
  factory :comment do
    message 'This is a great short content'

    association :user, factory: :user
    association :post, factory: :post
  end
end
