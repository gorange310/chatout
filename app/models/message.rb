class Message < ApplicationRecord
  belongs_to :user
  validates :text, presence: true  
  scope :custom_display, -> { order(:created_at).last(30) }
end
 