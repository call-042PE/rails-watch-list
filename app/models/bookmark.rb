class Bookmark < ApplicationRecord
  belongs_to :movie, optional: true
  belongs_to :list, optional: true
  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, length: { minimum: 6 }
end
