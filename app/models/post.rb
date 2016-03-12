class Post < ActiveRecord::Base
  has_many :post_comments

  validates :title,   presence: true
  validates :content, presence: true
end