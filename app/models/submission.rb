class Submission < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :patient
end
