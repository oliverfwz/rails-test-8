class Post < ActiveRecord::Base
  has_many :comments, as: :commentable

  validates :title,   presence: true
  validates :content, presence: true
end