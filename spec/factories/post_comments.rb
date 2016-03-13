FactoryGirl.define do
  factory :post_comment do
    message 'This is a great short content'

    association :user, factory: :user
    association :post, factory: :post
  end
end
