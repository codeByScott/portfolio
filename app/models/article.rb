class Article < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :text, presence: true
  validates :title, presence: true, length: { minimum: 5 }
end
