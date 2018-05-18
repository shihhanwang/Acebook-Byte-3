class Post < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :wall, class_name: 'User', optional: true

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
