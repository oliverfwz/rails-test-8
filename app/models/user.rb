class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, as: :commentable

  validates :name,   presence: true

  has_attached_file :avatar,
    styles: { thumb: '150x150>' },
    default_url: "users/missing.png"
  validates_attachment :avatar,
    content_type: {content_type: /\Aimage\/.*\Z/},
    size: { in: 0..5.megabytes, message: 'Photo size too large. Please limit to 5 mbs.' }
end
