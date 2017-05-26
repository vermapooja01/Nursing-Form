class Mar < ApplicationRecord
  belongs_to :history
  has_one :patient, through: :history
  has_many :one_time_orders
  has_many :nurse_activities
end
