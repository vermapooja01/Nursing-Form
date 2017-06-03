class Mar < ApplicationRecord
  belongs_to :history
  has_one :patient, through: :history
  has_many :one_time_orders, dependent: :destroy
  has_many :nurse_activities, dependent: :destroy
  accepts_nested_attributes_for :nurse_activities
end
