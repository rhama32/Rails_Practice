class List < ApplicationRecord
  has_one_attached :image
  
  # validates :title, presece: true
  # validates :body, presence: true
  # validates :image, presence: true
end
