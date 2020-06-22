class Song < ApplicationRecord
  validates :name, length: {minimum: 1}, presence: true
  validates :genre, presence: true
  validates :explicit, presence: true
  belongs_to :album
  belongs_to :genre
end