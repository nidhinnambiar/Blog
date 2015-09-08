class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes
  validates :title, presence: true, length: { minimum: 5 }
end
