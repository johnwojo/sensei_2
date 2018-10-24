class Link < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :source, presence: true
end
