class PostComment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :message, presence: true
end