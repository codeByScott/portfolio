class Contact < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :name, :email, :message
  EMAIL_REGEX = /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  validates :name, presence: true
  validates :email, presence: true, format: EMAIL_REGEX
  validates :message, presence: true
end