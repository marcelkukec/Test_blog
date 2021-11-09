class Post < ApplicationRecord
  belongs_to :user
  acts_as_commontable dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
end
