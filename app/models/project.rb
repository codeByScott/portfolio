class Project < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :abstract, presence: true
  validates :content, presence: true
end
