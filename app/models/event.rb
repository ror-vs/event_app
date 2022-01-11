class Event < ApplicationRecord
  belongs_to :speaker
  has_one_attached :logo
  has_many_attached :images
  has_many_attached :files
end
